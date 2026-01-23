; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248088 () Bool)

(assert start!248088)

(declare-fun b!2564566 () Bool)

(declare-fun e!1619249 () Bool)

(declare-fun e!1619247 () Bool)

(assert (=> b!2564566 (= e!1619249 e!1619247)))

(declare-fun res!1079366 () Bool)

(assert (=> b!2564566 (=> res!1079366 e!1619247)))

(declare-datatypes ((C!15404 0))(
  ( (C!15405 (val!9354 Int)) )
))
(declare-datatypes ((Regex!7623 0))(
  ( (ElementMatch!7623 (c!412277 C!15404)) (Concat!12319 (regOne!15758 Regex!7623) (regTwo!15758 Regex!7623)) (EmptyExpr!7623) (Star!7623 (reg!7952 Regex!7623)) (EmptyLang!7623) (Union!7623 (regOne!15759 Regex!7623) (regTwo!15759 Regex!7623)) )
))
(declare-fun r!27340 () Regex!7623)

(declare-fun validRegex!3249 (Regex!7623) Bool)

(assert (=> b!2564566 (= res!1079366 (not (validRegex!3249 (regTwo!15758 r!27340))))))

(declare-fun lt!905122 () Regex!7623)

(declare-datatypes ((List!29688 0))(
  ( (Nil!29588) (Cons!29588 (h!35008 C!15404) (t!211387 List!29688)) )
))
(declare-fun tl!4068 () List!29688)

(declare-fun lt!905114 () Regex!7623)

(declare-fun matchR!3568 (Regex!7623 List!29688) Bool)

(assert (=> b!2564566 (= (matchR!3568 lt!905122 tl!4068) (matchR!3568 lt!905114 Nil!29588))))

(declare-fun derivative!318 (Regex!7623 List!29688) Regex!7623)

(assert (=> b!2564566 (= lt!905114 (derivative!318 lt!905122 tl!4068))))

(declare-datatypes ((Unit!43431 0))(
  ( (Unit!43432) )
))
(declare-fun lt!905121 () Unit!43431)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!214 (Regex!7623 List!29688) Unit!43431)

(assert (=> b!2564566 (= lt!905121 (lemmaMatchRIsSameAsWholeDerivativeAndNil!214 lt!905122 tl!4068))))

(declare-fun b!2564567 () Bool)

(declare-fun e!1619250 () Bool)

(declare-fun tp!816481 () Bool)

(declare-fun tp!816482 () Bool)

(assert (=> b!2564567 (= e!1619250 (and tp!816481 tp!816482))))

(declare-fun b!2564568 () Bool)

(declare-fun res!1079369 () Bool)

(declare-fun e!1619252 () Bool)

(assert (=> b!2564568 (=> (not res!1079369) (not e!1619252))))

(get-info :version)

(assert (=> b!2564568 (= res!1079369 (and (not ((_ is EmptyExpr!7623) r!27340)) (not ((_ is EmptyLang!7623) r!27340)) (not ((_ is ElementMatch!7623) r!27340)) (not ((_ is Union!7623) r!27340)) (not ((_ is Star!7623) r!27340))))))

(declare-fun b!2564569 () Bool)

(declare-fun res!1079371 () Bool)

(assert (=> b!2564569 (=> (not res!1079371) (not e!1619252))))

(declare-fun c!14016 () C!15404)

(declare-fun nullable!2540 (Regex!7623) Bool)

(declare-fun derivativeStep!2192 (Regex!7623 C!15404) Regex!7623)

(assert (=> b!2564569 (= res!1079371 (nullable!2540 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))

(declare-fun b!2564570 () Bool)

(declare-fun contains!5307 (List!29688 C!15404) Bool)

(declare-fun firstChars!98 (Regex!7623) List!29688)

(assert (=> b!2564570 (= e!1619247 (contains!5307 (firstChars!98 r!27340) c!14016))))

(assert (=> b!2564570 (contains!5307 (firstChars!98 (regTwo!15758 r!27340)) c!14016)))

(declare-fun lt!905120 () Unit!43431)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!14 (Regex!7623 C!15404 List!29688) Unit!43431)

(assert (=> b!2564570 (= lt!905120 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!14 (regTwo!15758 r!27340) c!14016 tl!4068))))

(declare-fun b!2564571 () Bool)

(declare-fun e!1619251 () Bool)

(declare-fun tp_is_empty!13101 () Bool)

(declare-fun tp!816480 () Bool)

(assert (=> b!2564571 (= e!1619251 (and tp_is_empty!13101 tp!816480))))

(declare-fun b!2564572 () Bool)

(declare-fun tp!816478 () Bool)

(assert (=> b!2564572 (= e!1619250 tp!816478)))

(declare-fun b!2564573 () Bool)

(declare-fun tp!816477 () Bool)

(declare-fun tp!816479 () Bool)

(assert (=> b!2564573 (= e!1619250 (and tp!816477 tp!816479))))

(declare-fun b!2564574 () Bool)

(declare-fun res!1079368 () Bool)

(assert (=> b!2564574 (=> (not res!1079368) (not e!1619252))))

(assert (=> b!2564574 (= res!1079368 (nullable!2540 (regOne!15758 r!27340)))))

(declare-fun res!1079372 () Bool)

(assert (=> start!248088 (=> (not res!1079372) (not e!1619252))))

(assert (=> start!248088 (= res!1079372 (validRegex!3249 r!27340))))

(assert (=> start!248088 e!1619252))

(assert (=> start!248088 e!1619250))

(assert (=> start!248088 tp_is_empty!13101))

(assert (=> start!248088 e!1619251))

(declare-fun b!2564575 () Bool)

(declare-fun e!1619248 () Bool)

(assert (=> b!2564575 (= e!1619248 (matchR!3568 lt!905122 tl!4068))))

(declare-fun b!2564576 () Bool)

(assert (=> b!2564576 (= e!1619252 (not e!1619249))))

(declare-fun res!1079370 () Bool)

(assert (=> b!2564576 (=> res!1079370 e!1619249)))

(declare-fun lt!905117 () Bool)

(assert (=> b!2564576 (= res!1079370 lt!905117)))

(assert (=> b!2564576 e!1619248))

(declare-fun res!1079365 () Bool)

(assert (=> b!2564576 (=> res!1079365 e!1619248)))

(assert (=> b!2564576 (= res!1079365 lt!905117)))

(declare-fun lt!905119 () Regex!7623)

(assert (=> b!2564576 (= lt!905117 (matchR!3568 lt!905119 tl!4068))))

(declare-fun lt!905118 () Unit!43431)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!218 (Regex!7623 Regex!7623 List!29688) Unit!43431)

(assert (=> b!2564576 (= lt!905118 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!218 lt!905119 lt!905122 tl!4068))))

(declare-fun lt!905116 () Regex!7623)

(assert (=> b!2564576 (= (matchR!3568 lt!905116 tl!4068) (matchR!3568 (derivative!318 lt!905116 tl!4068) Nil!29588))))

(declare-fun lt!905115 () Unit!43431)

(assert (=> b!2564576 (= lt!905115 (lemmaMatchRIsSameAsWholeDerivativeAndNil!214 lt!905116 tl!4068))))

(assert (=> b!2564576 (= lt!905116 (Union!7623 lt!905119 lt!905122))))

(assert (=> b!2564576 (= lt!905122 (derivativeStep!2192 (regTwo!15758 r!27340) c!14016))))

(assert (=> b!2564576 (= lt!905119 (Concat!12319 (derivativeStep!2192 (regOne!15758 r!27340) c!14016) (regTwo!15758 r!27340)))))

(declare-fun b!2564577 () Bool)

(declare-fun res!1079367 () Bool)

(assert (=> b!2564577 (=> res!1079367 e!1619247)))

(assert (=> b!2564577 (= res!1079367 (not (nullable!2540 lt!905114)))))

(declare-fun b!2564578 () Bool)

(assert (=> b!2564578 (= e!1619250 tp_is_empty!13101)))

(assert (= (and start!248088 res!1079372) b!2564569))

(assert (= (and b!2564569 res!1079371) b!2564568))

(assert (= (and b!2564568 res!1079369) b!2564574))

(assert (= (and b!2564574 res!1079368) b!2564576))

(assert (= (and b!2564576 (not res!1079365)) b!2564575))

(assert (= (and b!2564576 (not res!1079370)) b!2564566))

(assert (= (and b!2564566 (not res!1079366)) b!2564577))

(assert (= (and b!2564577 (not res!1079367)) b!2564570))

(assert (= (and start!248088 ((_ is ElementMatch!7623) r!27340)) b!2564578))

(assert (= (and start!248088 ((_ is Concat!12319) r!27340)) b!2564573))

(assert (= (and start!248088 ((_ is Star!7623) r!27340)) b!2564572))

(assert (= (and start!248088 ((_ is Union!7623) r!27340)) b!2564567))

(assert (= (and start!248088 ((_ is Cons!29588) tl!4068)) b!2564571))

(declare-fun m!2903297 () Bool)

(assert (=> b!2564574 m!2903297))

(declare-fun m!2903299 () Bool)

(assert (=> b!2564577 m!2903299))

(declare-fun m!2903301 () Bool)

(assert (=> b!2564569 m!2903301))

(assert (=> b!2564569 m!2903301))

(declare-fun m!2903303 () Bool)

(assert (=> b!2564569 m!2903303))

(assert (=> b!2564569 m!2903303))

(declare-fun m!2903305 () Bool)

(assert (=> b!2564569 m!2903305))

(declare-fun m!2903307 () Bool)

(assert (=> b!2564575 m!2903307))

(declare-fun m!2903309 () Bool)

(assert (=> b!2564570 m!2903309))

(declare-fun m!2903311 () Bool)

(assert (=> b!2564570 m!2903311))

(assert (=> b!2564570 m!2903311))

(declare-fun m!2903313 () Bool)

(assert (=> b!2564570 m!2903313))

(declare-fun m!2903315 () Bool)

(assert (=> b!2564570 m!2903315))

(declare-fun m!2903317 () Bool)

(assert (=> b!2564570 m!2903317))

(assert (=> b!2564570 m!2903315))

(declare-fun m!2903319 () Bool)

(assert (=> b!2564566 m!2903319))

(declare-fun m!2903321 () Bool)

(assert (=> b!2564566 m!2903321))

(assert (=> b!2564566 m!2903307))

(declare-fun m!2903323 () Bool)

(assert (=> b!2564566 m!2903323))

(declare-fun m!2903325 () Bool)

(assert (=> b!2564566 m!2903325))

(declare-fun m!2903327 () Bool)

(assert (=> start!248088 m!2903327))

(declare-fun m!2903329 () Bool)

(assert (=> b!2564576 m!2903329))

(declare-fun m!2903331 () Bool)

(assert (=> b!2564576 m!2903331))

(declare-fun m!2903333 () Bool)

(assert (=> b!2564576 m!2903333))

(assert (=> b!2564576 m!2903329))

(declare-fun m!2903335 () Bool)

(assert (=> b!2564576 m!2903335))

(declare-fun m!2903337 () Bool)

(assert (=> b!2564576 m!2903337))

(declare-fun m!2903339 () Bool)

(assert (=> b!2564576 m!2903339))

(declare-fun m!2903341 () Bool)

(assert (=> b!2564576 m!2903341))

(declare-fun m!2903343 () Bool)

(assert (=> b!2564576 m!2903343))

(check-sat (not b!2564573) (not b!2564569) (not b!2564574) (not b!2564570) (not b!2564566) (not b!2564572) (not start!248088) (not b!2564567) tp_is_empty!13101 (not b!2564571) (not b!2564576) (not b!2564577) (not b!2564575))
(check-sat)
(get-model)

(declare-fun d!726215 () Bool)

(declare-fun lt!905128 () Regex!7623)

(assert (=> d!726215 (validRegex!3249 lt!905128)))

(declare-fun e!1619261 () Regex!7623)

(assert (=> d!726215 (= lt!905128 e!1619261)))

(declare-fun c!412280 () Bool)

(assert (=> d!726215 (= c!412280 ((_ is Cons!29588) tl!4068))))

(assert (=> d!726215 (validRegex!3249 lt!905122)))

(assert (=> d!726215 (= (derivative!318 lt!905122 tl!4068) lt!905128)))

(declare-fun b!2564589 () Bool)

(assert (=> b!2564589 (= e!1619261 (derivative!318 (derivativeStep!2192 lt!905122 (h!35008 tl!4068)) (t!211387 tl!4068)))))

(declare-fun b!2564590 () Bool)

(assert (=> b!2564590 (= e!1619261 lt!905122)))

(assert (= (and d!726215 c!412280) b!2564589))

(assert (= (and d!726215 (not c!412280)) b!2564590))

(declare-fun m!2903351 () Bool)

(assert (=> d!726215 m!2903351))

(declare-fun m!2903353 () Bool)

(assert (=> d!726215 m!2903353))

(declare-fun m!2903355 () Bool)

(assert (=> b!2564589 m!2903355))

(assert (=> b!2564589 m!2903355))

(declare-fun m!2903357 () Bool)

(assert (=> b!2564589 m!2903357))

(assert (=> b!2564566 d!726215))

(declare-fun b!2564647 () Bool)

(declare-fun e!1619293 () Bool)

(declare-fun e!1619291 () Bool)

(assert (=> b!2564647 (= e!1619293 e!1619291)))

(declare-fun res!1079414 () Bool)

(assert (=> b!2564647 (=> (not res!1079414) (not e!1619291))))

(declare-fun lt!905136 () Bool)

(assert (=> b!2564647 (= res!1079414 (not lt!905136))))

(declare-fun bm!164769 () Bool)

(declare-fun call!164774 () Bool)

(declare-fun isEmpty!17046 (List!29688) Bool)

(assert (=> bm!164769 (= call!164774 (isEmpty!17046 Nil!29588))))

(declare-fun b!2564649 () Bool)

(declare-fun res!1079413 () Bool)

(declare-fun e!1619290 () Bool)

(assert (=> b!2564649 (=> (not res!1079413) (not e!1619290))))

(declare-fun tail!4105 (List!29688) List!29688)

(assert (=> b!2564649 (= res!1079413 (isEmpty!17046 (tail!4105 Nil!29588)))))

(declare-fun b!2564650 () Bool)

(declare-fun e!1619292 () Bool)

(assert (=> b!2564650 (= e!1619292 (not lt!905136))))

(declare-fun b!2564651 () Bool)

(declare-fun e!1619295 () Bool)

(declare-fun head!5830 (List!29688) C!15404)

(assert (=> b!2564651 (= e!1619295 (matchR!3568 (derivativeStep!2192 lt!905114 (head!5830 Nil!29588)) (tail!4105 Nil!29588)))))

(declare-fun b!2564652 () Bool)

(declare-fun res!1079411 () Bool)

(assert (=> b!2564652 (=> res!1079411 e!1619293)))

(assert (=> b!2564652 (= res!1079411 (not ((_ is ElementMatch!7623) lt!905114)))))

(assert (=> b!2564652 (= e!1619292 e!1619293)))

(declare-fun b!2564653 () Bool)

(assert (=> b!2564653 (= e!1619290 (= (head!5830 Nil!29588) (c!412277 lt!905114)))))

(declare-fun b!2564654 () Bool)

(declare-fun e!1619294 () Bool)

(assert (=> b!2564654 (= e!1619294 (= lt!905136 call!164774))))

(declare-fun b!2564655 () Bool)

(declare-fun e!1619296 () Bool)

(assert (=> b!2564655 (= e!1619296 (not (= (head!5830 Nil!29588) (c!412277 lt!905114))))))

(declare-fun b!2564656 () Bool)

(assert (=> b!2564656 (= e!1619295 (nullable!2540 lt!905114))))

(declare-fun b!2564657 () Bool)

(declare-fun res!1079415 () Bool)

(assert (=> b!2564657 (=> (not res!1079415) (not e!1619290))))

(assert (=> b!2564657 (= res!1079415 (not call!164774))))

(declare-fun b!2564658 () Bool)

(declare-fun res!1079418 () Bool)

(assert (=> b!2564658 (=> res!1079418 e!1619296)))

(assert (=> b!2564658 (= res!1079418 (not (isEmpty!17046 (tail!4105 Nil!29588))))))

(declare-fun d!726219 () Bool)

(assert (=> d!726219 e!1619294))

(declare-fun c!412293 () Bool)

(assert (=> d!726219 (= c!412293 ((_ is EmptyExpr!7623) lt!905114))))

(assert (=> d!726219 (= lt!905136 e!1619295)))

(declare-fun c!412295 () Bool)

(assert (=> d!726219 (= c!412295 (isEmpty!17046 Nil!29588))))

(assert (=> d!726219 (validRegex!3249 lt!905114)))

(assert (=> d!726219 (= (matchR!3568 lt!905114 Nil!29588) lt!905136)))

(declare-fun b!2564648 () Bool)

(assert (=> b!2564648 (= e!1619291 e!1619296)))

(declare-fun res!1079412 () Bool)

(assert (=> b!2564648 (=> res!1079412 e!1619296)))

(assert (=> b!2564648 (= res!1079412 call!164774)))

(declare-fun b!2564659 () Bool)

(declare-fun res!1079416 () Bool)

(assert (=> b!2564659 (=> res!1079416 e!1619293)))

(assert (=> b!2564659 (= res!1079416 e!1619290)))

(declare-fun res!1079417 () Bool)

(assert (=> b!2564659 (=> (not res!1079417) (not e!1619290))))

(assert (=> b!2564659 (= res!1079417 lt!905136)))

(declare-fun b!2564660 () Bool)

(assert (=> b!2564660 (= e!1619294 e!1619292)))

(declare-fun c!412294 () Bool)

(assert (=> b!2564660 (= c!412294 ((_ is EmptyLang!7623) lt!905114))))

(assert (= (and d!726219 c!412295) b!2564656))

(assert (= (and d!726219 (not c!412295)) b!2564651))

(assert (= (and d!726219 c!412293) b!2564654))

(assert (= (and d!726219 (not c!412293)) b!2564660))

(assert (= (and b!2564660 c!412294) b!2564650))

(assert (= (and b!2564660 (not c!412294)) b!2564652))

(assert (= (and b!2564652 (not res!1079411)) b!2564659))

(assert (= (and b!2564659 res!1079417) b!2564657))

(assert (= (and b!2564657 res!1079415) b!2564649))

(assert (= (and b!2564649 res!1079413) b!2564653))

(assert (= (and b!2564659 (not res!1079416)) b!2564647))

(assert (= (and b!2564647 res!1079414) b!2564648))

(assert (= (and b!2564648 (not res!1079412)) b!2564658))

(assert (= (and b!2564658 (not res!1079418)) b!2564655))

(assert (= (or b!2564654 b!2564648 b!2564657) bm!164769))

(declare-fun m!2903363 () Bool)

(assert (=> b!2564651 m!2903363))

(assert (=> b!2564651 m!2903363))

(declare-fun m!2903365 () Bool)

(assert (=> b!2564651 m!2903365))

(declare-fun m!2903367 () Bool)

(assert (=> b!2564651 m!2903367))

(assert (=> b!2564651 m!2903365))

(assert (=> b!2564651 m!2903367))

(declare-fun m!2903369 () Bool)

(assert (=> b!2564651 m!2903369))

(assert (=> b!2564649 m!2903367))

(assert (=> b!2564649 m!2903367))

(declare-fun m!2903371 () Bool)

(assert (=> b!2564649 m!2903371))

(assert (=> b!2564655 m!2903363))

(declare-fun m!2903373 () Bool)

(assert (=> bm!164769 m!2903373))

(assert (=> d!726219 m!2903373))

(declare-fun m!2903375 () Bool)

(assert (=> d!726219 m!2903375))

(assert (=> b!2564656 m!2903299))

(assert (=> b!2564658 m!2903367))

(assert (=> b!2564658 m!2903367))

(assert (=> b!2564658 m!2903371))

(assert (=> b!2564653 m!2903363))

(assert (=> b!2564566 d!726219))

(declare-fun b!2564699 () Bool)

(declare-fun e!1619324 () Bool)

(declare-fun e!1619322 () Bool)

(assert (=> b!2564699 (= e!1619324 e!1619322)))

(declare-fun res!1079440 () Bool)

(assert (=> b!2564699 (=> (not res!1079440) (not e!1619322))))

(declare-fun call!164784 () Bool)

(assert (=> b!2564699 (= res!1079440 call!164784)))

(declare-fun c!412306 () Bool)

(declare-fun bm!164777 () Bool)

(declare-fun call!164782 () Bool)

(declare-fun c!412307 () Bool)

(assert (=> bm!164777 (= call!164782 (validRegex!3249 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun b!2564700 () Bool)

(declare-fun e!1619325 () Bool)

(assert (=> b!2564700 (= e!1619325 call!164782)))

(declare-fun d!726223 () Bool)

(declare-fun res!1079439 () Bool)

(declare-fun e!1619326 () Bool)

(assert (=> d!726223 (=> res!1079439 e!1619326)))

(assert (=> d!726223 (= res!1079439 ((_ is ElementMatch!7623) (regTwo!15758 r!27340)))))

(assert (=> d!726223 (= (validRegex!3249 (regTwo!15758 r!27340)) e!1619326)))

(declare-fun b!2564701 () Bool)

(declare-fun e!1619321 () Bool)

(assert (=> b!2564701 (= e!1619321 call!164784)))

(declare-fun b!2564702 () Bool)

(declare-fun e!1619323 () Bool)

(assert (=> b!2564702 (= e!1619326 e!1619323)))

(assert (=> b!2564702 (= c!412306 ((_ is Star!7623) (regTwo!15758 r!27340)))))

(declare-fun b!2564703 () Bool)

(assert (=> b!2564703 (= e!1619323 e!1619325)))

(declare-fun res!1079438 () Bool)

(assert (=> b!2564703 (= res!1079438 (not (nullable!2540 (reg!7952 (regTwo!15758 r!27340)))))))

(assert (=> b!2564703 (=> (not res!1079438) (not e!1619325))))

(declare-fun b!2564704 () Bool)

(declare-fun e!1619327 () Bool)

(assert (=> b!2564704 (= e!1619323 e!1619327)))

(assert (=> b!2564704 (= c!412307 ((_ is Union!7623) (regTwo!15758 r!27340)))))

(declare-fun bm!164778 () Bool)

(assert (=> bm!164778 (= call!164784 call!164782)))

(declare-fun bm!164779 () Bool)

(declare-fun call!164783 () Bool)

(assert (=> bm!164779 (= call!164783 (validRegex!3249 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2564705 () Bool)

(declare-fun res!1079437 () Bool)

(assert (=> b!2564705 (=> (not res!1079437) (not e!1619321))))

(assert (=> b!2564705 (= res!1079437 call!164783)))

(assert (=> b!2564705 (= e!1619327 e!1619321)))

(declare-fun b!2564706 () Bool)

(assert (=> b!2564706 (= e!1619322 call!164783)))

(declare-fun b!2564707 () Bool)

(declare-fun res!1079441 () Bool)

(assert (=> b!2564707 (=> res!1079441 e!1619324)))

(assert (=> b!2564707 (= res!1079441 (not ((_ is Concat!12319) (regTwo!15758 r!27340))))))

(assert (=> b!2564707 (= e!1619327 e!1619324)))

(assert (= (and d!726223 (not res!1079439)) b!2564702))

(assert (= (and b!2564702 c!412306) b!2564703))

(assert (= (and b!2564702 (not c!412306)) b!2564704))

(assert (= (and b!2564703 res!1079438) b!2564700))

(assert (= (and b!2564704 c!412307) b!2564705))

(assert (= (and b!2564704 (not c!412307)) b!2564707))

(assert (= (and b!2564705 res!1079437) b!2564701))

(assert (= (and b!2564707 (not res!1079441)) b!2564699))

(assert (= (and b!2564699 res!1079440) b!2564706))

(assert (= (or b!2564705 b!2564706) bm!164779))

(assert (= (or b!2564701 b!2564699) bm!164778))

(assert (= (or b!2564700 bm!164778) bm!164777))

(declare-fun m!2903397 () Bool)

(assert (=> bm!164777 m!2903397))

(declare-fun m!2903399 () Bool)

(assert (=> b!2564703 m!2903399))

(declare-fun m!2903401 () Bool)

(assert (=> bm!164779 m!2903401))

(assert (=> b!2564566 d!726223))

(declare-fun b!2564708 () Bool)

(declare-fun e!1619331 () Bool)

(declare-fun e!1619329 () Bool)

(assert (=> b!2564708 (= e!1619331 e!1619329)))

(declare-fun res!1079445 () Bool)

(assert (=> b!2564708 (=> (not res!1079445) (not e!1619329))))

(declare-fun lt!905141 () Bool)

(assert (=> b!2564708 (= res!1079445 (not lt!905141))))

(declare-fun bm!164780 () Bool)

(declare-fun call!164785 () Bool)

(assert (=> bm!164780 (= call!164785 (isEmpty!17046 tl!4068))))

(declare-fun b!2564710 () Bool)

(declare-fun res!1079444 () Bool)

(declare-fun e!1619328 () Bool)

(assert (=> b!2564710 (=> (not res!1079444) (not e!1619328))))

(assert (=> b!2564710 (= res!1079444 (isEmpty!17046 (tail!4105 tl!4068)))))

(declare-fun b!2564711 () Bool)

(declare-fun e!1619330 () Bool)

(assert (=> b!2564711 (= e!1619330 (not lt!905141))))

(declare-fun b!2564712 () Bool)

(declare-fun e!1619333 () Bool)

(assert (=> b!2564712 (= e!1619333 (matchR!3568 (derivativeStep!2192 lt!905122 (head!5830 tl!4068)) (tail!4105 tl!4068)))))

(declare-fun b!2564713 () Bool)

(declare-fun res!1079442 () Bool)

(assert (=> b!2564713 (=> res!1079442 e!1619331)))

(assert (=> b!2564713 (= res!1079442 (not ((_ is ElementMatch!7623) lt!905122)))))

(assert (=> b!2564713 (= e!1619330 e!1619331)))

(declare-fun b!2564714 () Bool)

(assert (=> b!2564714 (= e!1619328 (= (head!5830 tl!4068) (c!412277 lt!905122)))))

(declare-fun b!2564715 () Bool)

(declare-fun e!1619332 () Bool)

(assert (=> b!2564715 (= e!1619332 (= lt!905141 call!164785))))

(declare-fun b!2564716 () Bool)

(declare-fun e!1619334 () Bool)

(assert (=> b!2564716 (= e!1619334 (not (= (head!5830 tl!4068) (c!412277 lt!905122))))))

(declare-fun b!2564717 () Bool)

(assert (=> b!2564717 (= e!1619333 (nullable!2540 lt!905122))))

(declare-fun b!2564718 () Bool)

(declare-fun res!1079446 () Bool)

(assert (=> b!2564718 (=> (not res!1079446) (not e!1619328))))

(assert (=> b!2564718 (= res!1079446 (not call!164785))))

(declare-fun b!2564719 () Bool)

(declare-fun res!1079449 () Bool)

(assert (=> b!2564719 (=> res!1079449 e!1619334)))

(assert (=> b!2564719 (= res!1079449 (not (isEmpty!17046 (tail!4105 tl!4068))))))

(declare-fun d!726229 () Bool)

(assert (=> d!726229 e!1619332))

(declare-fun c!412308 () Bool)

(assert (=> d!726229 (= c!412308 ((_ is EmptyExpr!7623) lt!905122))))

(assert (=> d!726229 (= lt!905141 e!1619333)))

(declare-fun c!412310 () Bool)

(assert (=> d!726229 (= c!412310 (isEmpty!17046 tl!4068))))

(assert (=> d!726229 (validRegex!3249 lt!905122)))

(assert (=> d!726229 (= (matchR!3568 lt!905122 tl!4068) lt!905141)))

(declare-fun b!2564709 () Bool)

(assert (=> b!2564709 (= e!1619329 e!1619334)))

(declare-fun res!1079443 () Bool)

(assert (=> b!2564709 (=> res!1079443 e!1619334)))

(assert (=> b!2564709 (= res!1079443 call!164785)))

(declare-fun b!2564720 () Bool)

(declare-fun res!1079447 () Bool)

(assert (=> b!2564720 (=> res!1079447 e!1619331)))

(assert (=> b!2564720 (= res!1079447 e!1619328)))

(declare-fun res!1079448 () Bool)

(assert (=> b!2564720 (=> (not res!1079448) (not e!1619328))))

(assert (=> b!2564720 (= res!1079448 lt!905141)))

(declare-fun b!2564721 () Bool)

(assert (=> b!2564721 (= e!1619332 e!1619330)))

(declare-fun c!412309 () Bool)

(assert (=> b!2564721 (= c!412309 ((_ is EmptyLang!7623) lt!905122))))

(assert (= (and d!726229 c!412310) b!2564717))

(assert (= (and d!726229 (not c!412310)) b!2564712))

(assert (= (and d!726229 c!412308) b!2564715))

(assert (= (and d!726229 (not c!412308)) b!2564721))

(assert (= (and b!2564721 c!412309) b!2564711))

(assert (= (and b!2564721 (not c!412309)) b!2564713))

(assert (= (and b!2564713 (not res!1079442)) b!2564720))

(assert (= (and b!2564720 res!1079448) b!2564718))

(assert (= (and b!2564718 res!1079446) b!2564710))

(assert (= (and b!2564710 res!1079444) b!2564714))

(assert (= (and b!2564720 (not res!1079447)) b!2564708))

(assert (= (and b!2564708 res!1079445) b!2564709))

(assert (= (and b!2564709 (not res!1079443)) b!2564719))

(assert (= (and b!2564719 (not res!1079449)) b!2564716))

(assert (= (or b!2564715 b!2564709 b!2564718) bm!164780))

(declare-fun m!2903403 () Bool)

(assert (=> b!2564712 m!2903403))

(assert (=> b!2564712 m!2903403))

(declare-fun m!2903405 () Bool)

(assert (=> b!2564712 m!2903405))

(declare-fun m!2903407 () Bool)

(assert (=> b!2564712 m!2903407))

(assert (=> b!2564712 m!2903405))

(assert (=> b!2564712 m!2903407))

(declare-fun m!2903409 () Bool)

(assert (=> b!2564712 m!2903409))

(assert (=> b!2564710 m!2903407))

(assert (=> b!2564710 m!2903407))

(declare-fun m!2903411 () Bool)

(assert (=> b!2564710 m!2903411))

(assert (=> b!2564716 m!2903403))

(declare-fun m!2903413 () Bool)

(assert (=> bm!164780 m!2903413))

(assert (=> d!726229 m!2903413))

(assert (=> d!726229 m!2903353))

(declare-fun m!2903415 () Bool)

(assert (=> b!2564717 m!2903415))

(assert (=> b!2564719 m!2903407))

(assert (=> b!2564719 m!2903407))

(assert (=> b!2564719 m!2903411))

(assert (=> b!2564714 m!2903403))

(assert (=> b!2564566 d!726229))

(declare-fun d!726231 () Bool)

(assert (=> d!726231 (= (matchR!3568 lt!905122 tl!4068) (matchR!3568 (derivative!318 lt!905122 tl!4068) Nil!29588))))

(declare-fun lt!905146 () Unit!43431)

(declare-fun choose!15124 (Regex!7623 List!29688) Unit!43431)

(assert (=> d!726231 (= lt!905146 (choose!15124 lt!905122 tl!4068))))

(assert (=> d!726231 (validRegex!3249 lt!905122)))

(assert (=> d!726231 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!214 lt!905122 tl!4068) lt!905146)))

(declare-fun bs!469899 () Bool)

(assert (= bs!469899 d!726231))

(declare-fun m!2903417 () Bool)

(assert (=> bs!469899 m!2903417))

(assert (=> bs!469899 m!2903323))

(declare-fun m!2903419 () Bool)

(assert (=> bs!469899 m!2903419))

(assert (=> bs!469899 m!2903323))

(assert (=> bs!469899 m!2903353))

(assert (=> bs!469899 m!2903307))

(assert (=> b!2564566 d!726231))

(declare-fun d!726233 () Bool)

(declare-fun nullableFct!765 (Regex!7623) Bool)

(assert (=> d!726233 (= (nullable!2540 lt!905114) (nullableFct!765 lt!905114))))

(declare-fun bs!469900 () Bool)

(assert (= bs!469900 d!726233))

(declare-fun m!2903429 () Bool)

(assert (=> bs!469900 m!2903429))

(assert (=> b!2564577 d!726233))

(declare-fun b!2564762 () Bool)

(declare-fun e!1619358 () Bool)

(declare-fun e!1619356 () Bool)

(assert (=> b!2564762 (= e!1619358 e!1619356)))

(declare-fun res!1079453 () Bool)

(assert (=> b!2564762 (=> (not res!1079453) (not e!1619356))))

(declare-fun lt!905149 () Bool)

(assert (=> b!2564762 (= res!1079453 (not lt!905149))))

(declare-fun bm!164797 () Bool)

(declare-fun call!164802 () Bool)

(assert (=> bm!164797 (= call!164802 (isEmpty!17046 tl!4068))))

(declare-fun b!2564764 () Bool)

(declare-fun res!1079452 () Bool)

(declare-fun e!1619355 () Bool)

(assert (=> b!2564764 (=> (not res!1079452) (not e!1619355))))

(assert (=> b!2564764 (= res!1079452 (isEmpty!17046 (tail!4105 tl!4068)))))

(declare-fun b!2564765 () Bool)

(declare-fun e!1619357 () Bool)

(assert (=> b!2564765 (= e!1619357 (not lt!905149))))

(declare-fun b!2564766 () Bool)

(declare-fun e!1619360 () Bool)

(assert (=> b!2564766 (= e!1619360 (matchR!3568 (derivativeStep!2192 lt!905119 (head!5830 tl!4068)) (tail!4105 tl!4068)))))

(declare-fun b!2564767 () Bool)

(declare-fun res!1079450 () Bool)

(assert (=> b!2564767 (=> res!1079450 e!1619358)))

(assert (=> b!2564767 (= res!1079450 (not ((_ is ElementMatch!7623) lt!905119)))))

(assert (=> b!2564767 (= e!1619357 e!1619358)))

(declare-fun b!2564768 () Bool)

(assert (=> b!2564768 (= e!1619355 (= (head!5830 tl!4068) (c!412277 lt!905119)))))

(declare-fun b!2564769 () Bool)

(declare-fun e!1619359 () Bool)

(assert (=> b!2564769 (= e!1619359 (= lt!905149 call!164802))))

(declare-fun b!2564770 () Bool)

(declare-fun e!1619361 () Bool)

(assert (=> b!2564770 (= e!1619361 (not (= (head!5830 tl!4068) (c!412277 lt!905119))))))

(declare-fun b!2564771 () Bool)

(assert (=> b!2564771 (= e!1619360 (nullable!2540 lt!905119))))

(declare-fun b!2564772 () Bool)

(declare-fun res!1079454 () Bool)

(assert (=> b!2564772 (=> (not res!1079454) (not e!1619355))))

(assert (=> b!2564772 (= res!1079454 (not call!164802))))

(declare-fun b!2564773 () Bool)

(declare-fun res!1079457 () Bool)

(assert (=> b!2564773 (=> res!1079457 e!1619361)))

(assert (=> b!2564773 (= res!1079457 (not (isEmpty!17046 (tail!4105 tl!4068))))))

(declare-fun d!726237 () Bool)

(assert (=> d!726237 e!1619359))

(declare-fun c!412331 () Bool)

(assert (=> d!726237 (= c!412331 ((_ is EmptyExpr!7623) lt!905119))))

(assert (=> d!726237 (= lt!905149 e!1619360)))

(declare-fun c!412333 () Bool)

(assert (=> d!726237 (= c!412333 (isEmpty!17046 tl!4068))))

(assert (=> d!726237 (validRegex!3249 lt!905119)))

(assert (=> d!726237 (= (matchR!3568 lt!905119 tl!4068) lt!905149)))

(declare-fun b!2564763 () Bool)

(assert (=> b!2564763 (= e!1619356 e!1619361)))

(declare-fun res!1079451 () Bool)

(assert (=> b!2564763 (=> res!1079451 e!1619361)))

(assert (=> b!2564763 (= res!1079451 call!164802)))

(declare-fun b!2564774 () Bool)

(declare-fun res!1079455 () Bool)

(assert (=> b!2564774 (=> res!1079455 e!1619358)))

(assert (=> b!2564774 (= res!1079455 e!1619355)))

(declare-fun res!1079456 () Bool)

(assert (=> b!2564774 (=> (not res!1079456) (not e!1619355))))

(assert (=> b!2564774 (= res!1079456 lt!905149)))

(declare-fun b!2564775 () Bool)

(assert (=> b!2564775 (= e!1619359 e!1619357)))

(declare-fun c!412332 () Bool)

(assert (=> b!2564775 (= c!412332 ((_ is EmptyLang!7623) lt!905119))))

(assert (= (and d!726237 c!412333) b!2564771))

(assert (= (and d!726237 (not c!412333)) b!2564766))

(assert (= (and d!726237 c!412331) b!2564769))

(assert (= (and d!726237 (not c!412331)) b!2564775))

(assert (= (and b!2564775 c!412332) b!2564765))

(assert (= (and b!2564775 (not c!412332)) b!2564767))

(assert (= (and b!2564767 (not res!1079450)) b!2564774))

(assert (= (and b!2564774 res!1079456) b!2564772))

(assert (= (and b!2564772 res!1079454) b!2564764))

(assert (= (and b!2564764 res!1079452) b!2564768))

(assert (= (and b!2564774 (not res!1079455)) b!2564762))

(assert (= (and b!2564762 res!1079453) b!2564763))

(assert (= (and b!2564763 (not res!1079451)) b!2564773))

(assert (= (and b!2564773 (not res!1079457)) b!2564770))

(assert (= (or b!2564769 b!2564763 b!2564772) bm!164797))

(assert (=> b!2564766 m!2903403))

(assert (=> b!2564766 m!2903403))

(declare-fun m!2903441 () Bool)

(assert (=> b!2564766 m!2903441))

(assert (=> b!2564766 m!2903407))

(assert (=> b!2564766 m!2903441))

(assert (=> b!2564766 m!2903407))

(declare-fun m!2903443 () Bool)

(assert (=> b!2564766 m!2903443))

(assert (=> b!2564764 m!2903407))

(assert (=> b!2564764 m!2903407))

(assert (=> b!2564764 m!2903411))

(assert (=> b!2564770 m!2903403))

(assert (=> bm!164797 m!2903413))

(assert (=> d!726237 m!2903413))

(declare-fun m!2903445 () Bool)

(assert (=> d!726237 m!2903445))

(declare-fun m!2903447 () Bool)

(assert (=> b!2564771 m!2903447))

(assert (=> b!2564773 m!2903407))

(assert (=> b!2564773 m!2903407))

(assert (=> b!2564773 m!2903411))

(assert (=> b!2564768 m!2903403))

(assert (=> b!2564576 d!726237))

(declare-fun d!726241 () Bool)

(declare-fun lt!905151 () Regex!7623)

(assert (=> d!726241 (validRegex!3249 lt!905151)))

(declare-fun e!1619369 () Regex!7623)

(assert (=> d!726241 (= lt!905151 e!1619369)))

(declare-fun c!412337 () Bool)

(assert (=> d!726241 (= c!412337 ((_ is Cons!29588) tl!4068))))

(assert (=> d!726241 (validRegex!3249 lt!905116)))

(assert (=> d!726241 (= (derivative!318 lt!905116 tl!4068) lt!905151)))

(declare-fun b!2564790 () Bool)

(assert (=> b!2564790 (= e!1619369 (derivative!318 (derivativeStep!2192 lt!905116 (h!35008 tl!4068)) (t!211387 tl!4068)))))

(declare-fun b!2564791 () Bool)

(assert (=> b!2564791 (= e!1619369 lt!905116)))

(assert (= (and d!726241 c!412337) b!2564790))

(assert (= (and d!726241 (not c!412337)) b!2564791))

(declare-fun m!2903455 () Bool)

(assert (=> d!726241 m!2903455))

(declare-fun m!2903457 () Bool)

(assert (=> d!726241 m!2903457))

(declare-fun m!2903459 () Bool)

(assert (=> b!2564790 m!2903459))

(assert (=> b!2564790 m!2903459))

(declare-fun m!2903461 () Bool)

(assert (=> b!2564790 m!2903461))

(assert (=> b!2564576 d!726241))

(declare-fun b!2564806 () Bool)

(declare-fun e!1619380 () Bool)

(declare-fun e!1619378 () Bool)

(assert (=> b!2564806 (= e!1619380 e!1619378)))

(declare-fun res!1079477 () Bool)

(assert (=> b!2564806 (=> (not res!1079477) (not e!1619378))))

(declare-fun lt!905153 () Bool)

(assert (=> b!2564806 (= res!1079477 (not lt!905153))))

(declare-fun bm!164800 () Bool)

(declare-fun call!164805 () Bool)

(assert (=> bm!164800 (= call!164805 (isEmpty!17046 tl!4068))))

(declare-fun b!2564808 () Bool)

(declare-fun res!1079476 () Bool)

(declare-fun e!1619377 () Bool)

(assert (=> b!2564808 (=> (not res!1079476) (not e!1619377))))

(assert (=> b!2564808 (= res!1079476 (isEmpty!17046 (tail!4105 tl!4068)))))

(declare-fun b!2564809 () Bool)

(declare-fun e!1619379 () Bool)

(assert (=> b!2564809 (= e!1619379 (not lt!905153))))

(declare-fun b!2564810 () Bool)

(declare-fun e!1619382 () Bool)

(assert (=> b!2564810 (= e!1619382 (matchR!3568 (derivativeStep!2192 lt!905116 (head!5830 tl!4068)) (tail!4105 tl!4068)))))

(declare-fun b!2564811 () Bool)

(declare-fun res!1079474 () Bool)

(assert (=> b!2564811 (=> res!1079474 e!1619380)))

(assert (=> b!2564811 (= res!1079474 (not ((_ is ElementMatch!7623) lt!905116)))))

(assert (=> b!2564811 (= e!1619379 e!1619380)))

(declare-fun b!2564812 () Bool)

(assert (=> b!2564812 (= e!1619377 (= (head!5830 tl!4068) (c!412277 lt!905116)))))

(declare-fun b!2564813 () Bool)

(declare-fun e!1619381 () Bool)

(assert (=> b!2564813 (= e!1619381 (= lt!905153 call!164805))))

(declare-fun b!2564814 () Bool)

(declare-fun e!1619383 () Bool)

(assert (=> b!2564814 (= e!1619383 (not (= (head!5830 tl!4068) (c!412277 lt!905116))))))

(declare-fun b!2564815 () Bool)

(assert (=> b!2564815 (= e!1619382 (nullable!2540 lt!905116))))

(declare-fun b!2564816 () Bool)

(declare-fun res!1079478 () Bool)

(assert (=> b!2564816 (=> (not res!1079478) (not e!1619377))))

(assert (=> b!2564816 (= res!1079478 (not call!164805))))

(declare-fun b!2564817 () Bool)

(declare-fun res!1079481 () Bool)

(assert (=> b!2564817 (=> res!1079481 e!1619383)))

(assert (=> b!2564817 (= res!1079481 (not (isEmpty!17046 (tail!4105 tl!4068))))))

(declare-fun d!726245 () Bool)

(assert (=> d!726245 e!1619381))

(declare-fun c!412341 () Bool)

(assert (=> d!726245 (= c!412341 ((_ is EmptyExpr!7623) lt!905116))))

(assert (=> d!726245 (= lt!905153 e!1619382)))

(declare-fun c!412343 () Bool)

(assert (=> d!726245 (= c!412343 (isEmpty!17046 tl!4068))))

(assert (=> d!726245 (validRegex!3249 lt!905116)))

(assert (=> d!726245 (= (matchR!3568 lt!905116 tl!4068) lt!905153)))

(declare-fun b!2564807 () Bool)

(assert (=> b!2564807 (= e!1619378 e!1619383)))

(declare-fun res!1079475 () Bool)

(assert (=> b!2564807 (=> res!1079475 e!1619383)))

(assert (=> b!2564807 (= res!1079475 call!164805)))

(declare-fun b!2564818 () Bool)

(declare-fun res!1079479 () Bool)

(assert (=> b!2564818 (=> res!1079479 e!1619380)))

(assert (=> b!2564818 (= res!1079479 e!1619377)))

(declare-fun res!1079480 () Bool)

(assert (=> b!2564818 (=> (not res!1079480) (not e!1619377))))

(assert (=> b!2564818 (= res!1079480 lt!905153)))

(declare-fun b!2564819 () Bool)

(assert (=> b!2564819 (= e!1619381 e!1619379)))

(declare-fun c!412342 () Bool)

(assert (=> b!2564819 (= c!412342 ((_ is EmptyLang!7623) lt!905116))))

(assert (= (and d!726245 c!412343) b!2564815))

(assert (= (and d!726245 (not c!412343)) b!2564810))

(assert (= (and d!726245 c!412341) b!2564813))

(assert (= (and d!726245 (not c!412341)) b!2564819))

(assert (= (and b!2564819 c!412342) b!2564809))

(assert (= (and b!2564819 (not c!412342)) b!2564811))

(assert (= (and b!2564811 (not res!1079474)) b!2564818))

(assert (= (and b!2564818 res!1079480) b!2564816))

(assert (= (and b!2564816 res!1079478) b!2564808))

(assert (= (and b!2564808 res!1079476) b!2564812))

(assert (= (and b!2564818 (not res!1079479)) b!2564806))

(assert (= (and b!2564806 res!1079477) b!2564807))

(assert (= (and b!2564807 (not res!1079475)) b!2564817))

(assert (= (and b!2564817 (not res!1079481)) b!2564814))

(assert (= (or b!2564813 b!2564807 b!2564816) bm!164800))

(assert (=> b!2564810 m!2903403))

(assert (=> b!2564810 m!2903403))

(declare-fun m!2903479 () Bool)

(assert (=> b!2564810 m!2903479))

(assert (=> b!2564810 m!2903407))

(assert (=> b!2564810 m!2903479))

(assert (=> b!2564810 m!2903407))

(declare-fun m!2903481 () Bool)

(assert (=> b!2564810 m!2903481))

(assert (=> b!2564808 m!2903407))

(assert (=> b!2564808 m!2903407))

(assert (=> b!2564808 m!2903411))

(assert (=> b!2564814 m!2903403))

(assert (=> bm!164800 m!2903413))

(assert (=> d!726245 m!2903413))

(assert (=> d!726245 m!2903457))

(declare-fun m!2903483 () Bool)

(assert (=> b!2564815 m!2903483))

(assert (=> b!2564817 m!2903407))

(assert (=> b!2564817 m!2903407))

(assert (=> b!2564817 m!2903411))

(assert (=> b!2564812 m!2903403))

(assert (=> b!2564576 d!726245))

(declare-fun d!726249 () Bool)

(declare-fun e!1619416 () Bool)

(assert (=> d!726249 e!1619416))

(declare-fun res!1079504 () Bool)

(assert (=> d!726249 (=> res!1079504 e!1619416)))

(assert (=> d!726249 (= res!1079504 (matchR!3568 lt!905119 tl!4068))))

(declare-fun lt!905159 () Unit!43431)

(declare-fun choose!15126 (Regex!7623 Regex!7623 List!29688) Unit!43431)

(assert (=> d!726249 (= lt!905159 (choose!15126 lt!905119 lt!905122 tl!4068))))

(declare-fun e!1619415 () Bool)

(assert (=> d!726249 e!1619415))

(declare-fun res!1079505 () Bool)

(assert (=> d!726249 (=> (not res!1079505) (not e!1619415))))

(assert (=> d!726249 (= res!1079505 (validRegex!3249 lt!905119))))

(assert (=> d!726249 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!218 lt!905119 lt!905122 tl!4068) lt!905159)))

(declare-fun b!2564868 () Bool)

(assert (=> b!2564868 (= e!1619415 (validRegex!3249 lt!905122))))

(declare-fun b!2564869 () Bool)

(assert (=> b!2564869 (= e!1619416 (matchR!3568 lt!905122 tl!4068))))

(assert (= (and d!726249 res!1079505) b!2564868))

(assert (= (and d!726249 (not res!1079504)) b!2564869))

(assert (=> d!726249 m!2903343))

(declare-fun m!2903507 () Bool)

(assert (=> d!726249 m!2903507))

(assert (=> d!726249 m!2903445))

(assert (=> b!2564868 m!2903353))

(assert (=> b!2564869 m!2903307))

(assert (=> b!2564576 d!726249))

(declare-fun bm!164847 () Bool)

(declare-fun call!164855 () Regex!7623)

(declare-fun call!164853 () Regex!7623)

(assert (=> bm!164847 (= call!164855 call!164853)))

(declare-fun b!2564970 () Bool)

(declare-fun e!1619479 () Regex!7623)

(declare-fun call!164854 () Regex!7623)

(assert (=> b!2564970 (= e!1619479 (Union!7623 call!164853 call!164854))))

(declare-fun b!2564971 () Bool)

(declare-fun e!1619475 () Regex!7623)

(assert (=> b!2564971 (= e!1619479 e!1619475)))

(declare-fun c!412398 () Bool)

(assert (=> b!2564971 (= c!412398 ((_ is Star!7623) (regTwo!15758 r!27340)))))

(declare-fun b!2564973 () Bool)

(assert (=> b!2564973 (= e!1619475 (Concat!12319 call!164855 (regTwo!15758 r!27340)))))

(declare-fun b!2564974 () Bool)

(declare-fun e!1619478 () Regex!7623)

(assert (=> b!2564974 (= e!1619478 (ite (= c!14016 (c!412277 (regTwo!15758 r!27340))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun e!1619477 () Regex!7623)

(declare-fun call!164852 () Regex!7623)

(declare-fun b!2564975 () Bool)

(assert (=> b!2564975 (= e!1619477 (Union!7623 (Concat!12319 call!164852 (regTwo!15758 (regTwo!15758 r!27340))) call!164854))))

(declare-fun b!2564976 () Bool)

(declare-fun e!1619476 () Regex!7623)

(assert (=> b!2564976 (= e!1619476 e!1619478)))

(declare-fun c!412397 () Bool)

(assert (=> b!2564976 (= c!412397 ((_ is ElementMatch!7623) (regTwo!15758 r!27340)))))

(declare-fun b!2564977 () Bool)

(assert (=> b!2564977 (= e!1619476 EmptyLang!7623)))

(declare-fun b!2564978 () Bool)

(assert (=> b!2564978 (= e!1619477 (Union!7623 (Concat!12319 call!164852 (regTwo!15758 (regTwo!15758 r!27340))) EmptyLang!7623))))

(declare-fun b!2564979 () Bool)

(declare-fun c!412396 () Bool)

(assert (=> b!2564979 (= c!412396 (nullable!2540 (regOne!15758 (regTwo!15758 r!27340))))))

(assert (=> b!2564979 (= e!1619475 e!1619477)))

(declare-fun bm!164848 () Bool)

(assert (=> bm!164848 (= call!164852 call!164855)))

(declare-fun d!726259 () Bool)

(declare-fun lt!905168 () Regex!7623)

(assert (=> d!726259 (validRegex!3249 lt!905168)))

(assert (=> d!726259 (= lt!905168 e!1619476)))

(declare-fun c!412399 () Bool)

(assert (=> d!726259 (= c!412399 (or ((_ is EmptyExpr!7623) (regTwo!15758 r!27340)) ((_ is EmptyLang!7623) (regTwo!15758 r!27340))))))

(assert (=> d!726259 (validRegex!3249 (regTwo!15758 r!27340))))

(assert (=> d!726259 (= (derivativeStep!2192 (regTwo!15758 r!27340) c!14016) lt!905168)))

(declare-fun b!2564972 () Bool)

(declare-fun c!412395 () Bool)

(assert (=> b!2564972 (= c!412395 ((_ is Union!7623) (regTwo!15758 r!27340)))))

(assert (=> b!2564972 (= e!1619478 e!1619479)))

(declare-fun bm!164849 () Bool)

(assert (=> bm!164849 (= call!164854 (derivativeStep!2192 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))) c!14016))))

(declare-fun bm!164850 () Bool)

(assert (=> bm!164850 (= call!164853 (derivativeStep!2192 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) c!14016))))

(assert (= (and d!726259 c!412399) b!2564977))

(assert (= (and d!726259 (not c!412399)) b!2564976))

(assert (= (and b!2564976 c!412397) b!2564974))

(assert (= (and b!2564976 (not c!412397)) b!2564972))

(assert (= (and b!2564972 c!412395) b!2564970))

(assert (= (and b!2564972 (not c!412395)) b!2564971))

(assert (= (and b!2564971 c!412398) b!2564973))

(assert (= (and b!2564971 (not c!412398)) b!2564979))

(assert (= (and b!2564979 c!412396) b!2564975))

(assert (= (and b!2564979 (not c!412396)) b!2564978))

(assert (= (or b!2564975 b!2564978) bm!164848))

(assert (= (or b!2564973 bm!164848) bm!164847))

(assert (= (or b!2564970 b!2564975) bm!164849))

(assert (= (or b!2564970 bm!164847) bm!164850))

(declare-fun m!2903557 () Bool)

(assert (=> b!2564979 m!2903557))

(declare-fun m!2903559 () Bool)

(assert (=> d!726259 m!2903559))

(assert (=> d!726259 m!2903319))

(declare-fun m!2903561 () Bool)

(assert (=> bm!164849 m!2903561))

(declare-fun m!2903563 () Bool)

(assert (=> bm!164850 m!2903563))

(assert (=> b!2564576 d!726259))

(declare-fun bm!164851 () Bool)

(declare-fun call!164859 () Regex!7623)

(declare-fun call!164857 () Regex!7623)

(assert (=> bm!164851 (= call!164859 call!164857)))

(declare-fun b!2564980 () Bool)

(declare-fun e!1619484 () Regex!7623)

(declare-fun call!164858 () Regex!7623)

(assert (=> b!2564980 (= e!1619484 (Union!7623 call!164857 call!164858))))

(declare-fun b!2564981 () Bool)

(declare-fun e!1619480 () Regex!7623)

(assert (=> b!2564981 (= e!1619484 e!1619480)))

(declare-fun c!412404 () Bool)

(assert (=> b!2564981 (= c!412404 ((_ is Star!7623) (regOne!15758 r!27340)))))

(declare-fun b!2564983 () Bool)

(assert (=> b!2564983 (= e!1619480 (Concat!12319 call!164859 (regOne!15758 r!27340)))))

(declare-fun b!2564984 () Bool)

(declare-fun e!1619483 () Regex!7623)

(assert (=> b!2564984 (= e!1619483 (ite (= c!14016 (c!412277 (regOne!15758 r!27340))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun e!1619482 () Regex!7623)

(declare-fun b!2564985 () Bool)

(declare-fun call!164856 () Regex!7623)

(assert (=> b!2564985 (= e!1619482 (Union!7623 (Concat!12319 call!164856 (regTwo!15758 (regOne!15758 r!27340))) call!164858))))

(declare-fun b!2564986 () Bool)

(declare-fun e!1619481 () Regex!7623)

(assert (=> b!2564986 (= e!1619481 e!1619483)))

(declare-fun c!412403 () Bool)

(assert (=> b!2564986 (= c!412403 ((_ is ElementMatch!7623) (regOne!15758 r!27340)))))

(declare-fun b!2564987 () Bool)

(assert (=> b!2564987 (= e!1619481 EmptyLang!7623)))

(declare-fun b!2564988 () Bool)

(assert (=> b!2564988 (= e!1619482 (Union!7623 (Concat!12319 call!164856 (regTwo!15758 (regOne!15758 r!27340))) EmptyLang!7623))))

(declare-fun b!2564989 () Bool)

(declare-fun c!412402 () Bool)

(assert (=> b!2564989 (= c!412402 (nullable!2540 (regOne!15758 (regOne!15758 r!27340))))))

(assert (=> b!2564989 (= e!1619480 e!1619482)))

(declare-fun bm!164852 () Bool)

(assert (=> bm!164852 (= call!164856 call!164859)))

(declare-fun d!726279 () Bool)

(declare-fun lt!905172 () Regex!7623)

(assert (=> d!726279 (validRegex!3249 lt!905172)))

(assert (=> d!726279 (= lt!905172 e!1619481)))

(declare-fun c!412405 () Bool)

(assert (=> d!726279 (= c!412405 (or ((_ is EmptyExpr!7623) (regOne!15758 r!27340)) ((_ is EmptyLang!7623) (regOne!15758 r!27340))))))

(assert (=> d!726279 (validRegex!3249 (regOne!15758 r!27340))))

(assert (=> d!726279 (= (derivativeStep!2192 (regOne!15758 r!27340) c!14016) lt!905172)))

(declare-fun b!2564982 () Bool)

(declare-fun c!412401 () Bool)

(assert (=> b!2564982 (= c!412401 ((_ is Union!7623) (regOne!15758 r!27340)))))

(assert (=> b!2564982 (= e!1619483 e!1619484)))

(declare-fun bm!164853 () Bool)

(assert (=> bm!164853 (= call!164858 (derivativeStep!2192 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))) c!14016))))

(declare-fun bm!164854 () Bool)

(assert (=> bm!164854 (= call!164857 (derivativeStep!2192 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))) c!14016))))

(assert (= (and d!726279 c!412405) b!2564987))

(assert (= (and d!726279 (not c!412405)) b!2564986))

(assert (= (and b!2564986 c!412403) b!2564984))

(assert (= (and b!2564986 (not c!412403)) b!2564982))

(assert (= (and b!2564982 c!412401) b!2564980))

(assert (= (and b!2564982 (not c!412401)) b!2564981))

(assert (= (and b!2564981 c!412404) b!2564983))

(assert (= (and b!2564981 (not c!412404)) b!2564989))

(assert (= (and b!2564989 c!412402) b!2564985))

(assert (= (and b!2564989 (not c!412402)) b!2564988))

(assert (= (or b!2564985 b!2564988) bm!164852))

(assert (= (or b!2564983 bm!164852) bm!164851))

(assert (= (or b!2564980 b!2564985) bm!164853))

(assert (= (or b!2564980 bm!164851) bm!164854))

(declare-fun m!2903575 () Bool)

(assert (=> b!2564989 m!2903575))

(declare-fun m!2903577 () Bool)

(assert (=> d!726279 m!2903577))

(declare-fun m!2903579 () Bool)

(assert (=> d!726279 m!2903579))

(declare-fun m!2903581 () Bool)

(assert (=> bm!164853 m!2903581))

(declare-fun m!2903583 () Bool)

(assert (=> bm!164854 m!2903583))

(assert (=> b!2564576 d!726279))

(declare-fun d!726285 () Bool)

(assert (=> d!726285 (= (matchR!3568 lt!905116 tl!4068) (matchR!3568 (derivative!318 lt!905116 tl!4068) Nil!29588))))

(declare-fun lt!905174 () Unit!43431)

(assert (=> d!726285 (= lt!905174 (choose!15124 lt!905116 tl!4068))))

(assert (=> d!726285 (validRegex!3249 lt!905116)))

(assert (=> d!726285 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!214 lt!905116 tl!4068) lt!905174)))

(declare-fun bs!469906 () Bool)

(assert (= bs!469906 d!726285))

(declare-fun m!2903585 () Bool)

(assert (=> bs!469906 m!2903585))

(assert (=> bs!469906 m!2903329))

(assert (=> bs!469906 m!2903335))

(assert (=> bs!469906 m!2903329))

(assert (=> bs!469906 m!2903457))

(assert (=> bs!469906 m!2903337))

(assert (=> b!2564576 d!726285))

(declare-fun b!2565023 () Bool)

(declare-fun e!1619499 () Bool)

(declare-fun e!1619497 () Bool)

(assert (=> b!2565023 (= e!1619499 e!1619497)))

(declare-fun res!1079535 () Bool)

(assert (=> b!2565023 (=> (not res!1079535) (not e!1619497))))

(declare-fun lt!905175 () Bool)

(assert (=> b!2565023 (= res!1079535 (not lt!905175))))

(declare-fun bm!164855 () Bool)

(declare-fun call!164860 () Bool)

(assert (=> bm!164855 (= call!164860 (isEmpty!17046 Nil!29588))))

(declare-fun b!2565025 () Bool)

(declare-fun res!1079534 () Bool)

(declare-fun e!1619496 () Bool)

(assert (=> b!2565025 (=> (not res!1079534) (not e!1619496))))

(assert (=> b!2565025 (= res!1079534 (isEmpty!17046 (tail!4105 Nil!29588)))))

(declare-fun b!2565026 () Bool)

(declare-fun e!1619498 () Bool)

(assert (=> b!2565026 (= e!1619498 (not lt!905175))))

(declare-fun b!2565027 () Bool)

(declare-fun e!1619501 () Bool)

(assert (=> b!2565027 (= e!1619501 (matchR!3568 (derivativeStep!2192 (derivative!318 lt!905116 tl!4068) (head!5830 Nil!29588)) (tail!4105 Nil!29588)))))

(declare-fun b!2565028 () Bool)

(declare-fun res!1079532 () Bool)

(assert (=> b!2565028 (=> res!1079532 e!1619499)))

(assert (=> b!2565028 (= res!1079532 (not ((_ is ElementMatch!7623) (derivative!318 lt!905116 tl!4068))))))

(assert (=> b!2565028 (= e!1619498 e!1619499)))

(declare-fun b!2565029 () Bool)

(assert (=> b!2565029 (= e!1619496 (= (head!5830 Nil!29588) (c!412277 (derivative!318 lt!905116 tl!4068))))))

(declare-fun b!2565030 () Bool)

(declare-fun e!1619500 () Bool)

(assert (=> b!2565030 (= e!1619500 (= lt!905175 call!164860))))

(declare-fun b!2565031 () Bool)

(declare-fun e!1619502 () Bool)

(assert (=> b!2565031 (= e!1619502 (not (= (head!5830 Nil!29588) (c!412277 (derivative!318 lt!905116 tl!4068)))))))

(declare-fun b!2565032 () Bool)

(assert (=> b!2565032 (= e!1619501 (nullable!2540 (derivative!318 lt!905116 tl!4068)))))

(declare-fun b!2565033 () Bool)

(declare-fun res!1079536 () Bool)

(assert (=> b!2565033 (=> (not res!1079536) (not e!1619496))))

(assert (=> b!2565033 (= res!1079536 (not call!164860))))

(declare-fun b!2565034 () Bool)

(declare-fun res!1079539 () Bool)

(assert (=> b!2565034 (=> res!1079539 e!1619502)))

(assert (=> b!2565034 (= res!1079539 (not (isEmpty!17046 (tail!4105 Nil!29588))))))

(declare-fun d!726287 () Bool)

(assert (=> d!726287 e!1619500))

(declare-fun c!412406 () Bool)

(assert (=> d!726287 (= c!412406 ((_ is EmptyExpr!7623) (derivative!318 lt!905116 tl!4068)))))

(assert (=> d!726287 (= lt!905175 e!1619501)))

(declare-fun c!412408 () Bool)

(assert (=> d!726287 (= c!412408 (isEmpty!17046 Nil!29588))))

(assert (=> d!726287 (validRegex!3249 (derivative!318 lt!905116 tl!4068))))

(assert (=> d!726287 (= (matchR!3568 (derivative!318 lt!905116 tl!4068) Nil!29588) lt!905175)))

(declare-fun b!2565024 () Bool)

(assert (=> b!2565024 (= e!1619497 e!1619502)))

(declare-fun res!1079533 () Bool)

(assert (=> b!2565024 (=> res!1079533 e!1619502)))

(assert (=> b!2565024 (= res!1079533 call!164860)))

(declare-fun b!2565035 () Bool)

(declare-fun res!1079537 () Bool)

(assert (=> b!2565035 (=> res!1079537 e!1619499)))

(assert (=> b!2565035 (= res!1079537 e!1619496)))

(declare-fun res!1079538 () Bool)

(assert (=> b!2565035 (=> (not res!1079538) (not e!1619496))))

(assert (=> b!2565035 (= res!1079538 lt!905175)))

(declare-fun b!2565036 () Bool)

(assert (=> b!2565036 (= e!1619500 e!1619498)))

(declare-fun c!412407 () Bool)

(assert (=> b!2565036 (= c!412407 ((_ is EmptyLang!7623) (derivative!318 lt!905116 tl!4068)))))

(assert (= (and d!726287 c!412408) b!2565032))

(assert (= (and d!726287 (not c!412408)) b!2565027))

(assert (= (and d!726287 c!412406) b!2565030))

(assert (= (and d!726287 (not c!412406)) b!2565036))

(assert (= (and b!2565036 c!412407) b!2565026))

(assert (= (and b!2565036 (not c!412407)) b!2565028))

(assert (= (and b!2565028 (not res!1079532)) b!2565035))

(assert (= (and b!2565035 res!1079538) b!2565033))

(assert (= (and b!2565033 res!1079536) b!2565025))

(assert (= (and b!2565025 res!1079534) b!2565029))

(assert (= (and b!2565035 (not res!1079537)) b!2565023))

(assert (= (and b!2565023 res!1079535) b!2565024))

(assert (= (and b!2565024 (not res!1079533)) b!2565034))

(assert (= (and b!2565034 (not res!1079539)) b!2565031))

(assert (= (or b!2565030 b!2565024 b!2565033) bm!164855))

(assert (=> b!2565027 m!2903363))

(assert (=> b!2565027 m!2903329))

(assert (=> b!2565027 m!2903363))

(declare-fun m!2903587 () Bool)

(assert (=> b!2565027 m!2903587))

(assert (=> b!2565027 m!2903367))

(assert (=> b!2565027 m!2903587))

(assert (=> b!2565027 m!2903367))

(declare-fun m!2903589 () Bool)

(assert (=> b!2565027 m!2903589))

(assert (=> b!2565025 m!2903367))

(assert (=> b!2565025 m!2903367))

(assert (=> b!2565025 m!2903371))

(assert (=> b!2565031 m!2903363))

(assert (=> bm!164855 m!2903373))

(assert (=> d!726287 m!2903373))

(assert (=> d!726287 m!2903329))

(declare-fun m!2903591 () Bool)

(assert (=> d!726287 m!2903591))

(assert (=> b!2565032 m!2903329))

(declare-fun m!2903593 () Bool)

(assert (=> b!2565032 m!2903593))

(assert (=> b!2565034 m!2903367))

(assert (=> b!2565034 m!2903367))

(assert (=> b!2565034 m!2903371))

(assert (=> b!2565029 m!2903363))

(assert (=> b!2564576 d!726287))

(declare-fun d!726289 () Bool)

(declare-fun lt!905178 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4078 (List!29688) (InoxSet C!15404))

(assert (=> d!726289 (= lt!905178 (select (content!4078 (firstChars!98 (regTwo!15758 r!27340))) c!14016))))

(declare-fun e!1619508 () Bool)

(assert (=> d!726289 (= lt!905178 e!1619508)))

(declare-fun res!1079544 () Bool)

(assert (=> d!726289 (=> (not res!1079544) (not e!1619508))))

(assert (=> d!726289 (= res!1079544 ((_ is Cons!29588) (firstChars!98 (regTwo!15758 r!27340))))))

(assert (=> d!726289 (= (contains!5307 (firstChars!98 (regTwo!15758 r!27340)) c!14016) lt!905178)))

(declare-fun b!2565045 () Bool)

(declare-fun e!1619509 () Bool)

(assert (=> b!2565045 (= e!1619508 e!1619509)))

(declare-fun res!1079545 () Bool)

(assert (=> b!2565045 (=> res!1079545 e!1619509)))

(assert (=> b!2565045 (= res!1079545 (= (h!35008 (firstChars!98 (regTwo!15758 r!27340))) c!14016))))

(declare-fun b!2565046 () Bool)

(assert (=> b!2565046 (= e!1619509 (contains!5307 (t!211387 (firstChars!98 (regTwo!15758 r!27340))) c!14016))))

(assert (= (and d!726289 res!1079544) b!2565045))

(assert (= (and b!2565045 (not res!1079545)) b!2565046))

(assert (=> d!726289 m!2903311))

(declare-fun m!2903595 () Bool)

(assert (=> d!726289 m!2903595))

(declare-fun m!2903597 () Bool)

(assert (=> d!726289 m!2903597))

(declare-fun m!2903599 () Bool)

(assert (=> b!2565046 m!2903599))

(assert (=> b!2564570 d!726289))

(declare-fun bm!164866 () Bool)

(declare-fun call!164872 () List!29688)

(declare-fun c!412422 () Bool)

(assert (=> bm!164866 (= call!164872 (firstChars!98 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565067 () Bool)

(declare-fun e!1619524 () List!29688)

(declare-fun call!164873 () List!29688)

(assert (=> b!2565067 (= e!1619524 call!164873)))

(declare-fun bm!164867 () Bool)

(declare-fun call!164874 () List!29688)

(declare-fun call!164875 () List!29688)

(assert (=> bm!164867 (= call!164874 call!164875)))

(declare-fun d!726291 () Bool)

(declare-fun c!412419 () Bool)

(assert (=> d!726291 (= c!412419 (or ((_ is EmptyExpr!7623) (regTwo!15758 r!27340)) ((_ is EmptyLang!7623) (regTwo!15758 r!27340))))))

(declare-fun e!1619521 () List!29688)

(assert (=> d!726291 (= (firstChars!98 (regTwo!15758 r!27340)) e!1619521)))

(declare-fun b!2565068 () Bool)

(declare-fun e!1619520 () List!29688)

(assert (=> b!2565068 (= e!1619521 e!1619520)))

(declare-fun c!412420 () Bool)

(assert (=> b!2565068 (= c!412420 ((_ is ElementMatch!7623) (regTwo!15758 r!27340)))))

(declare-fun b!2565069 () Bool)

(declare-fun e!1619522 () List!29688)

(declare-fun e!1619523 () List!29688)

(assert (=> b!2565069 (= e!1619522 e!1619523)))

(assert (=> b!2565069 (= c!412422 ((_ is Union!7623) (regTwo!15758 r!27340)))))

(declare-fun b!2565070 () Bool)

(declare-fun call!164871 () List!29688)

(assert (=> b!2565070 (= e!1619524 call!164871)))

(declare-fun b!2565071 () Bool)

(declare-fun c!412421 () Bool)

(assert (=> b!2565071 (= c!412421 (nullable!2540 (regOne!15758 (regTwo!15758 r!27340))))))

(assert (=> b!2565071 (= e!1619523 e!1619524)))

(declare-fun b!2565072 () Bool)

(declare-fun c!412423 () Bool)

(assert (=> b!2565072 (= c!412423 ((_ is Star!7623) (regTwo!15758 r!27340)))))

(assert (=> b!2565072 (= e!1619520 e!1619522)))

(declare-fun b!2565073 () Bool)

(assert (=> b!2565073 (= e!1619521 Nil!29588)))

(declare-fun bm!164868 () Bool)

(declare-fun ++!7272 (List!29688 List!29688) List!29688)

(assert (=> bm!164868 (= call!164871 (++!7272 (ite c!412422 call!164874 call!164872) (ite c!412422 call!164872 call!164873)))))

(declare-fun b!2565074 () Bool)

(assert (=> b!2565074 (= e!1619522 call!164875)))

(declare-fun b!2565075 () Bool)

(assert (=> b!2565075 (= e!1619520 (Cons!29588 (c!412277 (regTwo!15758 r!27340)) Nil!29588))))

(declare-fun bm!164869 () Bool)

(assert (=> bm!164869 (= call!164873 call!164874)))

(declare-fun b!2565076 () Bool)

(assert (=> b!2565076 (= e!1619523 call!164871)))

(declare-fun bm!164870 () Bool)

(assert (=> bm!164870 (= call!164875 (firstChars!98 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(assert (= (and d!726291 c!412419) b!2565073))

(assert (= (and d!726291 (not c!412419)) b!2565068))

(assert (= (and b!2565068 c!412420) b!2565075))

(assert (= (and b!2565068 (not c!412420)) b!2565072))

(assert (= (and b!2565072 c!412423) b!2565074))

(assert (= (and b!2565072 (not c!412423)) b!2565069))

(assert (= (and b!2565069 c!412422) b!2565076))

(assert (= (and b!2565069 (not c!412422)) b!2565071))

(assert (= (and b!2565071 c!412421) b!2565070))

(assert (= (and b!2565071 (not c!412421)) b!2565067))

(assert (= (or b!2565070 b!2565067) bm!164869))

(assert (= (or b!2565076 bm!164869) bm!164867))

(assert (= (or b!2565076 b!2565070) bm!164866))

(assert (= (or b!2565076 b!2565070) bm!164868))

(assert (= (or b!2565074 bm!164867) bm!164870))

(declare-fun m!2903601 () Bool)

(assert (=> bm!164866 m!2903601))

(assert (=> b!2565071 m!2903557))

(declare-fun m!2903603 () Bool)

(assert (=> bm!164868 m!2903603))

(declare-fun m!2903605 () Bool)

(assert (=> bm!164870 m!2903605))

(assert (=> b!2564570 d!726291))

(declare-fun bm!164871 () Bool)

(declare-fun call!164877 () List!29688)

(declare-fun c!412427 () Bool)

(assert (=> bm!164871 (= call!164877 (firstChars!98 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))

(declare-fun b!2565077 () Bool)

(declare-fun e!1619529 () List!29688)

(declare-fun call!164878 () List!29688)

(assert (=> b!2565077 (= e!1619529 call!164878)))

(declare-fun bm!164872 () Bool)

(declare-fun call!164879 () List!29688)

(declare-fun call!164880 () List!29688)

(assert (=> bm!164872 (= call!164879 call!164880)))

(declare-fun d!726293 () Bool)

(declare-fun c!412424 () Bool)

(assert (=> d!726293 (= c!412424 (or ((_ is EmptyExpr!7623) r!27340) ((_ is EmptyLang!7623) r!27340)))))

(declare-fun e!1619526 () List!29688)

(assert (=> d!726293 (= (firstChars!98 r!27340) e!1619526)))

(declare-fun b!2565078 () Bool)

(declare-fun e!1619525 () List!29688)

(assert (=> b!2565078 (= e!1619526 e!1619525)))

(declare-fun c!412425 () Bool)

(assert (=> b!2565078 (= c!412425 ((_ is ElementMatch!7623) r!27340))))

(declare-fun b!2565079 () Bool)

(declare-fun e!1619527 () List!29688)

(declare-fun e!1619528 () List!29688)

(assert (=> b!2565079 (= e!1619527 e!1619528)))

(assert (=> b!2565079 (= c!412427 ((_ is Union!7623) r!27340))))

(declare-fun b!2565080 () Bool)

(declare-fun call!164876 () List!29688)

(assert (=> b!2565080 (= e!1619529 call!164876)))

(declare-fun b!2565081 () Bool)

(declare-fun c!412426 () Bool)

(assert (=> b!2565081 (= c!412426 (nullable!2540 (regOne!15758 r!27340)))))

(assert (=> b!2565081 (= e!1619528 e!1619529)))

(declare-fun b!2565082 () Bool)

(declare-fun c!412428 () Bool)

(assert (=> b!2565082 (= c!412428 ((_ is Star!7623) r!27340))))

(assert (=> b!2565082 (= e!1619525 e!1619527)))

(declare-fun b!2565083 () Bool)

(assert (=> b!2565083 (= e!1619526 Nil!29588)))

(declare-fun bm!164873 () Bool)

(assert (=> bm!164873 (= call!164876 (++!7272 (ite c!412427 call!164879 call!164877) (ite c!412427 call!164877 call!164878)))))

(declare-fun b!2565084 () Bool)

(assert (=> b!2565084 (= e!1619527 call!164880)))

(declare-fun b!2565085 () Bool)

(assert (=> b!2565085 (= e!1619525 (Cons!29588 (c!412277 r!27340) Nil!29588))))

(declare-fun bm!164874 () Bool)

(assert (=> bm!164874 (= call!164878 call!164879)))

(declare-fun b!2565086 () Bool)

(assert (=> b!2565086 (= e!1619528 call!164876)))

(declare-fun bm!164875 () Bool)

(assert (=> bm!164875 (= call!164880 (firstChars!98 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))))))

(assert (= (and d!726293 c!412424) b!2565083))

(assert (= (and d!726293 (not c!412424)) b!2565078))

(assert (= (and b!2565078 c!412425) b!2565085))

(assert (= (and b!2565078 (not c!412425)) b!2565082))

(assert (= (and b!2565082 c!412428) b!2565084))

(assert (= (and b!2565082 (not c!412428)) b!2565079))

(assert (= (and b!2565079 c!412427) b!2565086))

(assert (= (and b!2565079 (not c!412427)) b!2565081))

(assert (= (and b!2565081 c!412426) b!2565080))

(assert (= (and b!2565081 (not c!412426)) b!2565077))

(assert (= (or b!2565080 b!2565077) bm!164874))

(assert (= (or b!2565086 bm!164874) bm!164872))

(assert (= (or b!2565086 b!2565080) bm!164871))

(assert (= (or b!2565086 b!2565080) bm!164873))

(assert (= (or b!2565084 bm!164872) bm!164875))

(declare-fun m!2903607 () Bool)

(assert (=> bm!164871 m!2903607))

(assert (=> b!2565081 m!2903297))

(declare-fun m!2903609 () Bool)

(assert (=> bm!164873 m!2903609))

(declare-fun m!2903611 () Bool)

(assert (=> bm!164875 m!2903611))

(assert (=> b!2564570 d!726293))

(declare-fun d!726295 () Bool)

(assert (=> d!726295 (contains!5307 (firstChars!98 (regTwo!15758 r!27340)) c!14016)))

(declare-fun lt!905181 () Unit!43431)

(declare-fun choose!15127 (Regex!7623 C!15404 List!29688) Unit!43431)

(assert (=> d!726295 (= lt!905181 (choose!15127 (regTwo!15758 r!27340) c!14016 tl!4068))))

(assert (=> d!726295 (validRegex!3249 (regTwo!15758 r!27340))))

(assert (=> d!726295 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!14 (regTwo!15758 r!27340) c!14016 tl!4068) lt!905181)))

(declare-fun bs!469907 () Bool)

(assert (= bs!469907 d!726295))

(assert (=> bs!469907 m!2903311))

(assert (=> bs!469907 m!2903311))

(assert (=> bs!469907 m!2903313))

(declare-fun m!2903613 () Bool)

(assert (=> bs!469907 m!2903613))

(assert (=> bs!469907 m!2903319))

(assert (=> b!2564570 d!726295))

(declare-fun d!726297 () Bool)

(declare-fun lt!905182 () Bool)

(assert (=> d!726297 (= lt!905182 (select (content!4078 (firstChars!98 r!27340)) c!14016))))

(declare-fun e!1619530 () Bool)

(assert (=> d!726297 (= lt!905182 e!1619530)))

(declare-fun res!1079546 () Bool)

(assert (=> d!726297 (=> (not res!1079546) (not e!1619530))))

(assert (=> d!726297 (= res!1079546 ((_ is Cons!29588) (firstChars!98 r!27340)))))

(assert (=> d!726297 (= (contains!5307 (firstChars!98 r!27340) c!14016) lt!905182)))

(declare-fun b!2565087 () Bool)

(declare-fun e!1619531 () Bool)

(assert (=> b!2565087 (= e!1619530 e!1619531)))

(declare-fun res!1079547 () Bool)

(assert (=> b!2565087 (=> res!1079547 e!1619531)))

(assert (=> b!2565087 (= res!1079547 (= (h!35008 (firstChars!98 r!27340)) c!14016))))

(declare-fun b!2565088 () Bool)

(assert (=> b!2565088 (= e!1619531 (contains!5307 (t!211387 (firstChars!98 r!27340)) c!14016))))

(assert (= (and d!726297 res!1079546) b!2565087))

(assert (= (and b!2565087 (not res!1079547)) b!2565088))

(assert (=> d!726297 m!2903315))

(declare-fun m!2903615 () Bool)

(assert (=> d!726297 m!2903615))

(declare-fun m!2903617 () Bool)

(assert (=> d!726297 m!2903617))

(declare-fun m!2903619 () Bool)

(assert (=> b!2565088 m!2903619))

(assert (=> b!2564570 d!726297))

(assert (=> b!2564575 d!726229))

(declare-fun d!726299 () Bool)

(assert (=> d!726299 (= (nullable!2540 (regOne!15758 r!27340)) (nullableFct!765 (regOne!15758 r!27340)))))

(declare-fun bs!469908 () Bool)

(assert (= bs!469908 d!726299))

(declare-fun m!2903621 () Bool)

(assert (=> bs!469908 m!2903621))

(assert (=> b!2564574 d!726299))

(declare-fun d!726301 () Bool)

(assert (=> d!726301 (= (nullable!2540 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)) (nullableFct!765 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469909 () Bool)

(assert (= bs!469909 d!726301))

(assert (=> bs!469909 m!2903303))

(declare-fun m!2903623 () Bool)

(assert (=> bs!469909 m!2903623))

(assert (=> b!2564569 d!726301))

(declare-fun d!726303 () Bool)

(declare-fun lt!905183 () Regex!7623)

(assert (=> d!726303 (validRegex!3249 lt!905183)))

(declare-fun e!1619532 () Regex!7623)

(assert (=> d!726303 (= lt!905183 e!1619532)))

(declare-fun c!412430 () Bool)

(assert (=> d!726303 (= c!412430 ((_ is Cons!29588) tl!4068))))

(assert (=> d!726303 (validRegex!3249 (derivativeStep!2192 r!27340 c!14016))))

(assert (=> d!726303 (= (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068) lt!905183)))

(declare-fun b!2565089 () Bool)

(assert (=> b!2565089 (= e!1619532 (derivative!318 (derivativeStep!2192 (derivativeStep!2192 r!27340 c!14016) (h!35008 tl!4068)) (t!211387 tl!4068)))))

(declare-fun b!2565090 () Bool)

(assert (=> b!2565090 (= e!1619532 (derivativeStep!2192 r!27340 c!14016))))

(assert (= (and d!726303 c!412430) b!2565089))

(assert (= (and d!726303 (not c!412430)) b!2565090))

(declare-fun m!2903625 () Bool)

(assert (=> d!726303 m!2903625))

(assert (=> d!726303 m!2903301))

(declare-fun m!2903627 () Bool)

(assert (=> d!726303 m!2903627))

(assert (=> b!2565089 m!2903301))

(declare-fun m!2903629 () Bool)

(assert (=> b!2565089 m!2903629))

(assert (=> b!2565089 m!2903629))

(declare-fun m!2903631 () Bool)

(assert (=> b!2565089 m!2903631))

(assert (=> b!2564569 d!726303))

(declare-fun bm!164876 () Bool)

(declare-fun call!164884 () Regex!7623)

(declare-fun call!164882 () Regex!7623)

(assert (=> bm!164876 (= call!164884 call!164882)))

(declare-fun b!2565091 () Bool)

(declare-fun e!1619537 () Regex!7623)

(declare-fun call!164883 () Regex!7623)

(assert (=> b!2565091 (= e!1619537 (Union!7623 call!164882 call!164883))))

(declare-fun b!2565092 () Bool)

(declare-fun e!1619533 () Regex!7623)

(assert (=> b!2565092 (= e!1619537 e!1619533)))

(declare-fun c!412434 () Bool)

(assert (=> b!2565092 (= c!412434 ((_ is Star!7623) r!27340))))

(declare-fun b!2565094 () Bool)

(assert (=> b!2565094 (= e!1619533 (Concat!12319 call!164884 r!27340))))

(declare-fun b!2565095 () Bool)

(declare-fun e!1619536 () Regex!7623)

(assert (=> b!2565095 (= e!1619536 (ite (= c!14016 (c!412277 r!27340)) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun call!164881 () Regex!7623)

(declare-fun e!1619535 () Regex!7623)

(declare-fun b!2565096 () Bool)

(assert (=> b!2565096 (= e!1619535 (Union!7623 (Concat!12319 call!164881 (regTwo!15758 r!27340)) call!164883))))

(declare-fun b!2565097 () Bool)

(declare-fun e!1619534 () Regex!7623)

(assert (=> b!2565097 (= e!1619534 e!1619536)))

(declare-fun c!412433 () Bool)

(assert (=> b!2565097 (= c!412433 ((_ is ElementMatch!7623) r!27340))))

(declare-fun b!2565098 () Bool)

(assert (=> b!2565098 (= e!1619534 EmptyLang!7623)))

(declare-fun b!2565099 () Bool)

(assert (=> b!2565099 (= e!1619535 (Union!7623 (Concat!12319 call!164881 (regTwo!15758 r!27340)) EmptyLang!7623))))

(declare-fun b!2565100 () Bool)

(declare-fun c!412432 () Bool)

(assert (=> b!2565100 (= c!412432 (nullable!2540 (regOne!15758 r!27340)))))

(assert (=> b!2565100 (= e!1619533 e!1619535)))

(declare-fun bm!164877 () Bool)

(assert (=> bm!164877 (= call!164881 call!164884)))

(declare-fun d!726305 () Bool)

(declare-fun lt!905184 () Regex!7623)

(assert (=> d!726305 (validRegex!3249 lt!905184)))

(assert (=> d!726305 (= lt!905184 e!1619534)))

(declare-fun c!412435 () Bool)

(assert (=> d!726305 (= c!412435 (or ((_ is EmptyExpr!7623) r!27340) ((_ is EmptyLang!7623) r!27340)))))

(assert (=> d!726305 (validRegex!3249 r!27340)))

(assert (=> d!726305 (= (derivativeStep!2192 r!27340 c!14016) lt!905184)))

(declare-fun b!2565093 () Bool)

(declare-fun c!412431 () Bool)

(assert (=> b!2565093 (= c!412431 ((_ is Union!7623) r!27340))))

(assert (=> b!2565093 (= e!1619536 e!1619537)))

(declare-fun bm!164878 () Bool)

(assert (=> bm!164878 (= call!164883 (derivativeStep!2192 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)) c!14016))))

(declare-fun bm!164879 () Bool)

(assert (=> bm!164879 (= call!164882 (derivativeStep!2192 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))) c!14016))))

(assert (= (and d!726305 c!412435) b!2565098))

(assert (= (and d!726305 (not c!412435)) b!2565097))

(assert (= (and b!2565097 c!412433) b!2565095))

(assert (= (and b!2565097 (not c!412433)) b!2565093))

(assert (= (and b!2565093 c!412431) b!2565091))

(assert (= (and b!2565093 (not c!412431)) b!2565092))

(assert (= (and b!2565092 c!412434) b!2565094))

(assert (= (and b!2565092 (not c!412434)) b!2565100))

(assert (= (and b!2565100 c!412432) b!2565096))

(assert (= (and b!2565100 (not c!412432)) b!2565099))

(assert (= (or b!2565096 b!2565099) bm!164877))

(assert (= (or b!2565094 bm!164877) bm!164876))

(assert (= (or b!2565091 b!2565096) bm!164878))

(assert (= (or b!2565091 bm!164876) bm!164879))

(assert (=> b!2565100 m!2903297))

(declare-fun m!2903633 () Bool)

(assert (=> d!726305 m!2903633))

(assert (=> d!726305 m!2903327))

(declare-fun m!2903635 () Bool)

(assert (=> bm!164878 m!2903635))

(declare-fun m!2903637 () Bool)

(assert (=> bm!164879 m!2903637))

(assert (=> b!2564569 d!726305))

(declare-fun b!2565101 () Bool)

(declare-fun e!1619541 () Bool)

(declare-fun e!1619539 () Bool)

(assert (=> b!2565101 (= e!1619541 e!1619539)))

(declare-fun res!1079551 () Bool)

(assert (=> b!2565101 (=> (not res!1079551) (not e!1619539))))

(declare-fun call!164887 () Bool)

(assert (=> b!2565101 (= res!1079551 call!164887)))

(declare-fun c!412437 () Bool)

(declare-fun bm!164880 () Bool)

(declare-fun call!164885 () Bool)

(declare-fun c!412436 () Bool)

(assert (=> bm!164880 (= call!164885 (validRegex!3249 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))

(declare-fun b!2565102 () Bool)

(declare-fun e!1619542 () Bool)

(assert (=> b!2565102 (= e!1619542 call!164885)))

(declare-fun d!726307 () Bool)

(declare-fun res!1079550 () Bool)

(declare-fun e!1619543 () Bool)

(assert (=> d!726307 (=> res!1079550 e!1619543)))

(assert (=> d!726307 (= res!1079550 ((_ is ElementMatch!7623) r!27340))))

(assert (=> d!726307 (= (validRegex!3249 r!27340) e!1619543)))

(declare-fun b!2565103 () Bool)

(declare-fun e!1619538 () Bool)

(assert (=> b!2565103 (= e!1619538 call!164887)))

(declare-fun b!2565104 () Bool)

(declare-fun e!1619540 () Bool)

(assert (=> b!2565104 (= e!1619543 e!1619540)))

(assert (=> b!2565104 (= c!412436 ((_ is Star!7623) r!27340))))

(declare-fun b!2565105 () Bool)

(assert (=> b!2565105 (= e!1619540 e!1619542)))

(declare-fun res!1079549 () Bool)

(assert (=> b!2565105 (= res!1079549 (not (nullable!2540 (reg!7952 r!27340))))))

(assert (=> b!2565105 (=> (not res!1079549) (not e!1619542))))

(declare-fun b!2565106 () Bool)

(declare-fun e!1619544 () Bool)

(assert (=> b!2565106 (= e!1619540 e!1619544)))

(assert (=> b!2565106 (= c!412437 ((_ is Union!7623) r!27340))))

(declare-fun bm!164881 () Bool)

(assert (=> bm!164881 (= call!164887 call!164885)))

(declare-fun bm!164882 () Bool)

(declare-fun call!164886 () Bool)

(assert (=> bm!164882 (= call!164886 (validRegex!3249 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))))))

(declare-fun b!2565107 () Bool)

(declare-fun res!1079548 () Bool)

(assert (=> b!2565107 (=> (not res!1079548) (not e!1619538))))

(assert (=> b!2565107 (= res!1079548 call!164886)))

(assert (=> b!2565107 (= e!1619544 e!1619538)))

(declare-fun b!2565108 () Bool)

(assert (=> b!2565108 (= e!1619539 call!164886)))

(declare-fun b!2565109 () Bool)

(declare-fun res!1079552 () Bool)

(assert (=> b!2565109 (=> res!1079552 e!1619541)))

(assert (=> b!2565109 (= res!1079552 (not ((_ is Concat!12319) r!27340)))))

(assert (=> b!2565109 (= e!1619544 e!1619541)))

(assert (= (and d!726307 (not res!1079550)) b!2565104))

(assert (= (and b!2565104 c!412436) b!2565105))

(assert (= (and b!2565104 (not c!412436)) b!2565106))

(assert (= (and b!2565105 res!1079549) b!2565102))

(assert (= (and b!2565106 c!412437) b!2565107))

(assert (= (and b!2565106 (not c!412437)) b!2565109))

(assert (= (and b!2565107 res!1079548) b!2565103))

(assert (= (and b!2565109 (not res!1079552)) b!2565101))

(assert (= (and b!2565101 res!1079551) b!2565108))

(assert (= (or b!2565107 b!2565108) bm!164882))

(assert (= (or b!2565103 b!2565101) bm!164881))

(assert (= (or b!2565102 bm!164881) bm!164880))

(declare-fun m!2903639 () Bool)

(assert (=> bm!164880 m!2903639))

(declare-fun m!2903641 () Bool)

(assert (=> b!2565105 m!2903641))

(declare-fun m!2903643 () Bool)

(assert (=> bm!164882 m!2903643))

(assert (=> start!248088 d!726307))

(declare-fun b!2565114 () Bool)

(declare-fun e!1619547 () Bool)

(declare-fun tp!816523 () Bool)

(assert (=> b!2565114 (= e!1619547 (and tp_is_empty!13101 tp!816523))))

(assert (=> b!2564571 (= tp!816480 e!1619547)))

(assert (= (and b!2564571 ((_ is Cons!29588) (t!211387 tl!4068))) b!2565114))

(declare-fun b!2565128 () Bool)

(declare-fun e!1619550 () Bool)

(declare-fun tp!816537 () Bool)

(declare-fun tp!816535 () Bool)

(assert (=> b!2565128 (= e!1619550 (and tp!816537 tp!816535))))

(declare-fun b!2565125 () Bool)

(assert (=> b!2565125 (= e!1619550 tp_is_empty!13101)))

(declare-fun b!2565127 () Bool)

(declare-fun tp!816534 () Bool)

(assert (=> b!2565127 (= e!1619550 tp!816534)))

(assert (=> b!2564573 (= tp!816477 e!1619550)))

(declare-fun b!2565126 () Bool)

(declare-fun tp!816536 () Bool)

(declare-fun tp!816538 () Bool)

(assert (=> b!2565126 (= e!1619550 (and tp!816536 tp!816538))))

(assert (= (and b!2564573 ((_ is ElementMatch!7623) (regOne!15758 r!27340))) b!2565125))

(assert (= (and b!2564573 ((_ is Concat!12319) (regOne!15758 r!27340))) b!2565126))

(assert (= (and b!2564573 ((_ is Star!7623) (regOne!15758 r!27340))) b!2565127))

(assert (= (and b!2564573 ((_ is Union!7623) (regOne!15758 r!27340))) b!2565128))

(declare-fun b!2565132 () Bool)

(declare-fun e!1619551 () Bool)

(declare-fun tp!816542 () Bool)

(declare-fun tp!816540 () Bool)

(assert (=> b!2565132 (= e!1619551 (and tp!816542 tp!816540))))

(declare-fun b!2565129 () Bool)

(assert (=> b!2565129 (= e!1619551 tp_is_empty!13101)))

(declare-fun b!2565131 () Bool)

(declare-fun tp!816539 () Bool)

(assert (=> b!2565131 (= e!1619551 tp!816539)))

(assert (=> b!2564573 (= tp!816479 e!1619551)))

(declare-fun b!2565130 () Bool)

(declare-fun tp!816541 () Bool)

(declare-fun tp!816543 () Bool)

(assert (=> b!2565130 (= e!1619551 (and tp!816541 tp!816543))))

(assert (= (and b!2564573 ((_ is ElementMatch!7623) (regTwo!15758 r!27340))) b!2565129))

(assert (= (and b!2564573 ((_ is Concat!12319) (regTwo!15758 r!27340))) b!2565130))

(assert (= (and b!2564573 ((_ is Star!7623) (regTwo!15758 r!27340))) b!2565131))

(assert (= (and b!2564573 ((_ is Union!7623) (regTwo!15758 r!27340))) b!2565132))

(declare-fun b!2565136 () Bool)

(declare-fun e!1619552 () Bool)

(declare-fun tp!816547 () Bool)

(declare-fun tp!816545 () Bool)

(assert (=> b!2565136 (= e!1619552 (and tp!816547 tp!816545))))

(declare-fun b!2565133 () Bool)

(assert (=> b!2565133 (= e!1619552 tp_is_empty!13101)))

(declare-fun b!2565135 () Bool)

(declare-fun tp!816544 () Bool)

(assert (=> b!2565135 (= e!1619552 tp!816544)))

(assert (=> b!2564572 (= tp!816478 e!1619552)))

(declare-fun b!2565134 () Bool)

(declare-fun tp!816546 () Bool)

(declare-fun tp!816548 () Bool)

(assert (=> b!2565134 (= e!1619552 (and tp!816546 tp!816548))))

(assert (= (and b!2564572 ((_ is ElementMatch!7623) (reg!7952 r!27340))) b!2565133))

(assert (= (and b!2564572 ((_ is Concat!12319) (reg!7952 r!27340))) b!2565134))

(assert (= (and b!2564572 ((_ is Star!7623) (reg!7952 r!27340))) b!2565135))

(assert (= (and b!2564572 ((_ is Union!7623) (reg!7952 r!27340))) b!2565136))

(declare-fun b!2565140 () Bool)

(declare-fun e!1619553 () Bool)

(declare-fun tp!816552 () Bool)

(declare-fun tp!816550 () Bool)

(assert (=> b!2565140 (= e!1619553 (and tp!816552 tp!816550))))

(declare-fun b!2565137 () Bool)

(assert (=> b!2565137 (= e!1619553 tp_is_empty!13101)))

(declare-fun b!2565139 () Bool)

(declare-fun tp!816549 () Bool)

(assert (=> b!2565139 (= e!1619553 tp!816549)))

(assert (=> b!2564567 (= tp!816481 e!1619553)))

(declare-fun b!2565138 () Bool)

(declare-fun tp!816551 () Bool)

(declare-fun tp!816553 () Bool)

(assert (=> b!2565138 (= e!1619553 (and tp!816551 tp!816553))))

(assert (= (and b!2564567 ((_ is ElementMatch!7623) (regOne!15759 r!27340))) b!2565137))

(assert (= (and b!2564567 ((_ is Concat!12319) (regOne!15759 r!27340))) b!2565138))

(assert (= (and b!2564567 ((_ is Star!7623) (regOne!15759 r!27340))) b!2565139))

(assert (= (and b!2564567 ((_ is Union!7623) (regOne!15759 r!27340))) b!2565140))

(declare-fun b!2565144 () Bool)

(declare-fun e!1619554 () Bool)

(declare-fun tp!816557 () Bool)

(declare-fun tp!816555 () Bool)

(assert (=> b!2565144 (= e!1619554 (and tp!816557 tp!816555))))

(declare-fun b!2565141 () Bool)

(assert (=> b!2565141 (= e!1619554 tp_is_empty!13101)))

(declare-fun b!2565143 () Bool)

(declare-fun tp!816554 () Bool)

(assert (=> b!2565143 (= e!1619554 tp!816554)))

(assert (=> b!2564567 (= tp!816482 e!1619554)))

(declare-fun b!2565142 () Bool)

(declare-fun tp!816556 () Bool)

(declare-fun tp!816558 () Bool)

(assert (=> b!2565142 (= e!1619554 (and tp!816556 tp!816558))))

(assert (= (and b!2564567 ((_ is ElementMatch!7623) (regTwo!15759 r!27340))) b!2565141))

(assert (= (and b!2564567 ((_ is Concat!12319) (regTwo!15759 r!27340))) b!2565142))

(assert (= (and b!2564567 ((_ is Star!7623) (regTwo!15759 r!27340))) b!2565143))

(assert (= (and b!2564567 ((_ is Union!7623) (regTwo!15759 r!27340))) b!2565144))

(check-sat (not b!2564655) (not b!2564656) (not b!2565046) (not b!2565142) (not d!726215) (not bm!164780) (not d!726287) (not bm!164873) (not b!2564989) (not b!2564766) (not b!2564714) (not b!2564589) (not b!2565100) (not b!2565135) (not b!2564716) (not b!2564712) (not b!2564703) (not b!2564764) (not b!2564710) (not b!2564770) (not bm!164797) (not d!726279) (not b!2564868) (not b!2565136) (not b!2564719) (not b!2565139) (not b!2565071) (not b!2565126) (not b!2565131) (not b!2564773) (not b!2564979) (not d!726297) (not b!2565132) (not b!2564808) (not d!726249) (not b!2564658) (not b!2565128) (not d!726289) (not b!2564768) (not d!726219) (not bm!164853) (not b!2565105) (not bm!164879) (not b!2564717) (not d!726305) (not bm!164777) (not d!726301) (not b!2564814) (not b!2565031) (not b!2564771) (not b!2565140) (not b!2565034) (not bm!164875) (not b!2565127) (not b!2565138) (not b!2564649) (not bm!164868) (not d!726229) (not b!2564790) (not b!2564817) (not b!2565114) (not bm!164855) (not d!726245) tp_is_empty!13101 (not b!2565029) (not d!726233) (not bm!164854) (not b!2564869) (not b!2564653) (not bm!164878) (not bm!164849) (not bm!164800) (not bm!164871) (not bm!164880) (not d!726303) (not bm!164850) (not d!726259) (not b!2565081) (not b!2564812) (not b!2565134) (not b!2565130) (not bm!164882) (not b!2565032) (not b!2564815) (not bm!164866) (not b!2565144) (not b!2564810) (not d!726237) (not d!726285) (not b!2565143) (not b!2565088) (not d!726295) (not b!2565027) (not b!2564651) (not bm!164870) (not b!2565089) (not d!726231) (not d!726299) (not bm!164779) (not b!2565025) (not bm!164769) (not d!726241))
(check-sat)
(get-model)

(assert (=> b!2564869 d!726229))

(declare-fun b!2565687 () Bool)

(declare-fun e!1619863 () Bool)

(declare-fun e!1619861 () Bool)

(assert (=> b!2565687 (= e!1619863 e!1619861)))

(declare-fun res!1079713 () Bool)

(assert (=> b!2565687 (=> (not res!1079713) (not e!1619861))))

(declare-fun lt!905210 () Bool)

(assert (=> b!2565687 (= res!1079713 (not lt!905210))))

(declare-fun bm!165016 () Bool)

(declare-fun call!165021 () Bool)

(assert (=> bm!165016 (= call!165021 (isEmpty!17046 (tail!4105 tl!4068)))))

(declare-fun b!2565689 () Bool)

(declare-fun res!1079712 () Bool)

(declare-fun e!1619860 () Bool)

(assert (=> b!2565689 (=> (not res!1079712) (not e!1619860))))

(assert (=> b!2565689 (= res!1079712 (isEmpty!17046 (tail!4105 (tail!4105 tl!4068))))))

(declare-fun b!2565690 () Bool)

(declare-fun e!1619862 () Bool)

(assert (=> b!2565690 (= e!1619862 (not lt!905210))))

(declare-fun b!2565691 () Bool)

(declare-fun e!1619865 () Bool)

(assert (=> b!2565691 (= e!1619865 (matchR!3568 (derivativeStep!2192 (derivativeStep!2192 lt!905119 (head!5830 tl!4068)) (head!5830 (tail!4105 tl!4068))) (tail!4105 (tail!4105 tl!4068))))))

(declare-fun b!2565692 () Bool)

(declare-fun res!1079710 () Bool)

(assert (=> b!2565692 (=> res!1079710 e!1619863)))

(assert (=> b!2565692 (= res!1079710 (not ((_ is ElementMatch!7623) (derivativeStep!2192 lt!905119 (head!5830 tl!4068)))))))

(assert (=> b!2565692 (= e!1619862 e!1619863)))

(declare-fun b!2565693 () Bool)

(assert (=> b!2565693 (= e!1619860 (= (head!5830 (tail!4105 tl!4068)) (c!412277 (derivativeStep!2192 lt!905119 (head!5830 tl!4068)))))))

(declare-fun b!2565694 () Bool)

(declare-fun e!1619864 () Bool)

(assert (=> b!2565694 (= e!1619864 (= lt!905210 call!165021))))

(declare-fun b!2565695 () Bool)

(declare-fun e!1619866 () Bool)

(assert (=> b!2565695 (= e!1619866 (not (= (head!5830 (tail!4105 tl!4068)) (c!412277 (derivativeStep!2192 lt!905119 (head!5830 tl!4068))))))))

(declare-fun b!2565696 () Bool)

(assert (=> b!2565696 (= e!1619865 (nullable!2540 (derivativeStep!2192 lt!905119 (head!5830 tl!4068))))))

(declare-fun b!2565697 () Bool)

(declare-fun res!1079714 () Bool)

(assert (=> b!2565697 (=> (not res!1079714) (not e!1619860))))

(assert (=> b!2565697 (= res!1079714 (not call!165021))))

(declare-fun b!2565698 () Bool)

(declare-fun res!1079717 () Bool)

(assert (=> b!2565698 (=> res!1079717 e!1619866)))

(assert (=> b!2565698 (= res!1079717 (not (isEmpty!17046 (tail!4105 (tail!4105 tl!4068)))))))

(declare-fun d!726455 () Bool)

(assert (=> d!726455 e!1619864))

(declare-fun c!412581 () Bool)

(assert (=> d!726455 (= c!412581 ((_ is EmptyExpr!7623) (derivativeStep!2192 lt!905119 (head!5830 tl!4068))))))

(assert (=> d!726455 (= lt!905210 e!1619865)))

(declare-fun c!412583 () Bool)

(assert (=> d!726455 (= c!412583 (isEmpty!17046 (tail!4105 tl!4068)))))

(assert (=> d!726455 (validRegex!3249 (derivativeStep!2192 lt!905119 (head!5830 tl!4068)))))

(assert (=> d!726455 (= (matchR!3568 (derivativeStep!2192 lt!905119 (head!5830 tl!4068)) (tail!4105 tl!4068)) lt!905210)))

(declare-fun b!2565688 () Bool)

(assert (=> b!2565688 (= e!1619861 e!1619866)))

(declare-fun res!1079711 () Bool)

(assert (=> b!2565688 (=> res!1079711 e!1619866)))

(assert (=> b!2565688 (= res!1079711 call!165021)))

(declare-fun b!2565699 () Bool)

(declare-fun res!1079715 () Bool)

(assert (=> b!2565699 (=> res!1079715 e!1619863)))

(assert (=> b!2565699 (= res!1079715 e!1619860)))

(declare-fun res!1079716 () Bool)

(assert (=> b!2565699 (=> (not res!1079716) (not e!1619860))))

(assert (=> b!2565699 (= res!1079716 lt!905210)))

(declare-fun b!2565700 () Bool)

(assert (=> b!2565700 (= e!1619864 e!1619862)))

(declare-fun c!412582 () Bool)

(assert (=> b!2565700 (= c!412582 ((_ is EmptyLang!7623) (derivativeStep!2192 lt!905119 (head!5830 tl!4068))))))

(assert (= (and d!726455 c!412583) b!2565696))

(assert (= (and d!726455 (not c!412583)) b!2565691))

(assert (= (and d!726455 c!412581) b!2565694))

(assert (= (and d!726455 (not c!412581)) b!2565700))

(assert (= (and b!2565700 c!412582) b!2565690))

(assert (= (and b!2565700 (not c!412582)) b!2565692))

(assert (= (and b!2565692 (not res!1079710)) b!2565699))

(assert (= (and b!2565699 res!1079716) b!2565697))

(assert (= (and b!2565697 res!1079714) b!2565689))

(assert (= (and b!2565689 res!1079712) b!2565693))

(assert (= (and b!2565699 (not res!1079715)) b!2565687))

(assert (= (and b!2565687 res!1079713) b!2565688))

(assert (= (and b!2565688 (not res!1079711)) b!2565698))

(assert (= (and b!2565698 (not res!1079717)) b!2565695))

(assert (= (or b!2565694 b!2565688 b!2565697) bm!165016))

(assert (=> b!2565691 m!2903407))

(declare-fun m!2904017 () Bool)

(assert (=> b!2565691 m!2904017))

(assert (=> b!2565691 m!2903441))

(assert (=> b!2565691 m!2904017))

(declare-fun m!2904019 () Bool)

(assert (=> b!2565691 m!2904019))

(assert (=> b!2565691 m!2903407))

(declare-fun m!2904021 () Bool)

(assert (=> b!2565691 m!2904021))

(assert (=> b!2565691 m!2904019))

(assert (=> b!2565691 m!2904021))

(declare-fun m!2904023 () Bool)

(assert (=> b!2565691 m!2904023))

(assert (=> b!2565689 m!2903407))

(assert (=> b!2565689 m!2904021))

(assert (=> b!2565689 m!2904021))

(declare-fun m!2904025 () Bool)

(assert (=> b!2565689 m!2904025))

(assert (=> b!2565695 m!2903407))

(assert (=> b!2565695 m!2904017))

(assert (=> bm!165016 m!2903407))

(assert (=> bm!165016 m!2903411))

(assert (=> d!726455 m!2903407))

(assert (=> d!726455 m!2903411))

(assert (=> d!726455 m!2903441))

(declare-fun m!2904027 () Bool)

(assert (=> d!726455 m!2904027))

(assert (=> b!2565696 m!2903441))

(declare-fun m!2904029 () Bool)

(assert (=> b!2565696 m!2904029))

(assert (=> b!2565698 m!2903407))

(assert (=> b!2565698 m!2904021))

(assert (=> b!2565698 m!2904021))

(assert (=> b!2565698 m!2904025))

(assert (=> b!2565693 m!2903407))

(assert (=> b!2565693 m!2904017))

(assert (=> b!2564766 d!726455))

(declare-fun bm!165017 () Bool)

(declare-fun call!165025 () Regex!7623)

(declare-fun call!165023 () Regex!7623)

(assert (=> bm!165017 (= call!165025 call!165023)))

(declare-fun b!2565701 () Bool)

(declare-fun e!1619871 () Regex!7623)

(declare-fun call!165024 () Regex!7623)

(assert (=> b!2565701 (= e!1619871 (Union!7623 call!165023 call!165024))))

(declare-fun b!2565702 () Bool)

(declare-fun e!1619867 () Regex!7623)

(assert (=> b!2565702 (= e!1619871 e!1619867)))

(declare-fun c!412587 () Bool)

(assert (=> b!2565702 (= c!412587 ((_ is Star!7623) lt!905119))))

(declare-fun b!2565704 () Bool)

(assert (=> b!2565704 (= e!1619867 (Concat!12319 call!165025 lt!905119))))

(declare-fun b!2565705 () Bool)

(declare-fun e!1619870 () Regex!7623)

(assert (=> b!2565705 (= e!1619870 (ite (= (head!5830 tl!4068) (c!412277 lt!905119)) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun e!1619869 () Regex!7623)

(declare-fun b!2565706 () Bool)

(declare-fun call!165022 () Regex!7623)

(assert (=> b!2565706 (= e!1619869 (Union!7623 (Concat!12319 call!165022 (regTwo!15758 lt!905119)) call!165024))))

(declare-fun b!2565707 () Bool)

(declare-fun e!1619868 () Regex!7623)

(assert (=> b!2565707 (= e!1619868 e!1619870)))

(declare-fun c!412586 () Bool)

(assert (=> b!2565707 (= c!412586 ((_ is ElementMatch!7623) lt!905119))))

(declare-fun b!2565708 () Bool)

(assert (=> b!2565708 (= e!1619868 EmptyLang!7623)))

(declare-fun b!2565709 () Bool)

(assert (=> b!2565709 (= e!1619869 (Union!7623 (Concat!12319 call!165022 (regTwo!15758 lt!905119)) EmptyLang!7623))))

(declare-fun b!2565710 () Bool)

(declare-fun c!412585 () Bool)

(assert (=> b!2565710 (= c!412585 (nullable!2540 (regOne!15758 lt!905119)))))

(assert (=> b!2565710 (= e!1619867 e!1619869)))

(declare-fun bm!165018 () Bool)

(assert (=> bm!165018 (= call!165022 call!165025)))

(declare-fun d!726457 () Bool)

(declare-fun lt!905211 () Regex!7623)

(assert (=> d!726457 (validRegex!3249 lt!905211)))

(assert (=> d!726457 (= lt!905211 e!1619868)))

(declare-fun c!412588 () Bool)

(assert (=> d!726457 (= c!412588 (or ((_ is EmptyExpr!7623) lt!905119) ((_ is EmptyLang!7623) lt!905119)))))

(assert (=> d!726457 (validRegex!3249 lt!905119)))

(assert (=> d!726457 (= (derivativeStep!2192 lt!905119 (head!5830 tl!4068)) lt!905211)))

(declare-fun b!2565703 () Bool)

(declare-fun c!412584 () Bool)

(assert (=> b!2565703 (= c!412584 ((_ is Union!7623) lt!905119))))

(assert (=> b!2565703 (= e!1619870 e!1619871)))

(declare-fun bm!165019 () Bool)

(assert (=> bm!165019 (= call!165024 (derivativeStep!2192 (ite c!412584 (regTwo!15759 lt!905119) (regTwo!15758 lt!905119)) (head!5830 tl!4068)))))

(declare-fun bm!165020 () Bool)

(assert (=> bm!165020 (= call!165023 (derivativeStep!2192 (ite c!412584 (regOne!15759 lt!905119) (ite c!412587 (reg!7952 lt!905119) (regOne!15758 lt!905119))) (head!5830 tl!4068)))))

(assert (= (and d!726457 c!412588) b!2565708))

(assert (= (and d!726457 (not c!412588)) b!2565707))

(assert (= (and b!2565707 c!412586) b!2565705))

(assert (= (and b!2565707 (not c!412586)) b!2565703))

(assert (= (and b!2565703 c!412584) b!2565701))

(assert (= (and b!2565703 (not c!412584)) b!2565702))

(assert (= (and b!2565702 c!412587) b!2565704))

(assert (= (and b!2565702 (not c!412587)) b!2565710))

(assert (= (and b!2565710 c!412585) b!2565706))

(assert (= (and b!2565710 (not c!412585)) b!2565709))

(assert (= (or b!2565706 b!2565709) bm!165018))

(assert (= (or b!2565704 bm!165018) bm!165017))

(assert (= (or b!2565701 b!2565706) bm!165019))

(assert (= (or b!2565701 bm!165017) bm!165020))

(declare-fun m!2904031 () Bool)

(assert (=> b!2565710 m!2904031))

(declare-fun m!2904033 () Bool)

(assert (=> d!726457 m!2904033))

(assert (=> d!726457 m!2903445))

(assert (=> bm!165019 m!2903403))

(declare-fun m!2904035 () Bool)

(assert (=> bm!165019 m!2904035))

(assert (=> bm!165020 m!2903403))

(declare-fun m!2904037 () Bool)

(assert (=> bm!165020 m!2904037))

(assert (=> b!2564766 d!726457))

(declare-fun d!726459 () Bool)

(assert (=> d!726459 (= (head!5830 tl!4068) (h!35008 tl!4068))))

(assert (=> b!2564766 d!726459))

(declare-fun d!726461 () Bool)

(assert (=> d!726461 (= (tail!4105 tl!4068) (t!211387 tl!4068))))

(assert (=> b!2564766 d!726461))

(declare-fun d!726463 () Bool)

(assert (not d!726463))

(assert (=> b!2565029 d!726463))

(assert (=> b!2564655 d!726463))

(declare-fun d!726465 () Bool)

(assert (not d!726465))

(assert (=> b!2565027 d!726465))

(declare-fun d!726467 () Bool)

(assert (not d!726467))

(assert (=> b!2565027 d!726467))

(assert (=> b!2565027 d!726463))

(declare-fun d!726469 () Bool)

(assert (not d!726469))

(assert (=> b!2565027 d!726469))

(assert (=> b!2564653 d!726463))

(declare-fun lt!905214 () List!29688)

(declare-fun e!1619876 () Bool)

(declare-fun b!2565722 () Bool)

(assert (=> b!2565722 (= e!1619876 (or (not (= (ite c!412427 call!164877 call!164878) Nil!29588)) (= lt!905214 (ite c!412427 call!164879 call!164877))))))

(declare-fun b!2565719 () Bool)

(declare-fun e!1619877 () List!29688)

(assert (=> b!2565719 (= e!1619877 (ite c!412427 call!164877 call!164878))))

(declare-fun b!2565720 () Bool)

(assert (=> b!2565720 (= e!1619877 (Cons!29588 (h!35008 (ite c!412427 call!164879 call!164877)) (++!7272 (t!211387 (ite c!412427 call!164879 call!164877)) (ite c!412427 call!164877 call!164878))))))

(declare-fun b!2565721 () Bool)

(declare-fun res!1079723 () Bool)

(assert (=> b!2565721 (=> (not res!1079723) (not e!1619876))))

(declare-fun size!22957 (List!29688) Int)

(assert (=> b!2565721 (= res!1079723 (= (size!22957 lt!905214) (+ (size!22957 (ite c!412427 call!164879 call!164877)) (size!22957 (ite c!412427 call!164877 call!164878)))))))

(declare-fun d!726471 () Bool)

(assert (=> d!726471 e!1619876))

(declare-fun res!1079722 () Bool)

(assert (=> d!726471 (=> (not res!1079722) (not e!1619876))))

(assert (=> d!726471 (= res!1079722 (= (content!4078 lt!905214) ((_ map or) (content!4078 (ite c!412427 call!164879 call!164877)) (content!4078 (ite c!412427 call!164877 call!164878)))))))

(assert (=> d!726471 (= lt!905214 e!1619877)))

(declare-fun c!412591 () Bool)

(assert (=> d!726471 (= c!412591 ((_ is Nil!29588) (ite c!412427 call!164879 call!164877)))))

(assert (=> d!726471 (= (++!7272 (ite c!412427 call!164879 call!164877) (ite c!412427 call!164877 call!164878)) lt!905214)))

(assert (= (and d!726471 c!412591) b!2565719))

(assert (= (and d!726471 (not c!412591)) b!2565720))

(assert (= (and d!726471 res!1079722) b!2565721))

(assert (= (and b!2565721 res!1079723) b!2565722))

(declare-fun m!2904039 () Bool)

(assert (=> b!2565720 m!2904039))

(declare-fun m!2904041 () Bool)

(assert (=> b!2565721 m!2904041))

(declare-fun m!2904043 () Bool)

(assert (=> b!2565721 m!2904043))

(declare-fun m!2904045 () Bool)

(assert (=> b!2565721 m!2904045))

(declare-fun m!2904047 () Bool)

(assert (=> d!726471 m!2904047))

(declare-fun m!2904049 () Bool)

(assert (=> d!726471 m!2904049))

(declare-fun m!2904051 () Bool)

(assert (=> d!726471 m!2904051))

(assert (=> bm!164873 d!726471))

(declare-fun d!726473 () Bool)

(assert (=> d!726473 (= (nullable!2540 (reg!7952 r!27340)) (nullableFct!765 (reg!7952 r!27340)))))

(declare-fun bs!469921 () Bool)

(assert (= bs!469921 d!726473))

(declare-fun m!2904053 () Bool)

(assert (=> bs!469921 m!2904053))

(assert (=> b!2565105 d!726473))

(declare-fun d!726475 () Bool)

(assert (=> d!726475 (= (isEmpty!17046 (tail!4105 tl!4068)) ((_ is Nil!29588) (tail!4105 tl!4068)))))

(assert (=> b!2564764 d!726475))

(assert (=> b!2564764 d!726461))

(declare-fun d!726477 () Bool)

(assert (=> d!726477 (= (isEmpty!17046 tl!4068) ((_ is Nil!29588) tl!4068))))

(assert (=> d!726245 d!726477))

(declare-fun b!2565723 () Bool)

(declare-fun e!1619881 () Bool)

(declare-fun e!1619879 () Bool)

(assert (=> b!2565723 (= e!1619881 e!1619879)))

(declare-fun res!1079727 () Bool)

(assert (=> b!2565723 (=> (not res!1079727) (not e!1619879))))

(declare-fun call!165028 () Bool)

(assert (=> b!2565723 (= res!1079727 call!165028)))

(declare-fun c!412593 () Bool)

(declare-fun bm!165021 () Bool)

(declare-fun call!165026 () Bool)

(declare-fun c!412592 () Bool)

(assert (=> bm!165021 (= call!165026 (validRegex!3249 (ite c!412592 (reg!7952 lt!905116) (ite c!412593 (regTwo!15759 lt!905116) (regOne!15758 lt!905116)))))))

(declare-fun b!2565724 () Bool)

(declare-fun e!1619882 () Bool)

(assert (=> b!2565724 (= e!1619882 call!165026)))

(declare-fun d!726479 () Bool)

(declare-fun res!1079726 () Bool)

(declare-fun e!1619883 () Bool)

(assert (=> d!726479 (=> res!1079726 e!1619883)))

(assert (=> d!726479 (= res!1079726 ((_ is ElementMatch!7623) lt!905116))))

(assert (=> d!726479 (= (validRegex!3249 lt!905116) e!1619883)))

(declare-fun b!2565725 () Bool)

(declare-fun e!1619878 () Bool)

(assert (=> b!2565725 (= e!1619878 call!165028)))

(declare-fun b!2565726 () Bool)

(declare-fun e!1619880 () Bool)

(assert (=> b!2565726 (= e!1619883 e!1619880)))

(assert (=> b!2565726 (= c!412592 ((_ is Star!7623) lt!905116))))

(declare-fun b!2565727 () Bool)

(assert (=> b!2565727 (= e!1619880 e!1619882)))

(declare-fun res!1079725 () Bool)

(assert (=> b!2565727 (= res!1079725 (not (nullable!2540 (reg!7952 lt!905116))))))

(assert (=> b!2565727 (=> (not res!1079725) (not e!1619882))))

(declare-fun b!2565728 () Bool)

(declare-fun e!1619884 () Bool)

(assert (=> b!2565728 (= e!1619880 e!1619884)))

(assert (=> b!2565728 (= c!412593 ((_ is Union!7623) lt!905116))))

(declare-fun bm!165022 () Bool)

(assert (=> bm!165022 (= call!165028 call!165026)))

(declare-fun bm!165023 () Bool)

(declare-fun call!165027 () Bool)

(assert (=> bm!165023 (= call!165027 (validRegex!3249 (ite c!412593 (regOne!15759 lt!905116) (regTwo!15758 lt!905116))))))

(declare-fun b!2565729 () Bool)

(declare-fun res!1079724 () Bool)

(assert (=> b!2565729 (=> (not res!1079724) (not e!1619878))))

(assert (=> b!2565729 (= res!1079724 call!165027)))

(assert (=> b!2565729 (= e!1619884 e!1619878)))

(declare-fun b!2565730 () Bool)

(assert (=> b!2565730 (= e!1619879 call!165027)))

(declare-fun b!2565731 () Bool)

(declare-fun res!1079728 () Bool)

(assert (=> b!2565731 (=> res!1079728 e!1619881)))

(assert (=> b!2565731 (= res!1079728 (not ((_ is Concat!12319) lt!905116)))))

(assert (=> b!2565731 (= e!1619884 e!1619881)))

(assert (= (and d!726479 (not res!1079726)) b!2565726))

(assert (= (and b!2565726 c!412592) b!2565727))

(assert (= (and b!2565726 (not c!412592)) b!2565728))

(assert (= (and b!2565727 res!1079725) b!2565724))

(assert (= (and b!2565728 c!412593) b!2565729))

(assert (= (and b!2565728 (not c!412593)) b!2565731))

(assert (= (and b!2565729 res!1079724) b!2565725))

(assert (= (and b!2565731 (not res!1079728)) b!2565723))

(assert (= (and b!2565723 res!1079727) b!2565730))

(assert (= (or b!2565729 b!2565730) bm!165023))

(assert (= (or b!2565725 b!2565723) bm!165022))

(assert (= (or b!2565724 bm!165022) bm!165021))

(declare-fun m!2904055 () Bool)

(assert (=> bm!165021 m!2904055))

(declare-fun m!2904057 () Bool)

(assert (=> b!2565727 m!2904057))

(declare-fun m!2904059 () Bool)

(assert (=> bm!165023 m!2904059))

(assert (=> d!726245 d!726479))

(assert (=> bm!164797 d!726477))

(declare-fun d!726481 () Bool)

(assert (not d!726481))

(assert (=> b!2565025 d!726481))

(assert (=> b!2565025 d!726469))

(declare-fun d!726483 () Bool)

(assert (not d!726483))

(assert (=> b!2564651 d!726483))

(declare-fun d!726485 () Bool)

(assert (not d!726485))

(assert (=> b!2564651 d!726485))

(assert (=> b!2564651 d!726463))

(assert (=> b!2564651 d!726469))

(declare-fun d!726487 () Bool)

(assert (=> d!726487 (= (isEmpty!17046 Nil!29588) true)))

(assert (=> bm!164855 d!726487))

(assert (=> b!2564649 d!726481))

(assert (=> b!2564649 d!726469))

(declare-fun bm!165024 () Bool)

(declare-fun call!165032 () Regex!7623)

(declare-fun call!165030 () Regex!7623)

(assert (=> bm!165024 (= call!165032 call!165030)))

(declare-fun b!2565732 () Bool)

(declare-fun e!1619889 () Regex!7623)

(declare-fun call!165031 () Regex!7623)

(assert (=> b!2565732 (= e!1619889 (Union!7623 call!165030 call!165031))))

(declare-fun b!2565733 () Bool)

(declare-fun e!1619885 () Regex!7623)

(assert (=> b!2565733 (= e!1619889 e!1619885)))

(declare-fun c!412597 () Bool)

(assert (=> b!2565733 (= c!412597 ((_ is Star!7623) (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun b!2565735 () Bool)

(assert (=> b!2565735 (= e!1619885 (Concat!12319 call!165032 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun b!2565736 () Bool)

(declare-fun e!1619888 () Regex!7623)

(assert (=> b!2565736 (= e!1619888 (ite (= c!14016 (c!412277 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun b!2565737 () Bool)

(declare-fun e!1619887 () Regex!7623)

(declare-fun call!165029 () Regex!7623)

(assert (=> b!2565737 (= e!1619887 (Union!7623 (Concat!12319 call!165029 (regTwo!15758 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) call!165031))))

(declare-fun b!2565738 () Bool)

(declare-fun e!1619886 () Regex!7623)

(assert (=> b!2565738 (= e!1619886 e!1619888)))

(declare-fun c!412596 () Bool)

(assert (=> b!2565738 (= c!412596 ((_ is ElementMatch!7623) (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun b!2565739 () Bool)

(assert (=> b!2565739 (= e!1619886 EmptyLang!7623)))

(declare-fun b!2565740 () Bool)

(assert (=> b!2565740 (= e!1619887 (Union!7623 (Concat!12319 call!165029 (regTwo!15758 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) EmptyLang!7623))))

(declare-fun b!2565741 () Bool)

(declare-fun c!412595 () Bool)

(assert (=> b!2565741 (= c!412595 (nullable!2540 (regOne!15758 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(assert (=> b!2565741 (= e!1619885 e!1619887)))

(declare-fun bm!165025 () Bool)

(assert (=> bm!165025 (= call!165029 call!165032)))

(declare-fun d!726489 () Bool)

(declare-fun lt!905215 () Regex!7623)

(assert (=> d!726489 (validRegex!3249 lt!905215)))

(assert (=> d!726489 (= lt!905215 e!1619886)))

(declare-fun c!412598 () Bool)

(assert (=> d!726489 (= c!412598 (or ((_ is EmptyExpr!7623) (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) ((_ is EmptyLang!7623) (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(assert (=> d!726489 (validRegex!3249 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))

(assert (=> d!726489 (= (derivativeStep!2192 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) c!14016) lt!905215)))

(declare-fun b!2565734 () Bool)

(declare-fun c!412594 () Bool)

(assert (=> b!2565734 (= c!412594 ((_ is Union!7623) (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(assert (=> b!2565734 (= e!1619888 e!1619889)))

(declare-fun bm!165026 () Bool)

(assert (=> bm!165026 (= call!165031 (derivativeStep!2192 (ite c!412594 (regTwo!15759 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) (regTwo!15758 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) c!14016))))

(declare-fun bm!165027 () Bool)

(assert (=> bm!165027 (= call!165030 (derivativeStep!2192 (ite c!412594 (regOne!15759 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) (ite c!412597 (reg!7952 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) (regOne!15758 (ite c!412395 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412398 (reg!7952 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))) c!14016))))

(assert (= (and d!726489 c!412598) b!2565739))

(assert (= (and d!726489 (not c!412598)) b!2565738))

(assert (= (and b!2565738 c!412596) b!2565736))

(assert (= (and b!2565738 (not c!412596)) b!2565734))

(assert (= (and b!2565734 c!412594) b!2565732))

(assert (= (and b!2565734 (not c!412594)) b!2565733))

(assert (= (and b!2565733 c!412597) b!2565735))

(assert (= (and b!2565733 (not c!412597)) b!2565741))

(assert (= (and b!2565741 c!412595) b!2565737))

(assert (= (and b!2565741 (not c!412595)) b!2565740))

(assert (= (or b!2565737 b!2565740) bm!165025))

(assert (= (or b!2565735 bm!165025) bm!165024))

(assert (= (or b!2565732 b!2565737) bm!165026))

(assert (= (or b!2565732 bm!165024) bm!165027))

(declare-fun m!2904061 () Bool)

(assert (=> b!2565741 m!2904061))

(declare-fun m!2904063 () Bool)

(assert (=> d!726489 m!2904063))

(declare-fun m!2904065 () Bool)

(assert (=> d!726489 m!2904065))

(declare-fun m!2904067 () Bool)

(assert (=> bm!165026 m!2904067))

(declare-fun m!2904069 () Bool)

(assert (=> bm!165027 m!2904069))

(assert (=> bm!164850 d!726489))

(declare-fun b!2565742 () Bool)

(declare-fun e!1619893 () Bool)

(declare-fun e!1619891 () Bool)

(assert (=> b!2565742 (= e!1619893 e!1619891)))

(declare-fun res!1079732 () Bool)

(assert (=> b!2565742 (=> (not res!1079732) (not e!1619891))))

(declare-fun call!165035 () Bool)

(assert (=> b!2565742 (= res!1079732 call!165035)))

(declare-fun c!412599 () Bool)

(declare-fun call!165033 () Bool)

(declare-fun bm!165028 () Bool)

(declare-fun c!412600 () Bool)

(assert (=> bm!165028 (= call!165033 (validRegex!3249 (ite c!412599 (reg!7952 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))) (ite c!412600 (regTwo!15759 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))) (regOne!15758 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))))))

(declare-fun b!2565743 () Bool)

(declare-fun e!1619894 () Bool)

(assert (=> b!2565743 (= e!1619894 call!165033)))

(declare-fun d!726491 () Bool)

(declare-fun res!1079731 () Bool)

(declare-fun e!1619895 () Bool)

(assert (=> d!726491 (=> res!1079731 e!1619895)))

(assert (=> d!726491 (= res!1079731 ((_ is ElementMatch!7623) (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))

(assert (=> d!726491 (= (validRegex!3249 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))) e!1619895)))

(declare-fun b!2565744 () Bool)

(declare-fun e!1619890 () Bool)

(assert (=> b!2565744 (= e!1619890 call!165035)))

(declare-fun b!2565745 () Bool)

(declare-fun e!1619892 () Bool)

(assert (=> b!2565745 (= e!1619895 e!1619892)))

(assert (=> b!2565745 (= c!412599 ((_ is Star!7623) (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))

(declare-fun b!2565746 () Bool)

(assert (=> b!2565746 (= e!1619892 e!1619894)))

(declare-fun res!1079730 () Bool)

(assert (=> b!2565746 (= res!1079730 (not (nullable!2540 (reg!7952 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))))

(assert (=> b!2565746 (=> (not res!1079730) (not e!1619894))))

(declare-fun b!2565747 () Bool)

(declare-fun e!1619896 () Bool)

(assert (=> b!2565747 (= e!1619892 e!1619896)))

(assert (=> b!2565747 (= c!412600 ((_ is Union!7623) (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))

(declare-fun bm!165029 () Bool)

(assert (=> bm!165029 (= call!165035 call!165033)))

(declare-fun bm!165030 () Bool)

(declare-fun call!165034 () Bool)

(assert (=> bm!165030 (= call!165034 (validRegex!3249 (ite c!412600 (regOne!15759 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))) (regTwo!15758 (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))))

(declare-fun b!2565748 () Bool)

(declare-fun res!1079729 () Bool)

(assert (=> b!2565748 (=> (not res!1079729) (not e!1619890))))

(assert (=> b!2565748 (= res!1079729 call!165034)))

(assert (=> b!2565748 (= e!1619896 e!1619890)))

(declare-fun b!2565749 () Bool)

(assert (=> b!2565749 (= e!1619891 call!165034)))

(declare-fun b!2565750 () Bool)

(declare-fun res!1079733 () Bool)

(assert (=> b!2565750 (=> res!1079733 e!1619893)))

(assert (=> b!2565750 (= res!1079733 (not ((_ is Concat!12319) (ite c!412436 (reg!7952 r!27340) (ite c!412437 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))))

(assert (=> b!2565750 (= e!1619896 e!1619893)))

(assert (= (and d!726491 (not res!1079731)) b!2565745))

(assert (= (and b!2565745 c!412599) b!2565746))

(assert (= (and b!2565745 (not c!412599)) b!2565747))

(assert (= (and b!2565746 res!1079730) b!2565743))

(assert (= (and b!2565747 c!412600) b!2565748))

(assert (= (and b!2565747 (not c!412600)) b!2565750))

(assert (= (and b!2565748 res!1079729) b!2565744))

(assert (= (and b!2565750 (not res!1079733)) b!2565742))

(assert (= (and b!2565742 res!1079732) b!2565749))

(assert (= (or b!2565748 b!2565749) bm!165030))

(assert (= (or b!2565744 b!2565742) bm!165029))

(assert (= (or b!2565743 bm!165029) bm!165028))

(declare-fun m!2904071 () Bool)

(assert (=> bm!165028 m!2904071))

(declare-fun m!2904073 () Bool)

(assert (=> b!2565746 m!2904073))

(declare-fun m!2904075 () Bool)

(assert (=> bm!165030 m!2904075))

(assert (=> bm!164880 d!726491))

(assert (=> b!2564716 d!726459))

(assert (=> bm!164769 d!726487))

(assert (=> b!2564714 d!726459))

(declare-fun b!2565765 () Bool)

(declare-fun e!1619911 () Bool)

(declare-fun e!1619910 () Bool)

(assert (=> b!2565765 (= e!1619911 e!1619910)))

(declare-fun res!1079747 () Bool)

(declare-fun call!165041 () Bool)

(assert (=> b!2565765 (= res!1079747 call!165041)))

(assert (=> b!2565765 (=> res!1079747 e!1619910)))

(declare-fun b!2565766 () Bool)

(declare-fun call!165040 () Bool)

(assert (=> b!2565766 (= e!1619910 call!165040)))

(declare-fun d!726493 () Bool)

(declare-fun res!1079745 () Bool)

(declare-fun e!1619909 () Bool)

(assert (=> d!726493 (=> res!1079745 e!1619909)))

(assert (=> d!726493 (= res!1079745 ((_ is EmptyExpr!7623) lt!905114))))

(assert (=> d!726493 (= (nullableFct!765 lt!905114) e!1619909)))

(declare-fun b!2565767 () Bool)

(declare-fun e!1619913 () Bool)

(assert (=> b!2565767 (= e!1619913 call!165041)))

(declare-fun b!2565768 () Bool)

(assert (=> b!2565768 (= e!1619911 e!1619913)))

(declare-fun res!1079746 () Bool)

(assert (=> b!2565768 (= res!1079746 call!165040)))

(assert (=> b!2565768 (=> (not res!1079746) (not e!1619913))))

(declare-fun bm!165035 () Bool)

(declare-fun c!412603 () Bool)

(assert (=> bm!165035 (= call!165041 (nullable!2540 (ite c!412603 (regOne!15759 lt!905114) (regTwo!15758 lt!905114))))))

(declare-fun bm!165036 () Bool)

(assert (=> bm!165036 (= call!165040 (nullable!2540 (ite c!412603 (regTwo!15759 lt!905114) (regOne!15758 lt!905114))))))

(declare-fun b!2565769 () Bool)

(declare-fun e!1619914 () Bool)

(assert (=> b!2565769 (= e!1619909 e!1619914)))

(declare-fun res!1079748 () Bool)

(assert (=> b!2565769 (=> (not res!1079748) (not e!1619914))))

(assert (=> b!2565769 (= res!1079748 (and (not ((_ is EmptyLang!7623) lt!905114)) (not ((_ is ElementMatch!7623) lt!905114))))))

(declare-fun b!2565770 () Bool)

(declare-fun e!1619912 () Bool)

(assert (=> b!2565770 (= e!1619914 e!1619912)))

(declare-fun res!1079744 () Bool)

(assert (=> b!2565770 (=> res!1079744 e!1619912)))

(assert (=> b!2565770 (= res!1079744 ((_ is Star!7623) lt!905114))))

(declare-fun b!2565771 () Bool)

(assert (=> b!2565771 (= e!1619912 e!1619911)))

(assert (=> b!2565771 (= c!412603 ((_ is Union!7623) lt!905114))))

(assert (= (and d!726493 (not res!1079745)) b!2565769))

(assert (= (and b!2565769 res!1079748) b!2565770))

(assert (= (and b!2565770 (not res!1079744)) b!2565771))

(assert (= (and b!2565771 c!412603) b!2565765))

(assert (= (and b!2565771 (not c!412603)) b!2565768))

(assert (= (and b!2565765 (not res!1079747)) b!2565766))

(assert (= (and b!2565768 res!1079746) b!2565767))

(assert (= (or b!2565766 b!2565768) bm!165036))

(assert (= (or b!2565765 b!2565767) bm!165035))

(declare-fun m!2904077 () Bool)

(assert (=> bm!165035 m!2904077))

(declare-fun m!2904079 () Bool)

(assert (=> bm!165036 m!2904079))

(assert (=> d!726233 d!726493))

(declare-fun d!726495 () Bool)

(declare-fun lt!905216 () Regex!7623)

(assert (=> d!726495 (validRegex!3249 lt!905216)))

(declare-fun e!1619915 () Regex!7623)

(assert (=> d!726495 (= lt!905216 e!1619915)))

(declare-fun c!412604 () Bool)

(assert (=> d!726495 (= c!412604 ((_ is Cons!29588) (t!211387 tl!4068)))))

(assert (=> d!726495 (validRegex!3249 (derivativeStep!2192 (derivativeStep!2192 r!27340 c!14016) (h!35008 tl!4068)))))

(assert (=> d!726495 (= (derivative!318 (derivativeStep!2192 (derivativeStep!2192 r!27340 c!14016) (h!35008 tl!4068)) (t!211387 tl!4068)) lt!905216)))

(declare-fun b!2565772 () Bool)

(assert (=> b!2565772 (= e!1619915 (derivative!318 (derivativeStep!2192 (derivativeStep!2192 (derivativeStep!2192 r!27340 c!14016) (h!35008 tl!4068)) (h!35008 (t!211387 tl!4068))) (t!211387 (t!211387 tl!4068))))))

(declare-fun b!2565773 () Bool)

(assert (=> b!2565773 (= e!1619915 (derivativeStep!2192 (derivativeStep!2192 r!27340 c!14016) (h!35008 tl!4068)))))

(assert (= (and d!726495 c!412604) b!2565772))

(assert (= (and d!726495 (not c!412604)) b!2565773))

(declare-fun m!2904081 () Bool)

(assert (=> d!726495 m!2904081))

(assert (=> d!726495 m!2903629))

(declare-fun m!2904083 () Bool)

(assert (=> d!726495 m!2904083))

(assert (=> b!2565772 m!2903629))

(declare-fun m!2904085 () Bool)

(assert (=> b!2565772 m!2904085))

(assert (=> b!2565772 m!2904085))

(declare-fun m!2904087 () Bool)

(assert (=> b!2565772 m!2904087))

(assert (=> b!2565089 d!726495))

(declare-fun bm!165037 () Bool)

(declare-fun call!165045 () Regex!7623)

(declare-fun call!165043 () Regex!7623)

(assert (=> bm!165037 (= call!165045 call!165043)))

(declare-fun b!2565774 () Bool)

(declare-fun e!1619920 () Regex!7623)

(declare-fun call!165044 () Regex!7623)

(assert (=> b!2565774 (= e!1619920 (Union!7623 call!165043 call!165044))))

(declare-fun b!2565775 () Bool)

(declare-fun e!1619916 () Regex!7623)

(assert (=> b!2565775 (= e!1619920 e!1619916)))

(declare-fun c!412608 () Bool)

(assert (=> b!2565775 (= c!412608 ((_ is Star!7623) (derivativeStep!2192 r!27340 c!14016)))))

(declare-fun b!2565777 () Bool)

(assert (=> b!2565777 (= e!1619916 (Concat!12319 call!165045 (derivativeStep!2192 r!27340 c!14016)))))

(declare-fun b!2565778 () Bool)

(declare-fun e!1619919 () Regex!7623)

(assert (=> b!2565778 (= e!1619919 (ite (= (h!35008 tl!4068) (c!412277 (derivativeStep!2192 r!27340 c!14016))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun b!2565779 () Bool)

(declare-fun call!165042 () Regex!7623)

(declare-fun e!1619918 () Regex!7623)

(assert (=> b!2565779 (= e!1619918 (Union!7623 (Concat!12319 call!165042 (regTwo!15758 (derivativeStep!2192 r!27340 c!14016))) call!165044))))

(declare-fun b!2565780 () Bool)

(declare-fun e!1619917 () Regex!7623)

(assert (=> b!2565780 (= e!1619917 e!1619919)))

(declare-fun c!412607 () Bool)

(assert (=> b!2565780 (= c!412607 ((_ is ElementMatch!7623) (derivativeStep!2192 r!27340 c!14016)))))

(declare-fun b!2565781 () Bool)

(assert (=> b!2565781 (= e!1619917 EmptyLang!7623)))

(declare-fun b!2565782 () Bool)

(assert (=> b!2565782 (= e!1619918 (Union!7623 (Concat!12319 call!165042 (regTwo!15758 (derivativeStep!2192 r!27340 c!14016))) EmptyLang!7623))))

(declare-fun b!2565783 () Bool)

(declare-fun c!412606 () Bool)

(assert (=> b!2565783 (= c!412606 (nullable!2540 (regOne!15758 (derivativeStep!2192 r!27340 c!14016))))))

(assert (=> b!2565783 (= e!1619916 e!1619918)))

(declare-fun bm!165038 () Bool)

(assert (=> bm!165038 (= call!165042 call!165045)))

(declare-fun d!726497 () Bool)

(declare-fun lt!905217 () Regex!7623)

(assert (=> d!726497 (validRegex!3249 lt!905217)))

(assert (=> d!726497 (= lt!905217 e!1619917)))

(declare-fun c!412609 () Bool)

(assert (=> d!726497 (= c!412609 (or ((_ is EmptyExpr!7623) (derivativeStep!2192 r!27340 c!14016)) ((_ is EmptyLang!7623) (derivativeStep!2192 r!27340 c!14016))))))

(assert (=> d!726497 (validRegex!3249 (derivativeStep!2192 r!27340 c!14016))))

(assert (=> d!726497 (= (derivativeStep!2192 (derivativeStep!2192 r!27340 c!14016) (h!35008 tl!4068)) lt!905217)))

(declare-fun b!2565776 () Bool)

(declare-fun c!412605 () Bool)

(assert (=> b!2565776 (= c!412605 ((_ is Union!7623) (derivativeStep!2192 r!27340 c!14016)))))

(assert (=> b!2565776 (= e!1619919 e!1619920)))

(declare-fun bm!165039 () Bool)

(assert (=> bm!165039 (= call!165044 (derivativeStep!2192 (ite c!412605 (regTwo!15759 (derivativeStep!2192 r!27340 c!14016)) (regTwo!15758 (derivativeStep!2192 r!27340 c!14016))) (h!35008 tl!4068)))))

(declare-fun bm!165040 () Bool)

(assert (=> bm!165040 (= call!165043 (derivativeStep!2192 (ite c!412605 (regOne!15759 (derivativeStep!2192 r!27340 c!14016)) (ite c!412608 (reg!7952 (derivativeStep!2192 r!27340 c!14016)) (regOne!15758 (derivativeStep!2192 r!27340 c!14016)))) (h!35008 tl!4068)))))

(assert (= (and d!726497 c!412609) b!2565781))

(assert (= (and d!726497 (not c!412609)) b!2565780))

(assert (= (and b!2565780 c!412607) b!2565778))

(assert (= (and b!2565780 (not c!412607)) b!2565776))

(assert (= (and b!2565776 c!412605) b!2565774))

(assert (= (and b!2565776 (not c!412605)) b!2565775))

(assert (= (and b!2565775 c!412608) b!2565777))

(assert (= (and b!2565775 (not c!412608)) b!2565783))

(assert (= (and b!2565783 c!412606) b!2565779))

(assert (= (and b!2565783 (not c!412606)) b!2565782))

(assert (= (or b!2565779 b!2565782) bm!165038))

(assert (= (or b!2565777 bm!165038) bm!165037))

(assert (= (or b!2565774 b!2565779) bm!165039))

(assert (= (or b!2565774 bm!165037) bm!165040))

(declare-fun m!2904089 () Bool)

(assert (=> b!2565783 m!2904089))

(declare-fun m!2904091 () Bool)

(assert (=> d!726497 m!2904091))

(assert (=> d!726497 m!2903301))

(assert (=> d!726497 m!2903627))

(declare-fun m!2904093 () Bool)

(assert (=> bm!165039 m!2904093))

(declare-fun m!2904095 () Bool)

(assert (=> bm!165040 m!2904095))

(assert (=> b!2565089 d!726497))

(declare-fun d!726499 () Bool)

(assert (=> d!726499 (= (nullable!2540 (reg!7952 (regTwo!15758 r!27340))) (nullableFct!765 (reg!7952 (regTwo!15758 r!27340))))))

(declare-fun bs!469922 () Bool)

(assert (= bs!469922 d!726499))

(declare-fun m!2904097 () Bool)

(assert (=> bs!469922 m!2904097))

(assert (=> b!2564703 d!726499))

(assert (=> d!726295 d!726289))

(assert (=> d!726295 d!726291))

(declare-fun d!726501 () Bool)

(assert (=> d!726501 (contains!5307 (firstChars!98 (regTwo!15758 r!27340)) c!14016)))

(assert (=> d!726501 true))

(declare-fun _$136!118 () Unit!43431)

(assert (=> d!726501 (= (choose!15127 (regTwo!15758 r!27340) c!14016 tl!4068) _$136!118)))

(declare-fun bs!469923 () Bool)

(assert (= bs!469923 d!726501))

(assert (=> bs!469923 m!2903311))

(assert (=> bs!469923 m!2903311))

(assert (=> bs!469923 m!2903313))

(assert (=> d!726295 d!726501))

(assert (=> d!726295 d!726223))

(declare-fun d!726503 () Bool)

(declare-fun lt!905218 () Bool)

(assert (=> d!726503 (= lt!905218 (select (content!4078 (t!211387 (firstChars!98 r!27340))) c!14016))))

(declare-fun e!1619921 () Bool)

(assert (=> d!726503 (= lt!905218 e!1619921)))

(declare-fun res!1079749 () Bool)

(assert (=> d!726503 (=> (not res!1079749) (not e!1619921))))

(assert (=> d!726503 (= res!1079749 ((_ is Cons!29588) (t!211387 (firstChars!98 r!27340))))))

(assert (=> d!726503 (= (contains!5307 (t!211387 (firstChars!98 r!27340)) c!14016) lt!905218)))

(declare-fun b!2565784 () Bool)

(declare-fun e!1619922 () Bool)

(assert (=> b!2565784 (= e!1619921 e!1619922)))

(declare-fun res!1079750 () Bool)

(assert (=> b!2565784 (=> res!1079750 e!1619922)))

(assert (=> b!2565784 (= res!1079750 (= (h!35008 (t!211387 (firstChars!98 r!27340))) c!14016))))

(declare-fun b!2565785 () Bool)

(assert (=> b!2565785 (= e!1619922 (contains!5307 (t!211387 (t!211387 (firstChars!98 r!27340))) c!14016))))

(assert (= (and d!726503 res!1079749) b!2565784))

(assert (= (and b!2565784 (not res!1079750)) b!2565785))

(declare-fun m!2904099 () Bool)

(assert (=> d!726503 m!2904099))

(declare-fun m!2904101 () Bool)

(assert (=> d!726503 m!2904101))

(declare-fun m!2904103 () Bool)

(assert (=> b!2565785 m!2904103))

(assert (=> b!2565088 d!726503))

(declare-fun bm!165041 () Bool)

(declare-fun call!165049 () Regex!7623)

(declare-fun call!165047 () Regex!7623)

(assert (=> bm!165041 (= call!165049 call!165047)))

(declare-fun b!2565786 () Bool)

(declare-fun e!1619927 () Regex!7623)

(declare-fun call!165048 () Regex!7623)

(assert (=> b!2565786 (= e!1619927 (Union!7623 call!165047 call!165048))))

(declare-fun b!2565787 () Bool)

(declare-fun e!1619923 () Regex!7623)

(assert (=> b!2565787 (= e!1619927 e!1619923)))

(declare-fun c!412614 () Bool)

(assert (=> b!2565787 (= c!412614 ((_ is Star!7623) (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))))))

(declare-fun b!2565789 () Bool)

(assert (=> b!2565789 (= e!1619923 (Concat!12319 call!165049 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))))))

(declare-fun b!2565790 () Bool)

(declare-fun e!1619926 () Regex!7623)

(assert (=> b!2565790 (= e!1619926 (ite (= c!14016 (c!412277 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun call!165046 () Regex!7623)

(declare-fun e!1619925 () Regex!7623)

(declare-fun b!2565791 () Bool)

(assert (=> b!2565791 (= e!1619925 (Union!7623 (Concat!12319 call!165046 (regTwo!15758 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))) call!165048))))

(declare-fun b!2565792 () Bool)

(declare-fun e!1619924 () Regex!7623)

(assert (=> b!2565792 (= e!1619924 e!1619926)))

(declare-fun c!412613 () Bool)

(assert (=> b!2565792 (= c!412613 ((_ is ElementMatch!7623) (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))))))

(declare-fun b!2565793 () Bool)

(assert (=> b!2565793 (= e!1619924 EmptyLang!7623)))

(declare-fun b!2565794 () Bool)

(assert (=> b!2565794 (= e!1619925 (Union!7623 (Concat!12319 call!165046 (regTwo!15758 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))) EmptyLang!7623))))

(declare-fun b!2565795 () Bool)

(declare-fun c!412612 () Bool)

(assert (=> b!2565795 (= c!412612 (nullable!2540 (regOne!15758 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))))))

(assert (=> b!2565795 (= e!1619923 e!1619925)))

(declare-fun bm!165042 () Bool)

(assert (=> bm!165042 (= call!165046 call!165049)))

(declare-fun d!726505 () Bool)

(declare-fun lt!905219 () Regex!7623)

(assert (=> d!726505 (validRegex!3249 lt!905219)))

(assert (=> d!726505 (= lt!905219 e!1619924)))

(declare-fun c!412615 () Bool)

(assert (=> d!726505 (= c!412615 (or ((_ is EmptyExpr!7623) (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))) ((_ is EmptyLang!7623) (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))))))

(assert (=> d!726505 (validRegex!3249 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))))

(assert (=> d!726505 (= (derivativeStep!2192 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)) c!14016) lt!905219)))

(declare-fun b!2565788 () Bool)

(declare-fun c!412611 () Bool)

(assert (=> b!2565788 (= c!412611 ((_ is Union!7623) (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))))))

(assert (=> b!2565788 (= e!1619926 e!1619927)))

(declare-fun bm!165043 () Bool)

(assert (=> bm!165043 (= call!165048 (derivativeStep!2192 (ite c!412611 (regTwo!15759 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))) (regTwo!15758 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340)))) c!14016))))

(declare-fun bm!165044 () Bool)

(assert (=> bm!165044 (= call!165047 (derivativeStep!2192 (ite c!412611 (regOne!15759 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))) (ite c!412614 (reg!7952 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))) (regOne!15758 (ite c!412431 (regTwo!15759 r!27340) (regTwo!15758 r!27340))))) c!14016))))

(assert (= (and d!726505 c!412615) b!2565793))

(assert (= (and d!726505 (not c!412615)) b!2565792))

(assert (= (and b!2565792 c!412613) b!2565790))

(assert (= (and b!2565792 (not c!412613)) b!2565788))

(assert (= (and b!2565788 c!412611) b!2565786))

(assert (= (and b!2565788 (not c!412611)) b!2565787))

(assert (= (and b!2565787 c!412614) b!2565789))

(assert (= (and b!2565787 (not c!412614)) b!2565795))

(assert (= (and b!2565795 c!412612) b!2565791))

(assert (= (and b!2565795 (not c!412612)) b!2565794))

(assert (= (or b!2565791 b!2565794) bm!165042))

(assert (= (or b!2565789 bm!165042) bm!165041))

(assert (= (or b!2565786 b!2565791) bm!165043))

(assert (= (or b!2565786 bm!165041) bm!165044))

(declare-fun m!2904105 () Bool)

(assert (=> b!2565795 m!2904105))

(declare-fun m!2904107 () Bool)

(assert (=> d!726505 m!2904107))

(declare-fun m!2904109 () Bool)

(assert (=> d!726505 m!2904109))

(declare-fun m!2904111 () Bool)

(assert (=> bm!165043 m!2904111))

(declare-fun m!2904113 () Bool)

(assert (=> bm!165044 m!2904113))

(assert (=> bm!164878 d!726505))

(assert (=> b!2564817 d!726475))

(assert (=> b!2564817 d!726461))

(assert (=> d!726229 d!726477))

(declare-fun b!2565796 () Bool)

(declare-fun e!1619931 () Bool)

(declare-fun e!1619929 () Bool)

(assert (=> b!2565796 (= e!1619931 e!1619929)))

(declare-fun res!1079754 () Bool)

(assert (=> b!2565796 (=> (not res!1079754) (not e!1619929))))

(declare-fun call!165052 () Bool)

(assert (=> b!2565796 (= res!1079754 call!165052)))

(declare-fun bm!165045 () Bool)

(declare-fun c!412617 () Bool)

(declare-fun c!412616 () Bool)

(declare-fun call!165050 () Bool)

(assert (=> bm!165045 (= call!165050 (validRegex!3249 (ite c!412616 (reg!7952 lt!905122) (ite c!412617 (regTwo!15759 lt!905122) (regOne!15758 lt!905122)))))))

(declare-fun b!2565797 () Bool)

(declare-fun e!1619932 () Bool)

(assert (=> b!2565797 (= e!1619932 call!165050)))

(declare-fun d!726507 () Bool)

(declare-fun res!1079753 () Bool)

(declare-fun e!1619933 () Bool)

(assert (=> d!726507 (=> res!1079753 e!1619933)))

(assert (=> d!726507 (= res!1079753 ((_ is ElementMatch!7623) lt!905122))))

(assert (=> d!726507 (= (validRegex!3249 lt!905122) e!1619933)))

(declare-fun b!2565798 () Bool)

(declare-fun e!1619928 () Bool)

(assert (=> b!2565798 (= e!1619928 call!165052)))

(declare-fun b!2565799 () Bool)

(declare-fun e!1619930 () Bool)

(assert (=> b!2565799 (= e!1619933 e!1619930)))

(assert (=> b!2565799 (= c!412616 ((_ is Star!7623) lt!905122))))

(declare-fun b!2565800 () Bool)

(assert (=> b!2565800 (= e!1619930 e!1619932)))

(declare-fun res!1079752 () Bool)

(assert (=> b!2565800 (= res!1079752 (not (nullable!2540 (reg!7952 lt!905122))))))

(assert (=> b!2565800 (=> (not res!1079752) (not e!1619932))))

(declare-fun b!2565801 () Bool)

(declare-fun e!1619934 () Bool)

(assert (=> b!2565801 (= e!1619930 e!1619934)))

(assert (=> b!2565801 (= c!412617 ((_ is Union!7623) lt!905122))))

(declare-fun bm!165046 () Bool)

(assert (=> bm!165046 (= call!165052 call!165050)))

(declare-fun bm!165047 () Bool)

(declare-fun call!165051 () Bool)

(assert (=> bm!165047 (= call!165051 (validRegex!3249 (ite c!412617 (regOne!15759 lt!905122) (regTwo!15758 lt!905122))))))

(declare-fun b!2565802 () Bool)

(declare-fun res!1079751 () Bool)

(assert (=> b!2565802 (=> (not res!1079751) (not e!1619928))))

(assert (=> b!2565802 (= res!1079751 call!165051)))

(assert (=> b!2565802 (= e!1619934 e!1619928)))

(declare-fun b!2565803 () Bool)

(assert (=> b!2565803 (= e!1619929 call!165051)))

(declare-fun b!2565804 () Bool)

(declare-fun res!1079755 () Bool)

(assert (=> b!2565804 (=> res!1079755 e!1619931)))

(assert (=> b!2565804 (= res!1079755 (not ((_ is Concat!12319) lt!905122)))))

(assert (=> b!2565804 (= e!1619934 e!1619931)))

(assert (= (and d!726507 (not res!1079753)) b!2565799))

(assert (= (and b!2565799 c!412616) b!2565800))

(assert (= (and b!2565799 (not c!412616)) b!2565801))

(assert (= (and b!2565800 res!1079752) b!2565797))

(assert (= (and b!2565801 c!412617) b!2565802))

(assert (= (and b!2565801 (not c!412617)) b!2565804))

(assert (= (and b!2565802 res!1079751) b!2565798))

(assert (= (and b!2565804 (not res!1079755)) b!2565796))

(assert (= (and b!2565796 res!1079754) b!2565803))

(assert (= (or b!2565802 b!2565803) bm!165047))

(assert (= (or b!2565798 b!2565796) bm!165046))

(assert (= (or b!2565797 bm!165046) bm!165045))

(declare-fun m!2904115 () Bool)

(assert (=> bm!165045 m!2904115))

(declare-fun m!2904117 () Bool)

(assert (=> b!2565800 m!2904117))

(declare-fun m!2904119 () Bool)

(assert (=> bm!165047 m!2904119))

(assert (=> d!726229 d!726507))

(declare-fun d!726509 () Bool)

(assert (=> d!726509 (= (nullable!2540 lt!905116) (nullableFct!765 lt!905116))))

(declare-fun bs!469924 () Bool)

(assert (= bs!469924 d!726509))

(declare-fun m!2904121 () Bool)

(assert (=> bs!469924 m!2904121))

(assert (=> b!2564815 d!726509))

(assert (=> d!726287 d!726487))

(declare-fun b!2565805 () Bool)

(declare-fun e!1619938 () Bool)

(declare-fun e!1619936 () Bool)

(assert (=> b!2565805 (= e!1619938 e!1619936)))

(declare-fun res!1079759 () Bool)

(assert (=> b!2565805 (=> (not res!1079759) (not e!1619936))))

(declare-fun call!165055 () Bool)

(assert (=> b!2565805 (= res!1079759 call!165055)))

(declare-fun c!412619 () Bool)

(declare-fun bm!165048 () Bool)

(declare-fun c!412618 () Bool)

(declare-fun call!165053 () Bool)

(assert (=> bm!165048 (= call!165053 (validRegex!3249 (ite c!412618 (reg!7952 (derivative!318 lt!905116 tl!4068)) (ite c!412619 (regTwo!15759 (derivative!318 lt!905116 tl!4068)) (regOne!15758 (derivative!318 lt!905116 tl!4068))))))))

(declare-fun b!2565806 () Bool)

(declare-fun e!1619939 () Bool)

(assert (=> b!2565806 (= e!1619939 call!165053)))

(declare-fun d!726511 () Bool)

(declare-fun res!1079758 () Bool)

(declare-fun e!1619940 () Bool)

(assert (=> d!726511 (=> res!1079758 e!1619940)))

(assert (=> d!726511 (= res!1079758 ((_ is ElementMatch!7623) (derivative!318 lt!905116 tl!4068)))))

(assert (=> d!726511 (= (validRegex!3249 (derivative!318 lt!905116 tl!4068)) e!1619940)))

(declare-fun b!2565807 () Bool)

(declare-fun e!1619935 () Bool)

(assert (=> b!2565807 (= e!1619935 call!165055)))

(declare-fun b!2565808 () Bool)

(declare-fun e!1619937 () Bool)

(assert (=> b!2565808 (= e!1619940 e!1619937)))

(assert (=> b!2565808 (= c!412618 ((_ is Star!7623) (derivative!318 lt!905116 tl!4068)))))

(declare-fun b!2565809 () Bool)

(assert (=> b!2565809 (= e!1619937 e!1619939)))

(declare-fun res!1079757 () Bool)

(assert (=> b!2565809 (= res!1079757 (not (nullable!2540 (reg!7952 (derivative!318 lt!905116 tl!4068)))))))

(assert (=> b!2565809 (=> (not res!1079757) (not e!1619939))))

(declare-fun b!2565810 () Bool)

(declare-fun e!1619941 () Bool)

(assert (=> b!2565810 (= e!1619937 e!1619941)))

(assert (=> b!2565810 (= c!412619 ((_ is Union!7623) (derivative!318 lt!905116 tl!4068)))))

(declare-fun bm!165049 () Bool)

(assert (=> bm!165049 (= call!165055 call!165053)))

(declare-fun bm!165050 () Bool)

(declare-fun call!165054 () Bool)

(assert (=> bm!165050 (= call!165054 (validRegex!3249 (ite c!412619 (regOne!15759 (derivative!318 lt!905116 tl!4068)) (regTwo!15758 (derivative!318 lt!905116 tl!4068)))))))

(declare-fun b!2565811 () Bool)

(declare-fun res!1079756 () Bool)

(assert (=> b!2565811 (=> (not res!1079756) (not e!1619935))))

(assert (=> b!2565811 (= res!1079756 call!165054)))

(assert (=> b!2565811 (= e!1619941 e!1619935)))

(declare-fun b!2565812 () Bool)

(assert (=> b!2565812 (= e!1619936 call!165054)))

(declare-fun b!2565813 () Bool)

(declare-fun res!1079760 () Bool)

(assert (=> b!2565813 (=> res!1079760 e!1619938)))

(assert (=> b!2565813 (= res!1079760 (not ((_ is Concat!12319) (derivative!318 lt!905116 tl!4068))))))

(assert (=> b!2565813 (= e!1619941 e!1619938)))

(assert (= (and d!726511 (not res!1079758)) b!2565808))

(assert (= (and b!2565808 c!412618) b!2565809))

(assert (= (and b!2565808 (not c!412618)) b!2565810))

(assert (= (and b!2565809 res!1079757) b!2565806))

(assert (= (and b!2565810 c!412619) b!2565811))

(assert (= (and b!2565810 (not c!412619)) b!2565813))

(assert (= (and b!2565811 res!1079756) b!2565807))

(assert (= (and b!2565813 (not res!1079760)) b!2565805))

(assert (= (and b!2565805 res!1079759) b!2565812))

(assert (= (or b!2565811 b!2565812) bm!165050))

(assert (= (or b!2565807 b!2565805) bm!165049))

(assert (= (or b!2565806 bm!165049) bm!165048))

(declare-fun m!2904123 () Bool)

(assert (=> bm!165048 m!2904123))

(declare-fun m!2904125 () Bool)

(assert (=> b!2565809 m!2904125))

(declare-fun m!2904127 () Bool)

(assert (=> bm!165050 m!2904127))

(assert (=> d!726287 d!726511))

(assert (=> b!2565100 d!726299))

(assert (=> b!2564770 d!726459))

(declare-fun b!2565814 () Bool)

(declare-fun e!1619945 () Bool)

(declare-fun e!1619943 () Bool)

(assert (=> b!2565814 (= e!1619945 e!1619943)))

(declare-fun res!1079764 () Bool)

(assert (=> b!2565814 (=> (not res!1079764) (not e!1619943))))

(declare-fun lt!905220 () Bool)

(assert (=> b!2565814 (= res!1079764 (not lt!905220))))

(declare-fun bm!165051 () Bool)

(declare-fun call!165056 () Bool)

(assert (=> bm!165051 (= call!165056 (isEmpty!17046 Nil!29588))))

(declare-fun b!2565816 () Bool)

(declare-fun res!1079763 () Bool)

(declare-fun e!1619942 () Bool)

(assert (=> b!2565816 (=> (not res!1079763) (not e!1619942))))

(assert (=> b!2565816 (= res!1079763 (isEmpty!17046 (tail!4105 Nil!29588)))))

(declare-fun b!2565817 () Bool)

(declare-fun e!1619944 () Bool)

(assert (=> b!2565817 (= e!1619944 (not lt!905220))))

(declare-fun b!2565818 () Bool)

(declare-fun e!1619947 () Bool)

(assert (=> b!2565818 (= e!1619947 (matchR!3568 (derivativeStep!2192 (derivative!318 lt!905122 tl!4068) (head!5830 Nil!29588)) (tail!4105 Nil!29588)))))

(declare-fun b!2565819 () Bool)

(declare-fun res!1079761 () Bool)

(assert (=> b!2565819 (=> res!1079761 e!1619945)))

(assert (=> b!2565819 (= res!1079761 (not ((_ is ElementMatch!7623) (derivative!318 lt!905122 tl!4068))))))

(assert (=> b!2565819 (= e!1619944 e!1619945)))

(declare-fun b!2565820 () Bool)

(assert (=> b!2565820 (= e!1619942 (= (head!5830 Nil!29588) (c!412277 (derivative!318 lt!905122 tl!4068))))))

(declare-fun b!2565821 () Bool)

(declare-fun e!1619946 () Bool)

(assert (=> b!2565821 (= e!1619946 (= lt!905220 call!165056))))

(declare-fun b!2565822 () Bool)

(declare-fun e!1619948 () Bool)

(assert (=> b!2565822 (= e!1619948 (not (= (head!5830 Nil!29588) (c!412277 (derivative!318 lt!905122 tl!4068)))))))

(declare-fun b!2565823 () Bool)

(assert (=> b!2565823 (= e!1619947 (nullable!2540 (derivative!318 lt!905122 tl!4068)))))

(declare-fun b!2565824 () Bool)

(declare-fun res!1079765 () Bool)

(assert (=> b!2565824 (=> (not res!1079765) (not e!1619942))))

(assert (=> b!2565824 (= res!1079765 (not call!165056))))

(declare-fun b!2565825 () Bool)

(declare-fun res!1079768 () Bool)

(assert (=> b!2565825 (=> res!1079768 e!1619948)))

(assert (=> b!2565825 (= res!1079768 (not (isEmpty!17046 (tail!4105 Nil!29588))))))

(declare-fun d!726513 () Bool)

(assert (=> d!726513 e!1619946))

(declare-fun c!412620 () Bool)

(assert (=> d!726513 (= c!412620 ((_ is EmptyExpr!7623) (derivative!318 lt!905122 tl!4068)))))

(assert (=> d!726513 (= lt!905220 e!1619947)))

(declare-fun c!412622 () Bool)

(assert (=> d!726513 (= c!412622 (isEmpty!17046 Nil!29588))))

(assert (=> d!726513 (validRegex!3249 (derivative!318 lt!905122 tl!4068))))

(assert (=> d!726513 (= (matchR!3568 (derivative!318 lt!905122 tl!4068) Nil!29588) lt!905220)))

(declare-fun b!2565815 () Bool)

(assert (=> b!2565815 (= e!1619943 e!1619948)))

(declare-fun res!1079762 () Bool)

(assert (=> b!2565815 (=> res!1079762 e!1619948)))

(assert (=> b!2565815 (= res!1079762 call!165056)))

(declare-fun b!2565826 () Bool)

(declare-fun res!1079766 () Bool)

(assert (=> b!2565826 (=> res!1079766 e!1619945)))

(assert (=> b!2565826 (= res!1079766 e!1619942)))

(declare-fun res!1079767 () Bool)

(assert (=> b!2565826 (=> (not res!1079767) (not e!1619942))))

(assert (=> b!2565826 (= res!1079767 lt!905220)))

(declare-fun b!2565827 () Bool)

(assert (=> b!2565827 (= e!1619946 e!1619944)))

(declare-fun c!412621 () Bool)

(assert (=> b!2565827 (= c!412621 ((_ is EmptyLang!7623) (derivative!318 lt!905122 tl!4068)))))

(assert (= (and d!726513 c!412622) b!2565823))

(assert (= (and d!726513 (not c!412622)) b!2565818))

(assert (= (and d!726513 c!412620) b!2565821))

(assert (= (and d!726513 (not c!412620)) b!2565827))

(assert (= (and b!2565827 c!412621) b!2565817))

(assert (= (and b!2565827 (not c!412621)) b!2565819))

(assert (= (and b!2565819 (not res!1079761)) b!2565826))

(assert (= (and b!2565826 res!1079767) b!2565824))

(assert (= (and b!2565824 res!1079765) b!2565816))

(assert (= (and b!2565816 res!1079763) b!2565820))

(assert (= (and b!2565826 (not res!1079766)) b!2565814))

(assert (= (and b!2565814 res!1079764) b!2565815))

(assert (= (and b!2565815 (not res!1079762)) b!2565825))

(assert (= (and b!2565825 (not res!1079768)) b!2565822))

(assert (= (or b!2565821 b!2565815 b!2565824) bm!165051))

(assert (=> b!2565818 m!2903363))

(assert (=> b!2565818 m!2903323))

(assert (=> b!2565818 m!2903363))

(declare-fun m!2904129 () Bool)

(assert (=> b!2565818 m!2904129))

(assert (=> b!2565818 m!2903367))

(assert (=> b!2565818 m!2904129))

(assert (=> b!2565818 m!2903367))

(declare-fun m!2904131 () Bool)

(assert (=> b!2565818 m!2904131))

(assert (=> b!2565816 m!2903367))

(assert (=> b!2565816 m!2903367))

(assert (=> b!2565816 m!2903371))

(assert (=> b!2565822 m!2903363))

(assert (=> bm!165051 m!2903373))

(assert (=> d!726513 m!2903373))

(assert (=> d!726513 m!2903323))

(declare-fun m!2904133 () Bool)

(assert (=> d!726513 m!2904133))

(assert (=> b!2565823 m!2903323))

(declare-fun m!2904135 () Bool)

(assert (=> b!2565823 m!2904135))

(assert (=> b!2565825 m!2903367))

(assert (=> b!2565825 m!2903367))

(assert (=> b!2565825 m!2903371))

(assert (=> b!2565820 m!2903363))

(assert (=> d!726231 d!726513))

(assert (=> d!726231 d!726215))

(assert (=> d!726231 d!726229))

(assert (=> d!726231 d!726507))

(declare-fun d!726515 () Bool)

(assert (=> d!726515 (= (matchR!3568 lt!905122 tl!4068) (matchR!3568 (derivative!318 lt!905122 tl!4068) Nil!29588))))

(assert (=> d!726515 true))

(declare-fun _$108!392 () Unit!43431)

(assert (=> d!726515 (= (choose!15124 lt!905122 tl!4068) _$108!392)))

(declare-fun bs!469925 () Bool)

(assert (= bs!469925 d!726515))

(assert (=> bs!469925 m!2903307))

(assert (=> bs!469925 m!2903323))

(assert (=> bs!469925 m!2903323))

(assert (=> bs!469925 m!2903419))

(assert (=> d!726231 d!726515))

(declare-fun e!1619949 () Bool)

(declare-fun lt!905221 () List!29688)

(declare-fun b!2565831 () Bool)

(assert (=> b!2565831 (= e!1619949 (or (not (= (ite c!412422 call!164872 call!164873) Nil!29588)) (= lt!905221 (ite c!412422 call!164874 call!164872))))))

(declare-fun b!2565828 () Bool)

(declare-fun e!1619950 () List!29688)

(assert (=> b!2565828 (= e!1619950 (ite c!412422 call!164872 call!164873))))

(declare-fun b!2565829 () Bool)

(assert (=> b!2565829 (= e!1619950 (Cons!29588 (h!35008 (ite c!412422 call!164874 call!164872)) (++!7272 (t!211387 (ite c!412422 call!164874 call!164872)) (ite c!412422 call!164872 call!164873))))))

(declare-fun b!2565830 () Bool)

(declare-fun res!1079770 () Bool)

(assert (=> b!2565830 (=> (not res!1079770) (not e!1619949))))

(assert (=> b!2565830 (= res!1079770 (= (size!22957 lt!905221) (+ (size!22957 (ite c!412422 call!164874 call!164872)) (size!22957 (ite c!412422 call!164872 call!164873)))))))

(declare-fun d!726517 () Bool)

(assert (=> d!726517 e!1619949))

(declare-fun res!1079769 () Bool)

(assert (=> d!726517 (=> (not res!1079769) (not e!1619949))))

(assert (=> d!726517 (= res!1079769 (= (content!4078 lt!905221) ((_ map or) (content!4078 (ite c!412422 call!164874 call!164872)) (content!4078 (ite c!412422 call!164872 call!164873)))))))

(assert (=> d!726517 (= lt!905221 e!1619950)))

(declare-fun c!412623 () Bool)

(assert (=> d!726517 (= c!412623 ((_ is Nil!29588) (ite c!412422 call!164874 call!164872)))))

(assert (=> d!726517 (= (++!7272 (ite c!412422 call!164874 call!164872) (ite c!412422 call!164872 call!164873)) lt!905221)))

(assert (= (and d!726517 c!412623) b!2565828))

(assert (= (and d!726517 (not c!412623)) b!2565829))

(assert (= (and d!726517 res!1079769) b!2565830))

(assert (= (and b!2565830 res!1079770) b!2565831))

(declare-fun m!2904137 () Bool)

(assert (=> b!2565829 m!2904137))

(declare-fun m!2904139 () Bool)

(assert (=> b!2565830 m!2904139))

(declare-fun m!2904141 () Bool)

(assert (=> b!2565830 m!2904141))

(declare-fun m!2904143 () Bool)

(assert (=> b!2565830 m!2904143))

(declare-fun m!2904145 () Bool)

(assert (=> d!726517 m!2904145))

(declare-fun m!2904147 () Bool)

(assert (=> d!726517 m!2904147))

(declare-fun m!2904149 () Bool)

(assert (=> d!726517 m!2904149))

(assert (=> bm!164868 d!726517))

(assert (=> b!2565031 d!726463))

(declare-fun bm!165052 () Bool)

(declare-fun call!165060 () Regex!7623)

(declare-fun call!165058 () Regex!7623)

(assert (=> bm!165052 (= call!165060 call!165058)))

(declare-fun b!2565832 () Bool)

(declare-fun e!1619955 () Regex!7623)

(declare-fun call!165059 () Regex!7623)

(assert (=> b!2565832 (= e!1619955 (Union!7623 call!165058 call!165059))))

(declare-fun b!2565833 () Bool)

(declare-fun e!1619951 () Regex!7623)

(assert (=> b!2565833 (= e!1619955 e!1619951)))

(declare-fun c!412627 () Bool)

(assert (=> b!2565833 (= c!412627 ((_ is Star!7623) (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))))))

(declare-fun b!2565835 () Bool)

(assert (=> b!2565835 (= e!1619951 (Concat!12319 call!165060 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))))))

(declare-fun b!2565836 () Bool)

(declare-fun e!1619954 () Regex!7623)

(assert (=> b!2565836 (= e!1619954 (ite (= c!14016 (c!412277 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun call!165057 () Regex!7623)

(declare-fun e!1619953 () Regex!7623)

(declare-fun b!2565837 () Bool)

(assert (=> b!2565837 (= e!1619953 (Union!7623 (Concat!12319 call!165057 (regTwo!15758 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))) call!165059))))

(declare-fun b!2565838 () Bool)

(declare-fun e!1619952 () Regex!7623)

(assert (=> b!2565838 (= e!1619952 e!1619954)))

(declare-fun c!412626 () Bool)

(assert (=> b!2565838 (= c!412626 ((_ is ElementMatch!7623) (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))))))

(declare-fun b!2565839 () Bool)

(assert (=> b!2565839 (= e!1619952 EmptyLang!7623)))

(declare-fun b!2565840 () Bool)

(assert (=> b!2565840 (= e!1619953 (Union!7623 (Concat!12319 call!165057 (regTwo!15758 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))) EmptyLang!7623))))

(declare-fun b!2565841 () Bool)

(declare-fun c!412625 () Bool)

(assert (=> b!2565841 (= c!412625 (nullable!2540 (regOne!15758 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))))))

(assert (=> b!2565841 (= e!1619951 e!1619953)))

(declare-fun bm!165053 () Bool)

(assert (=> bm!165053 (= call!165057 call!165060)))

(declare-fun d!726519 () Bool)

(declare-fun lt!905222 () Regex!7623)

(assert (=> d!726519 (validRegex!3249 lt!905222)))

(assert (=> d!726519 (= lt!905222 e!1619952)))

(declare-fun c!412628 () Bool)

(assert (=> d!726519 (= c!412628 (or ((_ is EmptyExpr!7623) (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))) ((_ is EmptyLang!7623) (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))))))

(assert (=> d!726519 (validRegex!3249 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))))

(assert (=> d!726519 (= (derivativeStep!2192 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))) c!14016) lt!905222)))

(declare-fun c!412624 () Bool)

(declare-fun b!2565834 () Bool)

(assert (=> b!2565834 (= c!412624 ((_ is Union!7623) (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))))))

(assert (=> b!2565834 (= e!1619954 e!1619955)))

(declare-fun bm!165054 () Bool)

(assert (=> bm!165054 (= call!165059 (derivativeStep!2192 (ite c!412624 (regTwo!15759 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))) (regTwo!15758 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))) c!14016))))

(declare-fun bm!165055 () Bool)

(assert (=> bm!165055 (= call!165058 (derivativeStep!2192 (ite c!412624 (regOne!15759 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))) (ite c!412627 (reg!7952 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))) (regOne!15758 (ite c!412401 (regOne!15759 (regOne!15758 r!27340)) (ite c!412404 (reg!7952 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))))) c!14016))))

(assert (= (and d!726519 c!412628) b!2565839))

(assert (= (and d!726519 (not c!412628)) b!2565838))

(assert (= (and b!2565838 c!412626) b!2565836))

(assert (= (and b!2565838 (not c!412626)) b!2565834))

(assert (= (and b!2565834 c!412624) b!2565832))

(assert (= (and b!2565834 (not c!412624)) b!2565833))

(assert (= (and b!2565833 c!412627) b!2565835))

(assert (= (and b!2565833 (not c!412627)) b!2565841))

(assert (= (and b!2565841 c!412625) b!2565837))

(assert (= (and b!2565841 (not c!412625)) b!2565840))

(assert (= (or b!2565837 b!2565840) bm!165053))

(assert (= (or b!2565835 bm!165053) bm!165052))

(assert (= (or b!2565832 b!2565837) bm!165054))

(assert (= (or b!2565832 bm!165052) bm!165055))

(declare-fun m!2904151 () Bool)

(assert (=> b!2565841 m!2904151))

(declare-fun m!2904153 () Bool)

(assert (=> d!726519 m!2904153))

(declare-fun m!2904155 () Bool)

(assert (=> d!726519 m!2904155))

(declare-fun m!2904157 () Bool)

(assert (=> bm!165054 m!2904157))

(declare-fun m!2904159 () Bool)

(assert (=> bm!165055 m!2904159))

(assert (=> bm!164854 d!726519))

(declare-fun b!2565842 () Bool)

(declare-fun e!1619958 () Bool)

(declare-fun e!1619957 () Bool)

(assert (=> b!2565842 (= e!1619958 e!1619957)))

(declare-fun res!1079774 () Bool)

(declare-fun call!165062 () Bool)

(assert (=> b!2565842 (= res!1079774 call!165062)))

(assert (=> b!2565842 (=> res!1079774 e!1619957)))

(declare-fun b!2565843 () Bool)

(declare-fun call!165061 () Bool)

(assert (=> b!2565843 (= e!1619957 call!165061)))

(declare-fun d!726521 () Bool)

(declare-fun res!1079772 () Bool)

(declare-fun e!1619956 () Bool)

(assert (=> d!726521 (=> res!1079772 e!1619956)))

(assert (=> d!726521 (= res!1079772 ((_ is EmptyExpr!7623) (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))

(assert (=> d!726521 (= (nullableFct!765 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)) e!1619956)))

(declare-fun b!2565844 () Bool)

(declare-fun e!1619960 () Bool)

(assert (=> b!2565844 (= e!1619960 call!165062)))

(declare-fun b!2565845 () Bool)

(assert (=> b!2565845 (= e!1619958 e!1619960)))

(declare-fun res!1079773 () Bool)

(assert (=> b!2565845 (= res!1079773 call!165061)))

(assert (=> b!2565845 (=> (not res!1079773) (not e!1619960))))

(declare-fun c!412629 () Bool)

(declare-fun bm!165056 () Bool)

(assert (=> bm!165056 (= call!165062 (nullable!2540 (ite c!412629 (regOne!15759 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)) (regTwo!15758 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!165057 () Bool)

(assert (=> bm!165057 (= call!165061 (nullable!2540 (ite c!412629 (regTwo!15759 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)) (regOne!15758 (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2565846 () Bool)

(declare-fun e!1619961 () Bool)

(assert (=> b!2565846 (= e!1619956 e!1619961)))

(declare-fun res!1079775 () Bool)

(assert (=> b!2565846 (=> (not res!1079775) (not e!1619961))))

(assert (=> b!2565846 (= res!1079775 (and (not ((_ is EmptyLang!7623) (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7623) (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2565847 () Bool)

(declare-fun e!1619959 () Bool)

(assert (=> b!2565847 (= e!1619961 e!1619959)))

(declare-fun res!1079771 () Bool)

(assert (=> b!2565847 (=> res!1079771 e!1619959)))

(assert (=> b!2565847 (= res!1079771 ((_ is Star!7623) (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))

(declare-fun b!2565848 () Bool)

(assert (=> b!2565848 (= e!1619959 e!1619958)))

(assert (=> b!2565848 (= c!412629 ((_ is Union!7623) (derivative!318 (derivativeStep!2192 r!27340 c!14016) tl!4068)))))

(assert (= (and d!726521 (not res!1079772)) b!2565846))

(assert (= (and b!2565846 res!1079775) b!2565847))

(assert (= (and b!2565847 (not res!1079771)) b!2565848))

(assert (= (and b!2565848 c!412629) b!2565842))

(assert (= (and b!2565848 (not c!412629)) b!2565845))

(assert (= (and b!2565842 (not res!1079774)) b!2565843))

(assert (= (and b!2565845 res!1079773) b!2565844))

(assert (= (or b!2565843 b!2565845) bm!165057))

(assert (= (or b!2565842 b!2565844) bm!165056))

(declare-fun m!2904161 () Bool)

(assert (=> bm!165056 m!2904161))

(declare-fun m!2904163 () Bool)

(assert (=> bm!165057 m!2904163))

(assert (=> d!726301 d!726521))

(assert (=> b!2564768 d!726459))

(declare-fun d!726523 () Bool)

(assert (=> d!726523 (= (nullable!2540 (regOne!15758 (regOne!15758 r!27340))) (nullableFct!765 (regOne!15758 (regOne!15758 r!27340))))))

(declare-fun bs!469926 () Bool)

(assert (= bs!469926 d!726523))

(declare-fun m!2904165 () Bool)

(assert (=> bs!469926 m!2904165))

(assert (=> b!2564989 d!726523))

(declare-fun b!2565849 () Bool)

(declare-fun e!1619965 () Bool)

(declare-fun e!1619963 () Bool)

(assert (=> b!2565849 (= e!1619965 e!1619963)))

(declare-fun res!1079779 () Bool)

(assert (=> b!2565849 (=> (not res!1079779) (not e!1619963))))

(declare-fun call!165065 () Bool)

(assert (=> b!2565849 (= res!1079779 call!165065)))

(declare-fun call!165063 () Bool)

(declare-fun c!412631 () Bool)

(declare-fun bm!165058 () Bool)

(declare-fun c!412630 () Bool)

(assert (=> bm!165058 (= call!165063 (validRegex!3249 (ite c!412630 (reg!7952 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))) (ite c!412631 (regTwo!15759 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))) (regOne!15758 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340)))))))))

(declare-fun b!2565850 () Bool)

(declare-fun e!1619966 () Bool)

(assert (=> b!2565850 (= e!1619966 call!165063)))

(declare-fun d!726525 () Bool)

(declare-fun res!1079778 () Bool)

(declare-fun e!1619967 () Bool)

(assert (=> d!726525 (=> res!1079778 e!1619967)))

(assert (=> d!726525 (= res!1079778 ((_ is ElementMatch!7623) (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))))))

(assert (=> d!726525 (= (validRegex!3249 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))) e!1619967)))

(declare-fun b!2565851 () Bool)

(declare-fun e!1619962 () Bool)

(assert (=> b!2565851 (= e!1619962 call!165065)))

(declare-fun b!2565852 () Bool)

(declare-fun e!1619964 () Bool)

(assert (=> b!2565852 (= e!1619967 e!1619964)))

(assert (=> b!2565852 (= c!412630 ((_ is Star!7623) (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))))))

(declare-fun b!2565853 () Bool)

(assert (=> b!2565853 (= e!1619964 e!1619966)))

(declare-fun res!1079777 () Bool)

(assert (=> b!2565853 (= res!1079777 (not (nullable!2540 (reg!7952 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))))))))

(assert (=> b!2565853 (=> (not res!1079777) (not e!1619966))))

(declare-fun b!2565854 () Bool)

(declare-fun e!1619968 () Bool)

(assert (=> b!2565854 (= e!1619964 e!1619968)))

(assert (=> b!2565854 (= c!412631 ((_ is Union!7623) (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))))))

(declare-fun bm!165059 () Bool)

(assert (=> bm!165059 (= call!165065 call!165063)))

(declare-fun call!165064 () Bool)

(declare-fun bm!165060 () Bool)

(assert (=> bm!165060 (= call!165064 (validRegex!3249 (ite c!412631 (regOne!15759 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))) (regTwo!15758 (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340))))))))

(declare-fun b!2565855 () Bool)

(declare-fun res!1079776 () Bool)

(assert (=> b!2565855 (=> (not res!1079776) (not e!1619962))))

(assert (=> b!2565855 (= res!1079776 call!165064)))

(assert (=> b!2565855 (= e!1619968 e!1619962)))

(declare-fun b!2565856 () Bool)

(assert (=> b!2565856 (= e!1619963 call!165064)))

(declare-fun b!2565857 () Bool)

(declare-fun res!1079780 () Bool)

(assert (=> b!2565857 (=> res!1079780 e!1619965)))

(assert (=> b!2565857 (= res!1079780 (not ((_ is Concat!12319) (ite c!412437 (regOne!15759 r!27340) (regTwo!15758 r!27340)))))))

(assert (=> b!2565857 (= e!1619968 e!1619965)))

(assert (= (and d!726525 (not res!1079778)) b!2565852))

(assert (= (and b!2565852 c!412630) b!2565853))

(assert (= (and b!2565852 (not c!412630)) b!2565854))

(assert (= (and b!2565853 res!1079777) b!2565850))

(assert (= (and b!2565854 c!412631) b!2565855))

(assert (= (and b!2565854 (not c!412631)) b!2565857))

(assert (= (and b!2565855 res!1079776) b!2565851))

(assert (= (and b!2565857 (not res!1079780)) b!2565849))

(assert (= (and b!2565849 res!1079779) b!2565856))

(assert (= (or b!2565855 b!2565856) bm!165060))

(assert (= (or b!2565851 b!2565849) bm!165059))

(assert (= (or b!2565850 bm!165059) bm!165058))

(declare-fun m!2904167 () Bool)

(assert (=> bm!165058 m!2904167))

(declare-fun m!2904169 () Bool)

(assert (=> b!2565853 m!2904169))

(declare-fun m!2904171 () Bool)

(assert (=> bm!165060 m!2904171))

(assert (=> bm!164882 d!726525))

(assert (=> d!726219 d!726487))

(declare-fun b!2565858 () Bool)

(declare-fun e!1619972 () Bool)

(declare-fun e!1619970 () Bool)

(assert (=> b!2565858 (= e!1619972 e!1619970)))

(declare-fun res!1079784 () Bool)

(assert (=> b!2565858 (=> (not res!1079784) (not e!1619970))))

(declare-fun call!165068 () Bool)

(assert (=> b!2565858 (= res!1079784 call!165068)))

(declare-fun call!165066 () Bool)

(declare-fun bm!165061 () Bool)

(declare-fun c!412632 () Bool)

(declare-fun c!412633 () Bool)

(assert (=> bm!165061 (= call!165066 (validRegex!3249 (ite c!412632 (reg!7952 lt!905114) (ite c!412633 (regTwo!15759 lt!905114) (regOne!15758 lt!905114)))))))

(declare-fun b!2565859 () Bool)

(declare-fun e!1619973 () Bool)

(assert (=> b!2565859 (= e!1619973 call!165066)))

(declare-fun d!726527 () Bool)

(declare-fun res!1079783 () Bool)

(declare-fun e!1619974 () Bool)

(assert (=> d!726527 (=> res!1079783 e!1619974)))

(assert (=> d!726527 (= res!1079783 ((_ is ElementMatch!7623) lt!905114))))

(assert (=> d!726527 (= (validRegex!3249 lt!905114) e!1619974)))

(declare-fun b!2565860 () Bool)

(declare-fun e!1619969 () Bool)

(assert (=> b!2565860 (= e!1619969 call!165068)))

(declare-fun b!2565861 () Bool)

(declare-fun e!1619971 () Bool)

(assert (=> b!2565861 (= e!1619974 e!1619971)))

(assert (=> b!2565861 (= c!412632 ((_ is Star!7623) lt!905114))))

(declare-fun b!2565862 () Bool)

(assert (=> b!2565862 (= e!1619971 e!1619973)))

(declare-fun res!1079782 () Bool)

(assert (=> b!2565862 (= res!1079782 (not (nullable!2540 (reg!7952 lt!905114))))))

(assert (=> b!2565862 (=> (not res!1079782) (not e!1619973))))

(declare-fun b!2565863 () Bool)

(declare-fun e!1619975 () Bool)

(assert (=> b!2565863 (= e!1619971 e!1619975)))

(assert (=> b!2565863 (= c!412633 ((_ is Union!7623) lt!905114))))

(declare-fun bm!165062 () Bool)

(assert (=> bm!165062 (= call!165068 call!165066)))

(declare-fun bm!165063 () Bool)

(declare-fun call!165067 () Bool)

(assert (=> bm!165063 (= call!165067 (validRegex!3249 (ite c!412633 (regOne!15759 lt!905114) (regTwo!15758 lt!905114))))))

(declare-fun b!2565864 () Bool)

(declare-fun res!1079781 () Bool)

(assert (=> b!2565864 (=> (not res!1079781) (not e!1619969))))

(assert (=> b!2565864 (= res!1079781 call!165067)))

(assert (=> b!2565864 (= e!1619975 e!1619969)))

(declare-fun b!2565865 () Bool)

(assert (=> b!2565865 (= e!1619970 call!165067)))

(declare-fun b!2565866 () Bool)

(declare-fun res!1079785 () Bool)

(assert (=> b!2565866 (=> res!1079785 e!1619972)))

(assert (=> b!2565866 (= res!1079785 (not ((_ is Concat!12319) lt!905114)))))

(assert (=> b!2565866 (= e!1619975 e!1619972)))

(assert (= (and d!726527 (not res!1079783)) b!2565861))

(assert (= (and b!2565861 c!412632) b!2565862))

(assert (= (and b!2565861 (not c!412632)) b!2565863))

(assert (= (and b!2565862 res!1079782) b!2565859))

(assert (= (and b!2565863 c!412633) b!2565864))

(assert (= (and b!2565863 (not c!412633)) b!2565866))

(assert (= (and b!2565864 res!1079781) b!2565860))

(assert (= (and b!2565866 (not res!1079785)) b!2565858))

(assert (= (and b!2565858 res!1079784) b!2565865))

(assert (= (or b!2565864 b!2565865) bm!165063))

(assert (= (or b!2565860 b!2565858) bm!165062))

(assert (= (or b!2565859 bm!165062) bm!165061))

(declare-fun m!2904173 () Bool)

(assert (=> bm!165061 m!2904173))

(declare-fun m!2904175 () Bool)

(assert (=> b!2565862 m!2904175))

(declare-fun m!2904177 () Bool)

(assert (=> bm!165063 m!2904177))

(assert (=> d!726219 d!726527))

(declare-fun b!2565867 () Bool)

(declare-fun e!1619979 () Bool)

(declare-fun e!1619977 () Bool)

(assert (=> b!2565867 (= e!1619979 e!1619977)))

(declare-fun res!1079789 () Bool)

(assert (=> b!2565867 (=> (not res!1079789) (not e!1619977))))

(declare-fun lt!905223 () Bool)

(assert (=> b!2565867 (= res!1079789 (not lt!905223))))

(declare-fun bm!165064 () Bool)

(declare-fun call!165069 () Bool)

(assert (=> bm!165064 (= call!165069 (isEmpty!17046 (tail!4105 tl!4068)))))

(declare-fun b!2565869 () Bool)

(declare-fun res!1079788 () Bool)

(declare-fun e!1619976 () Bool)

(assert (=> b!2565869 (=> (not res!1079788) (not e!1619976))))

(assert (=> b!2565869 (= res!1079788 (isEmpty!17046 (tail!4105 (tail!4105 tl!4068))))))

(declare-fun b!2565870 () Bool)

(declare-fun e!1619978 () Bool)

(assert (=> b!2565870 (= e!1619978 (not lt!905223))))

(declare-fun b!2565871 () Bool)

(declare-fun e!1619981 () Bool)

(assert (=> b!2565871 (= e!1619981 (matchR!3568 (derivativeStep!2192 (derivativeStep!2192 lt!905116 (head!5830 tl!4068)) (head!5830 (tail!4105 tl!4068))) (tail!4105 (tail!4105 tl!4068))))))

(declare-fun b!2565872 () Bool)

(declare-fun res!1079786 () Bool)

(assert (=> b!2565872 (=> res!1079786 e!1619979)))

(assert (=> b!2565872 (= res!1079786 (not ((_ is ElementMatch!7623) (derivativeStep!2192 lt!905116 (head!5830 tl!4068)))))))

(assert (=> b!2565872 (= e!1619978 e!1619979)))

(declare-fun b!2565873 () Bool)

(assert (=> b!2565873 (= e!1619976 (= (head!5830 (tail!4105 tl!4068)) (c!412277 (derivativeStep!2192 lt!905116 (head!5830 tl!4068)))))))

(declare-fun b!2565874 () Bool)

(declare-fun e!1619980 () Bool)

(assert (=> b!2565874 (= e!1619980 (= lt!905223 call!165069))))

(declare-fun b!2565875 () Bool)

(declare-fun e!1619982 () Bool)

(assert (=> b!2565875 (= e!1619982 (not (= (head!5830 (tail!4105 tl!4068)) (c!412277 (derivativeStep!2192 lt!905116 (head!5830 tl!4068))))))))

(declare-fun b!2565876 () Bool)

(assert (=> b!2565876 (= e!1619981 (nullable!2540 (derivativeStep!2192 lt!905116 (head!5830 tl!4068))))))

(declare-fun b!2565877 () Bool)

(declare-fun res!1079790 () Bool)

(assert (=> b!2565877 (=> (not res!1079790) (not e!1619976))))

(assert (=> b!2565877 (= res!1079790 (not call!165069))))

(declare-fun b!2565878 () Bool)

(declare-fun res!1079793 () Bool)

(assert (=> b!2565878 (=> res!1079793 e!1619982)))

(assert (=> b!2565878 (= res!1079793 (not (isEmpty!17046 (tail!4105 (tail!4105 tl!4068)))))))

(declare-fun d!726529 () Bool)

(assert (=> d!726529 e!1619980))

(declare-fun c!412634 () Bool)

(assert (=> d!726529 (= c!412634 ((_ is EmptyExpr!7623) (derivativeStep!2192 lt!905116 (head!5830 tl!4068))))))

(assert (=> d!726529 (= lt!905223 e!1619981)))

(declare-fun c!412636 () Bool)

(assert (=> d!726529 (= c!412636 (isEmpty!17046 (tail!4105 tl!4068)))))

(assert (=> d!726529 (validRegex!3249 (derivativeStep!2192 lt!905116 (head!5830 tl!4068)))))

(assert (=> d!726529 (= (matchR!3568 (derivativeStep!2192 lt!905116 (head!5830 tl!4068)) (tail!4105 tl!4068)) lt!905223)))

(declare-fun b!2565868 () Bool)

(assert (=> b!2565868 (= e!1619977 e!1619982)))

(declare-fun res!1079787 () Bool)

(assert (=> b!2565868 (=> res!1079787 e!1619982)))

(assert (=> b!2565868 (= res!1079787 call!165069)))

(declare-fun b!2565879 () Bool)

(declare-fun res!1079791 () Bool)

(assert (=> b!2565879 (=> res!1079791 e!1619979)))

(assert (=> b!2565879 (= res!1079791 e!1619976)))

(declare-fun res!1079792 () Bool)

(assert (=> b!2565879 (=> (not res!1079792) (not e!1619976))))

(assert (=> b!2565879 (= res!1079792 lt!905223)))

(declare-fun b!2565880 () Bool)

(assert (=> b!2565880 (= e!1619980 e!1619978)))

(declare-fun c!412635 () Bool)

(assert (=> b!2565880 (= c!412635 ((_ is EmptyLang!7623) (derivativeStep!2192 lt!905116 (head!5830 tl!4068))))))

(assert (= (and d!726529 c!412636) b!2565876))

(assert (= (and d!726529 (not c!412636)) b!2565871))

(assert (= (and d!726529 c!412634) b!2565874))

(assert (= (and d!726529 (not c!412634)) b!2565880))

(assert (= (and b!2565880 c!412635) b!2565870))

(assert (= (and b!2565880 (not c!412635)) b!2565872))

(assert (= (and b!2565872 (not res!1079786)) b!2565879))

(assert (= (and b!2565879 res!1079792) b!2565877))

(assert (= (and b!2565877 res!1079790) b!2565869))

(assert (= (and b!2565869 res!1079788) b!2565873))

(assert (= (and b!2565879 (not res!1079791)) b!2565867))

(assert (= (and b!2565867 res!1079789) b!2565868))

(assert (= (and b!2565868 (not res!1079787)) b!2565878))

(assert (= (and b!2565878 (not res!1079793)) b!2565875))

(assert (= (or b!2565874 b!2565868 b!2565877) bm!165064))

(assert (=> b!2565871 m!2903407))

(assert (=> b!2565871 m!2904017))

(assert (=> b!2565871 m!2903479))

(assert (=> b!2565871 m!2904017))

(declare-fun m!2904179 () Bool)

(assert (=> b!2565871 m!2904179))

(assert (=> b!2565871 m!2903407))

(assert (=> b!2565871 m!2904021))

(assert (=> b!2565871 m!2904179))

(assert (=> b!2565871 m!2904021))

(declare-fun m!2904181 () Bool)

(assert (=> b!2565871 m!2904181))

(assert (=> b!2565869 m!2903407))

(assert (=> b!2565869 m!2904021))

(assert (=> b!2565869 m!2904021))

(assert (=> b!2565869 m!2904025))

(assert (=> b!2565875 m!2903407))

(assert (=> b!2565875 m!2904017))

(assert (=> bm!165064 m!2903407))

(assert (=> bm!165064 m!2903411))

(assert (=> d!726529 m!2903407))

(assert (=> d!726529 m!2903411))

(assert (=> d!726529 m!2903479))

(declare-fun m!2904183 () Bool)

(assert (=> d!726529 m!2904183))

(assert (=> b!2565876 m!2903479))

(declare-fun m!2904185 () Bool)

(assert (=> b!2565876 m!2904185))

(assert (=> b!2565878 m!2903407))

(assert (=> b!2565878 m!2904021))

(assert (=> b!2565878 m!2904021))

(assert (=> b!2565878 m!2904025))

(assert (=> b!2565873 m!2903407))

(assert (=> b!2565873 m!2904017))

(assert (=> b!2564810 d!726529))

(declare-fun bm!165065 () Bool)

(declare-fun call!165073 () Regex!7623)

(declare-fun call!165071 () Regex!7623)

(assert (=> bm!165065 (= call!165073 call!165071)))

(declare-fun b!2565881 () Bool)

(declare-fun e!1619987 () Regex!7623)

(declare-fun call!165072 () Regex!7623)

(assert (=> b!2565881 (= e!1619987 (Union!7623 call!165071 call!165072))))

(declare-fun b!2565882 () Bool)

(declare-fun e!1619983 () Regex!7623)

(assert (=> b!2565882 (= e!1619987 e!1619983)))

(declare-fun c!412640 () Bool)

(assert (=> b!2565882 (= c!412640 ((_ is Star!7623) lt!905116))))

(declare-fun b!2565884 () Bool)

(assert (=> b!2565884 (= e!1619983 (Concat!12319 call!165073 lt!905116))))

(declare-fun b!2565885 () Bool)

(declare-fun e!1619986 () Regex!7623)

(assert (=> b!2565885 (= e!1619986 (ite (= (head!5830 tl!4068) (c!412277 lt!905116)) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun e!1619985 () Regex!7623)

(declare-fun b!2565886 () Bool)

(declare-fun call!165070 () Regex!7623)

(assert (=> b!2565886 (= e!1619985 (Union!7623 (Concat!12319 call!165070 (regTwo!15758 lt!905116)) call!165072))))

(declare-fun b!2565887 () Bool)

(declare-fun e!1619984 () Regex!7623)

(assert (=> b!2565887 (= e!1619984 e!1619986)))

(declare-fun c!412639 () Bool)

(assert (=> b!2565887 (= c!412639 ((_ is ElementMatch!7623) lt!905116))))

(declare-fun b!2565888 () Bool)

(assert (=> b!2565888 (= e!1619984 EmptyLang!7623)))

(declare-fun b!2565889 () Bool)

(assert (=> b!2565889 (= e!1619985 (Union!7623 (Concat!12319 call!165070 (regTwo!15758 lt!905116)) EmptyLang!7623))))

(declare-fun b!2565890 () Bool)

(declare-fun c!412638 () Bool)

(assert (=> b!2565890 (= c!412638 (nullable!2540 (regOne!15758 lt!905116)))))

(assert (=> b!2565890 (= e!1619983 e!1619985)))

(declare-fun bm!165066 () Bool)

(assert (=> bm!165066 (= call!165070 call!165073)))

(declare-fun d!726531 () Bool)

(declare-fun lt!905224 () Regex!7623)

(assert (=> d!726531 (validRegex!3249 lt!905224)))

(assert (=> d!726531 (= lt!905224 e!1619984)))

(declare-fun c!412641 () Bool)

(assert (=> d!726531 (= c!412641 (or ((_ is EmptyExpr!7623) lt!905116) ((_ is EmptyLang!7623) lt!905116)))))

(assert (=> d!726531 (validRegex!3249 lt!905116)))

(assert (=> d!726531 (= (derivativeStep!2192 lt!905116 (head!5830 tl!4068)) lt!905224)))

(declare-fun b!2565883 () Bool)

(declare-fun c!412637 () Bool)

(assert (=> b!2565883 (= c!412637 ((_ is Union!7623) lt!905116))))

(assert (=> b!2565883 (= e!1619986 e!1619987)))

(declare-fun bm!165067 () Bool)

(assert (=> bm!165067 (= call!165072 (derivativeStep!2192 (ite c!412637 (regTwo!15759 lt!905116) (regTwo!15758 lt!905116)) (head!5830 tl!4068)))))

(declare-fun bm!165068 () Bool)

(assert (=> bm!165068 (= call!165071 (derivativeStep!2192 (ite c!412637 (regOne!15759 lt!905116) (ite c!412640 (reg!7952 lt!905116) (regOne!15758 lt!905116))) (head!5830 tl!4068)))))

(assert (= (and d!726531 c!412641) b!2565888))

(assert (= (and d!726531 (not c!412641)) b!2565887))

(assert (= (and b!2565887 c!412639) b!2565885))

(assert (= (and b!2565887 (not c!412639)) b!2565883))

(assert (= (and b!2565883 c!412637) b!2565881))

(assert (= (and b!2565883 (not c!412637)) b!2565882))

(assert (= (and b!2565882 c!412640) b!2565884))

(assert (= (and b!2565882 (not c!412640)) b!2565890))

(assert (= (and b!2565890 c!412638) b!2565886))

(assert (= (and b!2565890 (not c!412638)) b!2565889))

(assert (= (or b!2565886 b!2565889) bm!165066))

(assert (= (or b!2565884 bm!165066) bm!165065))

(assert (= (or b!2565881 b!2565886) bm!165067))

(assert (= (or b!2565881 bm!165065) bm!165068))

(declare-fun m!2904187 () Bool)

(assert (=> b!2565890 m!2904187))

(declare-fun m!2904189 () Bool)

(assert (=> d!726531 m!2904189))

(assert (=> d!726531 m!2903457))

(assert (=> bm!165067 m!2903403))

(declare-fun m!2904191 () Bool)

(assert (=> bm!165067 m!2904191))

(assert (=> bm!165068 m!2903403))

(declare-fun m!2904193 () Bool)

(assert (=> bm!165068 m!2904193))

(assert (=> b!2564810 d!726531))

(assert (=> b!2564810 d!726459))

(assert (=> b!2564810 d!726461))

(assert (=> b!2564808 d!726475))

(assert (=> b!2564808 d!726461))

(assert (=> b!2564868 d!726507))

(declare-fun b!2565891 () Bool)

(declare-fun e!1619990 () Bool)

(declare-fun e!1619989 () Bool)

(assert (=> b!2565891 (= e!1619990 e!1619989)))

(declare-fun res!1079797 () Bool)

(declare-fun call!165075 () Bool)

(assert (=> b!2565891 (= res!1079797 call!165075)))

(assert (=> b!2565891 (=> res!1079797 e!1619989)))

(declare-fun b!2565892 () Bool)

(declare-fun call!165074 () Bool)

(assert (=> b!2565892 (= e!1619989 call!165074)))

(declare-fun d!726533 () Bool)

(declare-fun res!1079795 () Bool)

(declare-fun e!1619988 () Bool)

(assert (=> d!726533 (=> res!1079795 e!1619988)))

(assert (=> d!726533 (= res!1079795 ((_ is EmptyExpr!7623) (regOne!15758 r!27340)))))

(assert (=> d!726533 (= (nullableFct!765 (regOne!15758 r!27340)) e!1619988)))

(declare-fun b!2565893 () Bool)

(declare-fun e!1619992 () Bool)

(assert (=> b!2565893 (= e!1619992 call!165075)))

(declare-fun b!2565894 () Bool)

(assert (=> b!2565894 (= e!1619990 e!1619992)))

(declare-fun res!1079796 () Bool)

(assert (=> b!2565894 (= res!1079796 call!165074)))

(assert (=> b!2565894 (=> (not res!1079796) (not e!1619992))))

(declare-fun bm!165069 () Bool)

(declare-fun c!412642 () Bool)

(assert (=> bm!165069 (= call!165075 (nullable!2540 (ite c!412642 (regOne!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))))

(declare-fun bm!165070 () Bool)

(assert (=> bm!165070 (= call!165074 (nullable!2540 (ite c!412642 (regTwo!15759 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340)))))))

(declare-fun b!2565895 () Bool)

(declare-fun e!1619993 () Bool)

(assert (=> b!2565895 (= e!1619988 e!1619993)))

(declare-fun res!1079798 () Bool)

(assert (=> b!2565895 (=> (not res!1079798) (not e!1619993))))

(assert (=> b!2565895 (= res!1079798 (and (not ((_ is EmptyLang!7623) (regOne!15758 r!27340))) (not ((_ is ElementMatch!7623) (regOne!15758 r!27340)))))))

(declare-fun b!2565896 () Bool)

(declare-fun e!1619991 () Bool)

(assert (=> b!2565896 (= e!1619993 e!1619991)))

(declare-fun res!1079794 () Bool)

(assert (=> b!2565896 (=> res!1079794 e!1619991)))

(assert (=> b!2565896 (= res!1079794 ((_ is Star!7623) (regOne!15758 r!27340)))))

(declare-fun b!2565897 () Bool)

(assert (=> b!2565897 (= e!1619991 e!1619990)))

(assert (=> b!2565897 (= c!412642 ((_ is Union!7623) (regOne!15758 r!27340)))))

(assert (= (and d!726533 (not res!1079795)) b!2565895))

(assert (= (and b!2565895 res!1079798) b!2565896))

(assert (= (and b!2565896 (not res!1079794)) b!2565897))

(assert (= (and b!2565897 c!412642) b!2565891))

(assert (= (and b!2565897 (not c!412642)) b!2565894))

(assert (= (and b!2565891 (not res!1079797)) b!2565892))

(assert (= (and b!2565894 res!1079796) b!2565893))

(assert (= (or b!2565892 b!2565894) bm!165070))

(assert (= (or b!2565891 b!2565893) bm!165069))

(declare-fun m!2904195 () Bool)

(assert (=> bm!165069 m!2904195))

(declare-fun m!2904197 () Bool)

(assert (=> bm!165070 m!2904197))

(assert (=> d!726299 d!726533))

(assert (=> b!2564719 d!726475))

(assert (=> b!2564719 d!726461))

(assert (=> d!726249 d!726237))

(declare-fun d!726535 () Bool)

(declare-fun e!1619996 () Bool)

(assert (=> d!726535 e!1619996))

(declare-fun res!1079801 () Bool)

(assert (=> d!726535 (=> res!1079801 e!1619996)))

(assert (=> d!726535 (= res!1079801 (matchR!3568 lt!905119 tl!4068))))

(assert (=> d!726535 true))

(declare-fun _$116!361 () Unit!43431)

(assert (=> d!726535 (= (choose!15126 lt!905119 lt!905122 tl!4068) _$116!361)))

(declare-fun b!2565900 () Bool)

(assert (=> b!2565900 (= e!1619996 (matchR!3568 lt!905122 tl!4068))))

(assert (= (and d!726535 (not res!1079801)) b!2565900))

(assert (=> d!726535 m!2903343))

(assert (=> b!2565900 m!2903307))

(assert (=> d!726249 d!726535))

(declare-fun b!2565901 () Bool)

(declare-fun e!1620000 () Bool)

(declare-fun e!1619998 () Bool)

(assert (=> b!2565901 (= e!1620000 e!1619998)))

(declare-fun res!1079805 () Bool)

(assert (=> b!2565901 (=> (not res!1079805) (not e!1619998))))

(declare-fun call!165078 () Bool)

(assert (=> b!2565901 (= res!1079805 call!165078)))

(declare-fun call!165076 () Bool)

(declare-fun c!412643 () Bool)

(declare-fun bm!165071 () Bool)

(declare-fun c!412644 () Bool)

(assert (=> bm!165071 (= call!165076 (validRegex!3249 (ite c!412643 (reg!7952 lt!905119) (ite c!412644 (regTwo!15759 lt!905119) (regOne!15758 lt!905119)))))))

(declare-fun b!2565902 () Bool)

(declare-fun e!1620001 () Bool)

(assert (=> b!2565902 (= e!1620001 call!165076)))

(declare-fun d!726537 () Bool)

(declare-fun res!1079804 () Bool)

(declare-fun e!1620002 () Bool)

(assert (=> d!726537 (=> res!1079804 e!1620002)))

(assert (=> d!726537 (= res!1079804 ((_ is ElementMatch!7623) lt!905119))))

(assert (=> d!726537 (= (validRegex!3249 lt!905119) e!1620002)))

(declare-fun b!2565903 () Bool)

(declare-fun e!1619997 () Bool)

(assert (=> b!2565903 (= e!1619997 call!165078)))

(declare-fun b!2565904 () Bool)

(declare-fun e!1619999 () Bool)

(assert (=> b!2565904 (= e!1620002 e!1619999)))

(assert (=> b!2565904 (= c!412643 ((_ is Star!7623) lt!905119))))

(declare-fun b!2565905 () Bool)

(assert (=> b!2565905 (= e!1619999 e!1620001)))

(declare-fun res!1079803 () Bool)

(assert (=> b!2565905 (= res!1079803 (not (nullable!2540 (reg!7952 lt!905119))))))

(assert (=> b!2565905 (=> (not res!1079803) (not e!1620001))))

(declare-fun b!2565906 () Bool)

(declare-fun e!1620003 () Bool)

(assert (=> b!2565906 (= e!1619999 e!1620003)))

(assert (=> b!2565906 (= c!412644 ((_ is Union!7623) lt!905119))))

(declare-fun bm!165072 () Bool)

(assert (=> bm!165072 (= call!165078 call!165076)))

(declare-fun bm!165073 () Bool)

(declare-fun call!165077 () Bool)

(assert (=> bm!165073 (= call!165077 (validRegex!3249 (ite c!412644 (regOne!15759 lt!905119) (regTwo!15758 lt!905119))))))

(declare-fun b!2565907 () Bool)

(declare-fun res!1079802 () Bool)

(assert (=> b!2565907 (=> (not res!1079802) (not e!1619997))))

(assert (=> b!2565907 (= res!1079802 call!165077)))

(assert (=> b!2565907 (= e!1620003 e!1619997)))

(declare-fun b!2565908 () Bool)

(assert (=> b!2565908 (= e!1619998 call!165077)))

(declare-fun b!2565909 () Bool)

(declare-fun res!1079806 () Bool)

(assert (=> b!2565909 (=> res!1079806 e!1620000)))

(assert (=> b!2565909 (= res!1079806 (not ((_ is Concat!12319) lt!905119)))))

(assert (=> b!2565909 (= e!1620003 e!1620000)))

(assert (= (and d!726537 (not res!1079804)) b!2565904))

(assert (= (and b!2565904 c!412643) b!2565905))

(assert (= (and b!2565904 (not c!412643)) b!2565906))

(assert (= (and b!2565905 res!1079803) b!2565902))

(assert (= (and b!2565906 c!412644) b!2565907))

(assert (= (and b!2565906 (not c!412644)) b!2565909))

(assert (= (and b!2565907 res!1079802) b!2565903))

(assert (= (and b!2565909 (not res!1079806)) b!2565901))

(assert (= (and b!2565901 res!1079805) b!2565908))

(assert (= (or b!2565907 b!2565908) bm!165073))

(assert (= (or b!2565903 b!2565901) bm!165072))

(assert (= (or b!2565902 bm!165072) bm!165071))

(declare-fun m!2904199 () Bool)

(assert (=> bm!165071 m!2904199))

(declare-fun m!2904201 () Bool)

(assert (=> b!2565905 m!2904201))

(declare-fun m!2904203 () Bool)

(assert (=> bm!165073 m!2904203))

(assert (=> d!726249 d!726537))

(assert (=> b!2565081 d!726299))

(assert (=> bm!164800 d!726477))

(declare-fun bm!165074 () Bool)

(declare-fun call!165082 () Regex!7623)

(declare-fun call!165080 () Regex!7623)

(assert (=> bm!165074 (= call!165082 call!165080)))

(declare-fun b!2565910 () Bool)

(declare-fun e!1620008 () Regex!7623)

(declare-fun call!165081 () Regex!7623)

(assert (=> b!2565910 (= e!1620008 (Union!7623 call!165080 call!165081))))

(declare-fun b!2565911 () Bool)

(declare-fun e!1620004 () Regex!7623)

(assert (=> b!2565911 (= e!1620008 e!1620004)))

(declare-fun c!412648 () Bool)

(assert (=> b!2565911 (= c!412648 ((_ is Star!7623) (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565913 () Bool)

(assert (=> b!2565913 (= e!1620004 (Concat!12319 call!165082 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565914 () Bool)

(declare-fun e!1620007 () Regex!7623)

(assert (=> b!2565914 (= e!1620007 (ite (= c!14016 (c!412277 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun call!165079 () Regex!7623)

(declare-fun b!2565915 () Bool)

(declare-fun e!1620006 () Regex!7623)

(assert (=> b!2565915 (= e!1620006 (Union!7623 (Concat!12319 call!165079 (regTwo!15758 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))) call!165081))))

(declare-fun b!2565916 () Bool)

(declare-fun e!1620005 () Regex!7623)

(assert (=> b!2565916 (= e!1620005 e!1620007)))

(declare-fun c!412647 () Bool)

(assert (=> b!2565916 (= c!412647 ((_ is ElementMatch!7623) (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565917 () Bool)

(assert (=> b!2565917 (= e!1620005 EmptyLang!7623)))

(declare-fun b!2565918 () Bool)

(assert (=> b!2565918 (= e!1620006 (Union!7623 (Concat!12319 call!165079 (regTwo!15758 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))) EmptyLang!7623))))

(declare-fun b!2565919 () Bool)

(declare-fun c!412646 () Bool)

(assert (=> b!2565919 (= c!412646 (nullable!2540 (regOne!15758 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))))))

(assert (=> b!2565919 (= e!1620004 e!1620006)))

(declare-fun bm!165075 () Bool)

(assert (=> bm!165075 (= call!165079 call!165082)))

(declare-fun d!726539 () Bool)

(declare-fun lt!905225 () Regex!7623)

(assert (=> d!726539 (validRegex!3249 lt!905225)))

(assert (=> d!726539 (= lt!905225 e!1620005)))

(declare-fun c!412649 () Bool)

(assert (=> d!726539 (= c!412649 (or ((_ is EmptyExpr!7623) (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) ((_ is EmptyLang!7623) (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))))))

(assert (=> d!726539 (validRegex!3249 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))))

(assert (=> d!726539 (= (derivativeStep!2192 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))) c!14016) lt!905225)))

(declare-fun b!2565912 () Bool)

(declare-fun c!412645 () Bool)

(assert (=> b!2565912 (= c!412645 ((_ is Union!7623) (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(assert (=> b!2565912 (= e!1620007 e!1620008)))

(declare-fun bm!165076 () Bool)

(assert (=> bm!165076 (= call!165081 (derivativeStep!2192 (ite c!412645 (regTwo!15759 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) (regTwo!15758 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))) c!14016))))

(declare-fun bm!165077 () Bool)

(assert (=> bm!165077 (= call!165080 (derivativeStep!2192 (ite c!412645 (regOne!15759 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) (ite c!412648 (reg!7952 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) (regOne!15758 (ite c!412395 (regTwo!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))) c!14016))))

(assert (= (and d!726539 c!412649) b!2565917))

(assert (= (and d!726539 (not c!412649)) b!2565916))

(assert (= (and b!2565916 c!412647) b!2565914))

(assert (= (and b!2565916 (not c!412647)) b!2565912))

(assert (= (and b!2565912 c!412645) b!2565910))

(assert (= (and b!2565912 (not c!412645)) b!2565911))

(assert (= (and b!2565911 c!412648) b!2565913))

(assert (= (and b!2565911 (not c!412648)) b!2565919))

(assert (= (and b!2565919 c!412646) b!2565915))

(assert (= (and b!2565919 (not c!412646)) b!2565918))

(assert (= (or b!2565915 b!2565918) bm!165075))

(assert (= (or b!2565913 bm!165075) bm!165074))

(assert (= (or b!2565910 b!2565915) bm!165076))

(assert (= (or b!2565910 bm!165074) bm!165077))

(declare-fun m!2904205 () Bool)

(assert (=> b!2565919 m!2904205))

(declare-fun m!2904207 () Bool)

(assert (=> d!726539 m!2904207))

(declare-fun m!2904209 () Bool)

(assert (=> d!726539 m!2904209))

(declare-fun m!2904211 () Bool)

(assert (=> bm!165076 m!2904211))

(declare-fun m!2904213 () Bool)

(assert (=> bm!165077 m!2904213))

(assert (=> bm!164849 d!726539))

(declare-fun b!2565920 () Bool)

(declare-fun e!1620012 () Bool)

(declare-fun e!1620010 () Bool)

(assert (=> b!2565920 (= e!1620012 e!1620010)))

(declare-fun res!1079810 () Bool)

(assert (=> b!2565920 (=> (not res!1079810) (not e!1620010))))

(declare-fun call!165085 () Bool)

(assert (=> b!2565920 (= res!1079810 call!165085)))

(declare-fun call!165083 () Bool)

(declare-fun c!412651 () Bool)

(declare-fun bm!165078 () Bool)

(declare-fun c!412650 () Bool)

(assert (=> bm!165078 (= call!165083 (validRegex!3249 (ite c!412650 (reg!7952 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) (ite c!412651 (regTwo!15759 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) (regOne!15758 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))))))))

(declare-fun b!2565921 () Bool)

(declare-fun e!1620013 () Bool)

(assert (=> b!2565921 (= e!1620013 call!165083)))

(declare-fun d!726541 () Bool)

(declare-fun res!1079809 () Bool)

(declare-fun e!1620014 () Bool)

(assert (=> d!726541 (=> res!1079809 e!1620014)))

(assert (=> d!726541 (= res!1079809 ((_ is ElementMatch!7623) (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(assert (=> d!726541 (= (validRegex!3249 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) e!1620014)))

(declare-fun b!2565922 () Bool)

(declare-fun e!1620009 () Bool)

(assert (=> b!2565922 (= e!1620009 call!165085)))

(declare-fun b!2565923 () Bool)

(declare-fun e!1620011 () Bool)

(assert (=> b!2565923 (= e!1620014 e!1620011)))

(assert (=> b!2565923 (= c!412650 ((_ is Star!7623) (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565924 () Bool)

(assert (=> b!2565924 (= e!1620011 e!1620013)))

(declare-fun res!1079808 () Bool)

(assert (=> b!2565924 (= res!1079808 (not (nullable!2540 (reg!7952 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))))

(assert (=> b!2565924 (=> (not res!1079808) (not e!1620013))))

(declare-fun b!2565925 () Bool)

(declare-fun e!1620015 () Bool)

(assert (=> b!2565925 (= e!1620011 e!1620015)))

(assert (=> b!2565925 (= c!412651 ((_ is Union!7623) (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))

(declare-fun bm!165079 () Bool)

(assert (=> bm!165079 (= call!165085 call!165083)))

(declare-fun call!165084 () Bool)

(declare-fun bm!165080 () Bool)

(assert (=> bm!165080 (= call!165084 (validRegex!3249 (ite c!412651 (regOne!15759 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))) (regTwo!15758 (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340)))))))))

(declare-fun b!2565926 () Bool)

(declare-fun res!1079807 () Bool)

(assert (=> b!2565926 (=> (not res!1079807) (not e!1620009))))

(assert (=> b!2565926 (= res!1079807 call!165084)))

(assert (=> b!2565926 (= e!1620015 e!1620009)))

(declare-fun b!2565927 () Bool)

(assert (=> b!2565927 (= e!1620010 call!165084)))

(declare-fun b!2565928 () Bool)

(declare-fun res!1079811 () Bool)

(assert (=> b!2565928 (=> res!1079811 e!1620012)))

(assert (=> b!2565928 (= res!1079811 (not ((_ is Concat!12319) (ite c!412307 (regOne!15759 (regTwo!15758 r!27340)) (regTwo!15758 (regTwo!15758 r!27340))))))))

(assert (=> b!2565928 (= e!1620015 e!1620012)))

(assert (= (and d!726541 (not res!1079809)) b!2565923))

(assert (= (and b!2565923 c!412650) b!2565924))

(assert (= (and b!2565923 (not c!412650)) b!2565925))

(assert (= (and b!2565924 res!1079808) b!2565921))

(assert (= (and b!2565925 c!412651) b!2565926))

(assert (= (and b!2565925 (not c!412651)) b!2565928))

(assert (= (and b!2565926 res!1079807) b!2565922))

(assert (= (and b!2565928 (not res!1079811)) b!2565920))

(assert (= (and b!2565920 res!1079810) b!2565927))

(assert (= (or b!2565926 b!2565927) bm!165080))

(assert (= (or b!2565922 b!2565920) bm!165079))

(assert (= (or b!2565921 bm!165079) bm!165078))

(declare-fun m!2904215 () Bool)

(assert (=> bm!165078 m!2904215))

(declare-fun m!2904217 () Bool)

(assert (=> b!2565924 m!2904217))

(declare-fun m!2904219 () Bool)

(assert (=> bm!165080 m!2904219))

(assert (=> bm!164779 d!726541))

(declare-fun c!412655 () Bool)

(declare-fun call!165087 () List!29688)

(declare-fun bm!165081 () Bool)

(assert (=> bm!165081 (= call!165087 (firstChars!98 (ite c!412655 (regTwo!15759 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) (regOne!15758 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(declare-fun b!2565929 () Bool)

(declare-fun e!1620020 () List!29688)

(declare-fun call!165088 () List!29688)

(assert (=> b!2565929 (= e!1620020 call!165088)))

(declare-fun bm!165082 () Bool)

(declare-fun call!165089 () List!29688)

(declare-fun call!165090 () List!29688)

(assert (=> bm!165082 (= call!165089 call!165090)))

(declare-fun d!726543 () Bool)

(declare-fun c!412652 () Bool)

(assert (=> d!726543 (= c!412652 (or ((_ is EmptyExpr!7623) (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) ((_ is EmptyLang!7623) (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun e!1620017 () List!29688)

(assert (=> d!726543 (= (firstChars!98 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) e!1620017)))

(declare-fun b!2565930 () Bool)

(declare-fun e!1620016 () List!29688)

(assert (=> b!2565930 (= e!1620017 e!1620016)))

(declare-fun c!412653 () Bool)

(assert (=> b!2565930 (= c!412653 ((_ is ElementMatch!7623) (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565931 () Bool)

(declare-fun e!1620018 () List!29688)

(declare-fun e!1620019 () List!29688)

(assert (=> b!2565931 (= e!1620018 e!1620019)))

(assert (=> b!2565931 (= c!412655 ((_ is Union!7623) (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))

(declare-fun b!2565932 () Bool)

(declare-fun call!165086 () List!29688)

(assert (=> b!2565932 (= e!1620020 call!165086)))

(declare-fun b!2565933 () Bool)

(declare-fun c!412654 () Bool)

(assert (=> b!2565933 (= c!412654 (nullable!2540 (regOne!15758 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(assert (=> b!2565933 (= e!1620019 e!1620020)))

(declare-fun b!2565934 () Bool)

(declare-fun c!412656 () Bool)

(assert (=> b!2565934 (= c!412656 ((_ is Star!7623) (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))

(assert (=> b!2565934 (= e!1620016 e!1620018)))

(declare-fun b!2565935 () Bool)

(assert (=> b!2565935 (= e!1620017 Nil!29588)))

(declare-fun bm!165083 () Bool)

(assert (=> bm!165083 (= call!165086 (++!7272 (ite c!412655 call!165089 call!165087) (ite c!412655 call!165087 call!165088)))))

(declare-fun b!2565936 () Bool)

(assert (=> b!2565936 (= e!1620018 call!165090)))

(declare-fun b!2565937 () Bool)

(assert (=> b!2565937 (= e!1620016 (Cons!29588 (c!412277 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) Nil!29588))))

(declare-fun bm!165084 () Bool)

(assert (=> bm!165084 (= call!165088 call!165089)))

(declare-fun b!2565938 () Bool)

(assert (=> b!2565938 (= e!1620019 call!165086)))

(declare-fun bm!165085 () Bool)

(assert (=> bm!165085 (= call!165090 (firstChars!98 (ite c!412656 (reg!7952 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) (ite c!412655 (regOne!15759 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) (ite c!412654 (regTwo!15758 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))) (regOne!15758 (ite c!412422 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))))

(assert (= (and d!726543 c!412652) b!2565935))

(assert (= (and d!726543 (not c!412652)) b!2565930))

(assert (= (and b!2565930 c!412653) b!2565937))

(assert (= (and b!2565930 (not c!412653)) b!2565934))

(assert (= (and b!2565934 c!412656) b!2565936))

(assert (= (and b!2565934 (not c!412656)) b!2565931))

(assert (= (and b!2565931 c!412655) b!2565938))

(assert (= (and b!2565931 (not c!412655)) b!2565933))

(assert (= (and b!2565933 c!412654) b!2565932))

(assert (= (and b!2565933 (not c!412654)) b!2565929))

(assert (= (or b!2565932 b!2565929) bm!165084))

(assert (= (or b!2565938 bm!165084) bm!165082))

(assert (= (or b!2565938 b!2565932) bm!165081))

(assert (= (or b!2565938 b!2565932) bm!165083))

(assert (= (or b!2565936 bm!165082) bm!165085))

(declare-fun m!2904221 () Bool)

(assert (=> bm!165081 m!2904221))

(declare-fun m!2904223 () Bool)

(assert (=> b!2565933 m!2904223))

(declare-fun m!2904225 () Bool)

(assert (=> bm!165083 m!2904225))

(declare-fun m!2904227 () Bool)

(assert (=> bm!165085 m!2904227))

(assert (=> bm!164866 d!726543))

(assert (=> d!726237 d!726477))

(assert (=> d!726237 d!726537))

(declare-fun d!726545 () Bool)

(assert (=> d!726545 (= (nullable!2540 lt!905122) (nullableFct!765 lt!905122))))

(declare-fun bs!469927 () Bool)

(assert (= bs!469927 d!726545))

(declare-fun m!2904229 () Bool)

(assert (=> bs!469927 m!2904229))

(assert (=> b!2564717 d!726545))

(declare-fun b!2565939 () Bool)

(declare-fun e!1620024 () Bool)

(declare-fun e!1620022 () Bool)

(assert (=> b!2565939 (= e!1620024 e!1620022)))

(declare-fun res!1079815 () Bool)

(assert (=> b!2565939 (=> (not res!1079815) (not e!1620022))))

(declare-fun call!165093 () Bool)

(assert (=> b!2565939 (= res!1079815 call!165093)))

(declare-fun c!412657 () Bool)

(declare-fun bm!165086 () Bool)

(declare-fun c!412658 () Bool)

(declare-fun call!165091 () Bool)

(assert (=> bm!165086 (= call!165091 (validRegex!3249 (ite c!412657 (reg!7952 lt!905172) (ite c!412658 (regTwo!15759 lt!905172) (regOne!15758 lt!905172)))))))

(declare-fun b!2565940 () Bool)

(declare-fun e!1620025 () Bool)

(assert (=> b!2565940 (= e!1620025 call!165091)))

(declare-fun d!726547 () Bool)

(declare-fun res!1079814 () Bool)

(declare-fun e!1620026 () Bool)

(assert (=> d!726547 (=> res!1079814 e!1620026)))

(assert (=> d!726547 (= res!1079814 ((_ is ElementMatch!7623) lt!905172))))

(assert (=> d!726547 (= (validRegex!3249 lt!905172) e!1620026)))

(declare-fun b!2565941 () Bool)

(declare-fun e!1620021 () Bool)

(assert (=> b!2565941 (= e!1620021 call!165093)))

(declare-fun b!2565942 () Bool)

(declare-fun e!1620023 () Bool)

(assert (=> b!2565942 (= e!1620026 e!1620023)))

(assert (=> b!2565942 (= c!412657 ((_ is Star!7623) lt!905172))))

(declare-fun b!2565943 () Bool)

(assert (=> b!2565943 (= e!1620023 e!1620025)))

(declare-fun res!1079813 () Bool)

(assert (=> b!2565943 (= res!1079813 (not (nullable!2540 (reg!7952 lt!905172))))))

(assert (=> b!2565943 (=> (not res!1079813) (not e!1620025))))

(declare-fun b!2565944 () Bool)

(declare-fun e!1620027 () Bool)

(assert (=> b!2565944 (= e!1620023 e!1620027)))

(assert (=> b!2565944 (= c!412658 ((_ is Union!7623) lt!905172))))

(declare-fun bm!165087 () Bool)

(assert (=> bm!165087 (= call!165093 call!165091)))

(declare-fun bm!165088 () Bool)

(declare-fun call!165092 () Bool)

(assert (=> bm!165088 (= call!165092 (validRegex!3249 (ite c!412658 (regOne!15759 lt!905172) (regTwo!15758 lt!905172))))))

(declare-fun b!2565945 () Bool)

(declare-fun res!1079812 () Bool)

(assert (=> b!2565945 (=> (not res!1079812) (not e!1620021))))

(assert (=> b!2565945 (= res!1079812 call!165092)))

(assert (=> b!2565945 (= e!1620027 e!1620021)))

(declare-fun b!2565946 () Bool)

(assert (=> b!2565946 (= e!1620022 call!165092)))

(declare-fun b!2565947 () Bool)

(declare-fun res!1079816 () Bool)

(assert (=> b!2565947 (=> res!1079816 e!1620024)))

(assert (=> b!2565947 (= res!1079816 (not ((_ is Concat!12319) lt!905172)))))

(assert (=> b!2565947 (= e!1620027 e!1620024)))

(assert (= (and d!726547 (not res!1079814)) b!2565942))

(assert (= (and b!2565942 c!412657) b!2565943))

(assert (= (and b!2565942 (not c!412657)) b!2565944))

(assert (= (and b!2565943 res!1079813) b!2565940))

(assert (= (and b!2565944 c!412658) b!2565945))

(assert (= (and b!2565944 (not c!412658)) b!2565947))

(assert (= (and b!2565945 res!1079812) b!2565941))

(assert (= (and b!2565947 (not res!1079816)) b!2565939))

(assert (= (and b!2565939 res!1079815) b!2565946))

(assert (= (or b!2565945 b!2565946) bm!165088))

(assert (= (or b!2565941 b!2565939) bm!165087))

(assert (= (or b!2565940 bm!165087) bm!165086))

(declare-fun m!2904231 () Bool)

(assert (=> bm!165086 m!2904231))

(declare-fun m!2904233 () Bool)

(assert (=> b!2565943 m!2904233))

(declare-fun m!2904235 () Bool)

(assert (=> bm!165088 m!2904235))

(assert (=> d!726279 d!726547))

(declare-fun b!2565948 () Bool)

(declare-fun e!1620031 () Bool)

(declare-fun e!1620029 () Bool)

(assert (=> b!2565948 (= e!1620031 e!1620029)))

(declare-fun res!1079820 () Bool)

(assert (=> b!2565948 (=> (not res!1079820) (not e!1620029))))

(declare-fun call!165096 () Bool)

(assert (=> b!2565948 (= res!1079820 call!165096)))

(declare-fun call!165094 () Bool)

(declare-fun c!412659 () Bool)

(declare-fun c!412660 () Bool)

(declare-fun bm!165089 () Bool)

(assert (=> bm!165089 (= call!165094 (validRegex!3249 (ite c!412659 (reg!7952 (regOne!15758 r!27340)) (ite c!412660 (regTwo!15759 (regOne!15758 r!27340)) (regOne!15758 (regOne!15758 r!27340))))))))

(declare-fun b!2565949 () Bool)

(declare-fun e!1620032 () Bool)

(assert (=> b!2565949 (= e!1620032 call!165094)))

(declare-fun d!726549 () Bool)

(declare-fun res!1079819 () Bool)

(declare-fun e!1620033 () Bool)

(assert (=> d!726549 (=> res!1079819 e!1620033)))

(assert (=> d!726549 (= res!1079819 ((_ is ElementMatch!7623) (regOne!15758 r!27340)))))

(assert (=> d!726549 (= (validRegex!3249 (regOne!15758 r!27340)) e!1620033)))

(declare-fun b!2565950 () Bool)

(declare-fun e!1620028 () Bool)

(assert (=> b!2565950 (= e!1620028 call!165096)))

(declare-fun b!2565951 () Bool)

(declare-fun e!1620030 () Bool)

(assert (=> b!2565951 (= e!1620033 e!1620030)))

(assert (=> b!2565951 (= c!412659 ((_ is Star!7623) (regOne!15758 r!27340)))))

(declare-fun b!2565952 () Bool)

(assert (=> b!2565952 (= e!1620030 e!1620032)))

(declare-fun res!1079818 () Bool)

(assert (=> b!2565952 (= res!1079818 (not (nullable!2540 (reg!7952 (regOne!15758 r!27340)))))))

(assert (=> b!2565952 (=> (not res!1079818) (not e!1620032))))

(declare-fun b!2565953 () Bool)

(declare-fun e!1620034 () Bool)

(assert (=> b!2565953 (= e!1620030 e!1620034)))

(assert (=> b!2565953 (= c!412660 ((_ is Union!7623) (regOne!15758 r!27340)))))

(declare-fun bm!165090 () Bool)

(assert (=> bm!165090 (= call!165096 call!165094)))

(declare-fun bm!165091 () Bool)

(declare-fun call!165095 () Bool)

(assert (=> bm!165091 (= call!165095 (validRegex!3249 (ite c!412660 (regOne!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))))

(declare-fun b!2565954 () Bool)

(declare-fun res!1079817 () Bool)

(assert (=> b!2565954 (=> (not res!1079817) (not e!1620028))))

(assert (=> b!2565954 (= res!1079817 call!165095)))

(assert (=> b!2565954 (= e!1620034 e!1620028)))

(declare-fun b!2565955 () Bool)

(assert (=> b!2565955 (= e!1620029 call!165095)))

(declare-fun b!2565956 () Bool)

(declare-fun res!1079821 () Bool)

(assert (=> b!2565956 (=> res!1079821 e!1620031)))

(assert (=> b!2565956 (= res!1079821 (not ((_ is Concat!12319) (regOne!15758 r!27340))))))

(assert (=> b!2565956 (= e!1620034 e!1620031)))

(assert (= (and d!726549 (not res!1079819)) b!2565951))

(assert (= (and b!2565951 c!412659) b!2565952))

(assert (= (and b!2565951 (not c!412659)) b!2565953))

(assert (= (and b!2565952 res!1079818) b!2565949))

(assert (= (and b!2565953 c!412660) b!2565954))

(assert (= (and b!2565953 (not c!412660)) b!2565956))

(assert (= (and b!2565954 res!1079817) b!2565950))

(assert (= (and b!2565956 (not res!1079821)) b!2565948))

(assert (= (and b!2565948 res!1079820) b!2565955))

(assert (= (or b!2565954 b!2565955) bm!165091))

(assert (= (or b!2565950 b!2565948) bm!165090))

(assert (= (or b!2565949 bm!165090) bm!165089))

(declare-fun m!2904237 () Bool)

(assert (=> bm!165089 m!2904237))

(declare-fun m!2904239 () Bool)

(assert (=> b!2565952 m!2904239))

(declare-fun m!2904241 () Bool)

(assert (=> bm!165091 m!2904241))

(assert (=> d!726279 d!726549))

(declare-fun d!726551 () Bool)

(assert (=> d!726551 (= (nullable!2540 (regOne!15758 (regTwo!15758 r!27340))) (nullableFct!765 (regOne!15758 (regTwo!15758 r!27340))))))

(declare-fun bs!469928 () Bool)

(assert (= bs!469928 d!726551))

(declare-fun m!2904243 () Bool)

(assert (=> bs!469928 m!2904243))

(assert (=> b!2564979 d!726551))

(declare-fun d!726553 () Bool)

(declare-fun lt!905226 () Bool)

(assert (=> d!726553 (= lt!905226 (select (content!4078 (t!211387 (firstChars!98 (regTwo!15758 r!27340)))) c!14016))))

(declare-fun e!1620035 () Bool)

(assert (=> d!726553 (= lt!905226 e!1620035)))

(declare-fun res!1079822 () Bool)

(assert (=> d!726553 (=> (not res!1079822) (not e!1620035))))

(assert (=> d!726553 (= res!1079822 ((_ is Cons!29588) (t!211387 (firstChars!98 (regTwo!15758 r!27340)))))))

(assert (=> d!726553 (= (contains!5307 (t!211387 (firstChars!98 (regTwo!15758 r!27340))) c!14016) lt!905226)))

(declare-fun b!2565957 () Bool)

(declare-fun e!1620036 () Bool)

(assert (=> b!2565957 (= e!1620035 e!1620036)))

(declare-fun res!1079823 () Bool)

(assert (=> b!2565957 (=> res!1079823 e!1620036)))

(assert (=> b!2565957 (= res!1079823 (= (h!35008 (t!211387 (firstChars!98 (regTwo!15758 r!27340)))) c!14016))))

(declare-fun b!2565958 () Bool)

(assert (=> b!2565958 (= e!1620036 (contains!5307 (t!211387 (t!211387 (firstChars!98 (regTwo!15758 r!27340)))) c!14016))))

(assert (= (and d!726553 res!1079822) b!2565957))

(assert (= (and b!2565957 (not res!1079823)) b!2565958))

(declare-fun m!2904245 () Bool)

(assert (=> d!726553 m!2904245))

(declare-fun m!2904247 () Bool)

(assert (=> d!726553 m!2904247))

(declare-fun m!2904249 () Bool)

(assert (=> b!2565958 m!2904249))

(assert (=> b!2565046 d!726553))

(declare-fun b!2565959 () Bool)

(declare-fun e!1620040 () Bool)

(declare-fun e!1620038 () Bool)

(assert (=> b!2565959 (= e!1620040 e!1620038)))

(declare-fun res!1079827 () Bool)

(assert (=> b!2565959 (=> (not res!1079827) (not e!1620038))))

(declare-fun call!165099 () Bool)

(assert (=> b!2565959 (= res!1079827 call!165099)))

(declare-fun call!165097 () Bool)

(declare-fun bm!165092 () Bool)

(declare-fun c!412662 () Bool)

(declare-fun c!412661 () Bool)

(assert (=> bm!165092 (= call!165097 (validRegex!3249 (ite c!412661 (reg!7952 lt!905168) (ite c!412662 (regTwo!15759 lt!905168) (regOne!15758 lt!905168)))))))

(declare-fun b!2565960 () Bool)

(declare-fun e!1620041 () Bool)

(assert (=> b!2565960 (= e!1620041 call!165097)))

(declare-fun d!726555 () Bool)

(declare-fun res!1079826 () Bool)

(declare-fun e!1620042 () Bool)

(assert (=> d!726555 (=> res!1079826 e!1620042)))

(assert (=> d!726555 (= res!1079826 ((_ is ElementMatch!7623) lt!905168))))

(assert (=> d!726555 (= (validRegex!3249 lt!905168) e!1620042)))

(declare-fun b!2565961 () Bool)

(declare-fun e!1620037 () Bool)

(assert (=> b!2565961 (= e!1620037 call!165099)))

(declare-fun b!2565962 () Bool)

(declare-fun e!1620039 () Bool)

(assert (=> b!2565962 (= e!1620042 e!1620039)))

(assert (=> b!2565962 (= c!412661 ((_ is Star!7623) lt!905168))))

(declare-fun b!2565963 () Bool)

(assert (=> b!2565963 (= e!1620039 e!1620041)))

(declare-fun res!1079825 () Bool)

(assert (=> b!2565963 (= res!1079825 (not (nullable!2540 (reg!7952 lt!905168))))))

(assert (=> b!2565963 (=> (not res!1079825) (not e!1620041))))

(declare-fun b!2565964 () Bool)

(declare-fun e!1620043 () Bool)

(assert (=> b!2565964 (= e!1620039 e!1620043)))

(assert (=> b!2565964 (= c!412662 ((_ is Union!7623) lt!905168))))

(declare-fun bm!165093 () Bool)

(assert (=> bm!165093 (= call!165099 call!165097)))

(declare-fun bm!165094 () Bool)

(declare-fun call!165098 () Bool)

(assert (=> bm!165094 (= call!165098 (validRegex!3249 (ite c!412662 (regOne!15759 lt!905168) (regTwo!15758 lt!905168))))))

(declare-fun b!2565965 () Bool)

(declare-fun res!1079824 () Bool)

(assert (=> b!2565965 (=> (not res!1079824) (not e!1620037))))

(assert (=> b!2565965 (= res!1079824 call!165098)))

(assert (=> b!2565965 (= e!1620043 e!1620037)))

(declare-fun b!2565966 () Bool)

(assert (=> b!2565966 (= e!1620038 call!165098)))

(declare-fun b!2565967 () Bool)

(declare-fun res!1079828 () Bool)

(assert (=> b!2565967 (=> res!1079828 e!1620040)))

(assert (=> b!2565967 (= res!1079828 (not ((_ is Concat!12319) lt!905168)))))

(assert (=> b!2565967 (= e!1620043 e!1620040)))

(assert (= (and d!726555 (not res!1079826)) b!2565962))

(assert (= (and b!2565962 c!412661) b!2565963))

(assert (= (and b!2565962 (not c!412661)) b!2565964))

(assert (= (and b!2565963 res!1079825) b!2565960))

(assert (= (and b!2565964 c!412662) b!2565965))

(assert (= (and b!2565964 (not c!412662)) b!2565967))

(assert (= (and b!2565965 res!1079824) b!2565961))

(assert (= (and b!2565967 (not res!1079828)) b!2565959))

(assert (= (and b!2565959 res!1079827) b!2565966))

(assert (= (or b!2565965 b!2565966) bm!165094))

(assert (= (or b!2565961 b!2565959) bm!165093))

(assert (= (or b!2565960 bm!165093) bm!165092))

(declare-fun m!2904251 () Bool)

(assert (=> bm!165092 m!2904251))

(declare-fun m!2904253 () Bool)

(assert (=> b!2565963 m!2904253))

(declare-fun m!2904255 () Bool)

(assert (=> bm!165094 m!2904255))

(assert (=> d!726259 d!726555))

(assert (=> d!726259 d!726223))

(declare-fun c!412666 () Bool)

(declare-fun bm!165095 () Bool)

(declare-fun call!165101 () List!29688)

(assert (=> bm!165095 (= call!165101 (firstChars!98 (ite c!412666 (regTwo!15759 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) (regOne!15758 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))))

(declare-fun b!2565968 () Bool)

(declare-fun e!1620048 () List!29688)

(declare-fun call!165102 () List!29688)

(assert (=> b!2565968 (= e!1620048 call!165102)))

(declare-fun bm!165096 () Bool)

(declare-fun call!165103 () List!29688)

(declare-fun call!165104 () List!29688)

(assert (=> bm!165096 (= call!165103 call!165104)))

(declare-fun d!726557 () Bool)

(declare-fun c!412663 () Bool)

(assert (=> d!726557 (= c!412663 (or ((_ is EmptyExpr!7623) (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) ((_ is EmptyLang!7623) (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))

(declare-fun e!1620045 () List!29688)

(assert (=> d!726557 (= (firstChars!98 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) e!1620045)))

(declare-fun b!2565969 () Bool)

(declare-fun e!1620044 () List!29688)

(assert (=> b!2565969 (= e!1620045 e!1620044)))

(declare-fun c!412664 () Bool)

(assert (=> b!2565969 (= c!412664 ((_ is ElementMatch!7623) (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))

(declare-fun b!2565970 () Bool)

(declare-fun e!1620046 () List!29688)

(declare-fun e!1620047 () List!29688)

(assert (=> b!2565970 (= e!1620046 e!1620047)))

(assert (=> b!2565970 (= c!412666 ((_ is Union!7623) (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))

(declare-fun b!2565971 () Bool)

(declare-fun call!165100 () List!29688)

(assert (=> b!2565971 (= e!1620048 call!165100)))

(declare-fun b!2565972 () Bool)

(declare-fun c!412665 () Bool)

(assert (=> b!2565972 (= c!412665 (nullable!2540 (regOne!15758 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340)))))))

(assert (=> b!2565972 (= e!1620047 e!1620048)))

(declare-fun b!2565973 () Bool)

(declare-fun c!412667 () Bool)

(assert (=> b!2565973 (= c!412667 ((_ is Star!7623) (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))

(assert (=> b!2565973 (= e!1620044 e!1620046)))

(declare-fun b!2565974 () Bool)

(assert (=> b!2565974 (= e!1620045 Nil!29588)))

(declare-fun bm!165097 () Bool)

(assert (=> bm!165097 (= call!165100 (++!7272 (ite c!412666 call!165103 call!165101) (ite c!412666 call!165101 call!165102)))))

(declare-fun b!2565975 () Bool)

(assert (=> b!2565975 (= e!1620046 call!165104)))

(declare-fun b!2565976 () Bool)

(assert (=> b!2565976 (= e!1620044 (Cons!29588 (c!412277 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) Nil!29588))))

(declare-fun bm!165098 () Bool)

(assert (=> bm!165098 (= call!165102 call!165103)))

(declare-fun b!2565977 () Bool)

(assert (=> b!2565977 (= e!1620047 call!165100)))

(declare-fun bm!165099 () Bool)

(assert (=> bm!165099 (= call!165104 (firstChars!98 (ite c!412667 (reg!7952 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) (ite c!412666 (regOne!15759 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) (ite c!412665 (regTwo!15758 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))) (regOne!15758 (ite c!412427 (regTwo!15759 r!27340) (regOne!15758 r!27340))))))))))

(assert (= (and d!726557 c!412663) b!2565974))

(assert (= (and d!726557 (not c!412663)) b!2565969))

(assert (= (and b!2565969 c!412664) b!2565976))

(assert (= (and b!2565969 (not c!412664)) b!2565973))

(assert (= (and b!2565973 c!412667) b!2565975))

(assert (= (and b!2565973 (not c!412667)) b!2565970))

(assert (= (and b!2565970 c!412666) b!2565977))

(assert (= (and b!2565970 (not c!412666)) b!2565972))

(assert (= (and b!2565972 c!412665) b!2565971))

(assert (= (and b!2565972 (not c!412665)) b!2565968))

(assert (= (or b!2565971 b!2565968) bm!165098))

(assert (= (or b!2565977 bm!165098) bm!165096))

(assert (= (or b!2565977 b!2565971) bm!165095))

(assert (= (or b!2565977 b!2565971) bm!165097))

(assert (= (or b!2565975 bm!165096) bm!165099))

(declare-fun m!2904257 () Bool)

(assert (=> bm!165095 m!2904257))

(declare-fun m!2904259 () Bool)

(assert (=> b!2565972 m!2904259))

(declare-fun m!2904261 () Bool)

(assert (=> bm!165097 m!2904261))

(declare-fun m!2904263 () Bool)

(assert (=> bm!165099 m!2904263))

(assert (=> bm!164871 d!726557))

(declare-fun d!726559 () Bool)

(declare-fun lt!905227 () Regex!7623)

(assert (=> d!726559 (validRegex!3249 lt!905227)))

(declare-fun e!1620049 () Regex!7623)

(assert (=> d!726559 (= lt!905227 e!1620049)))

(declare-fun c!412668 () Bool)

(assert (=> d!726559 (= c!412668 ((_ is Cons!29588) (t!211387 tl!4068)))))

(assert (=> d!726559 (validRegex!3249 (derivativeStep!2192 lt!905122 (h!35008 tl!4068)))))

(assert (=> d!726559 (= (derivative!318 (derivativeStep!2192 lt!905122 (h!35008 tl!4068)) (t!211387 tl!4068)) lt!905227)))

(declare-fun b!2565978 () Bool)

(assert (=> b!2565978 (= e!1620049 (derivative!318 (derivativeStep!2192 (derivativeStep!2192 lt!905122 (h!35008 tl!4068)) (h!35008 (t!211387 tl!4068))) (t!211387 (t!211387 tl!4068))))))

(declare-fun b!2565979 () Bool)

(assert (=> b!2565979 (= e!1620049 (derivativeStep!2192 lt!905122 (h!35008 tl!4068)))))

(assert (= (and d!726559 c!412668) b!2565978))

(assert (= (and d!726559 (not c!412668)) b!2565979))

(declare-fun m!2904265 () Bool)

(assert (=> d!726559 m!2904265))

(assert (=> d!726559 m!2903355))

(declare-fun m!2904267 () Bool)

(assert (=> d!726559 m!2904267))

(assert (=> b!2565978 m!2903355))

(declare-fun m!2904269 () Bool)

(assert (=> b!2565978 m!2904269))

(assert (=> b!2565978 m!2904269))

(declare-fun m!2904271 () Bool)

(assert (=> b!2565978 m!2904271))

(assert (=> b!2564589 d!726559))

(declare-fun bm!165100 () Bool)

(declare-fun call!165108 () Regex!7623)

(declare-fun call!165106 () Regex!7623)

(assert (=> bm!165100 (= call!165108 call!165106)))

(declare-fun b!2565980 () Bool)

(declare-fun e!1620054 () Regex!7623)

(declare-fun call!165107 () Regex!7623)

(assert (=> b!2565980 (= e!1620054 (Union!7623 call!165106 call!165107))))

(declare-fun b!2565981 () Bool)

(declare-fun e!1620050 () Regex!7623)

(assert (=> b!2565981 (= e!1620054 e!1620050)))

(declare-fun c!412672 () Bool)

(assert (=> b!2565981 (= c!412672 ((_ is Star!7623) lt!905122))))

(declare-fun b!2565983 () Bool)

(assert (=> b!2565983 (= e!1620050 (Concat!12319 call!165108 lt!905122))))

(declare-fun b!2565984 () Bool)

(declare-fun e!1620053 () Regex!7623)

(assert (=> b!2565984 (= e!1620053 (ite (= (h!35008 tl!4068) (c!412277 lt!905122)) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun e!1620052 () Regex!7623)

(declare-fun call!165105 () Regex!7623)

(declare-fun b!2565985 () Bool)

(assert (=> b!2565985 (= e!1620052 (Union!7623 (Concat!12319 call!165105 (regTwo!15758 lt!905122)) call!165107))))

(declare-fun b!2565986 () Bool)

(declare-fun e!1620051 () Regex!7623)

(assert (=> b!2565986 (= e!1620051 e!1620053)))

(declare-fun c!412671 () Bool)

(assert (=> b!2565986 (= c!412671 ((_ is ElementMatch!7623) lt!905122))))

(declare-fun b!2565987 () Bool)

(assert (=> b!2565987 (= e!1620051 EmptyLang!7623)))

(declare-fun b!2565988 () Bool)

(assert (=> b!2565988 (= e!1620052 (Union!7623 (Concat!12319 call!165105 (regTwo!15758 lt!905122)) EmptyLang!7623))))

(declare-fun b!2565989 () Bool)

(declare-fun c!412670 () Bool)

(assert (=> b!2565989 (= c!412670 (nullable!2540 (regOne!15758 lt!905122)))))

(assert (=> b!2565989 (= e!1620050 e!1620052)))

(declare-fun bm!165101 () Bool)

(assert (=> bm!165101 (= call!165105 call!165108)))

(declare-fun d!726561 () Bool)

(declare-fun lt!905228 () Regex!7623)

(assert (=> d!726561 (validRegex!3249 lt!905228)))

(assert (=> d!726561 (= lt!905228 e!1620051)))

(declare-fun c!412673 () Bool)

(assert (=> d!726561 (= c!412673 (or ((_ is EmptyExpr!7623) lt!905122) ((_ is EmptyLang!7623) lt!905122)))))

(assert (=> d!726561 (validRegex!3249 lt!905122)))

(assert (=> d!726561 (= (derivativeStep!2192 lt!905122 (h!35008 tl!4068)) lt!905228)))

(declare-fun b!2565982 () Bool)

(declare-fun c!412669 () Bool)

(assert (=> b!2565982 (= c!412669 ((_ is Union!7623) lt!905122))))

(assert (=> b!2565982 (= e!1620053 e!1620054)))

(declare-fun bm!165102 () Bool)

(assert (=> bm!165102 (= call!165107 (derivativeStep!2192 (ite c!412669 (regTwo!15759 lt!905122) (regTwo!15758 lt!905122)) (h!35008 tl!4068)))))

(declare-fun bm!165103 () Bool)

(assert (=> bm!165103 (= call!165106 (derivativeStep!2192 (ite c!412669 (regOne!15759 lt!905122) (ite c!412672 (reg!7952 lt!905122) (regOne!15758 lt!905122))) (h!35008 tl!4068)))))

(assert (= (and d!726561 c!412673) b!2565987))

(assert (= (and d!726561 (not c!412673)) b!2565986))

(assert (= (and b!2565986 c!412671) b!2565984))

(assert (= (and b!2565986 (not c!412671)) b!2565982))

(assert (= (and b!2565982 c!412669) b!2565980))

(assert (= (and b!2565982 (not c!412669)) b!2565981))

(assert (= (and b!2565981 c!412672) b!2565983))

(assert (= (and b!2565981 (not c!412672)) b!2565989))

(assert (= (and b!2565989 c!412670) b!2565985))

(assert (= (and b!2565989 (not c!412670)) b!2565988))

(assert (= (or b!2565985 b!2565988) bm!165101))

(assert (= (or b!2565983 bm!165101) bm!165100))

(assert (= (or b!2565980 b!2565985) bm!165102))

(assert (= (or b!2565980 bm!165100) bm!165103))

(declare-fun m!2904273 () Bool)

(assert (=> b!2565989 m!2904273))

(declare-fun m!2904275 () Bool)

(assert (=> d!726561 m!2904275))

(assert (=> d!726561 m!2903353))

(declare-fun m!2904277 () Bool)

(assert (=> bm!165102 m!2904277))

(declare-fun m!2904279 () Bool)

(assert (=> bm!165103 m!2904279))

(assert (=> b!2564589 d!726561))

(declare-fun c!412677 () Bool)

(declare-fun call!165110 () List!29688)

(declare-fun bm!165104 () Bool)

(assert (=> bm!165104 (= call!165110 (firstChars!98 (ite c!412677 (regTwo!15759 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) (regOne!15758 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))))

(declare-fun b!2565990 () Bool)

(declare-fun e!1620059 () List!29688)

(declare-fun call!165111 () List!29688)

(assert (=> b!2565990 (= e!1620059 call!165111)))

(declare-fun bm!165105 () Bool)

(declare-fun call!165112 () List!29688)

(declare-fun call!165113 () List!29688)

(assert (=> bm!165105 (= call!165112 call!165113)))

(declare-fun d!726563 () Bool)

(declare-fun c!412674 () Bool)

(assert (=> d!726563 (= c!412674 (or ((_ is EmptyExpr!7623) (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) ((_ is EmptyLang!7623) (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))))

(declare-fun e!1620056 () List!29688)

(assert (=> d!726563 (= (firstChars!98 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) e!1620056)))

(declare-fun b!2565991 () Bool)

(declare-fun e!1620055 () List!29688)

(assert (=> b!2565991 (= e!1620056 e!1620055)))

(declare-fun c!412675 () Bool)

(assert (=> b!2565991 (= c!412675 ((_ is ElementMatch!7623) (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(declare-fun b!2565992 () Bool)

(declare-fun e!1620057 () List!29688)

(declare-fun e!1620058 () List!29688)

(assert (=> b!2565992 (= e!1620057 e!1620058)))

(assert (=> b!2565992 (= c!412677 ((_ is Union!7623) (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(declare-fun b!2565993 () Bool)

(declare-fun call!165109 () List!29688)

(assert (=> b!2565993 (= e!1620059 call!165109)))

(declare-fun c!412676 () Bool)

(declare-fun b!2565994 () Bool)

(assert (=> b!2565994 (= c!412676 (nullable!2540 (regOne!15758 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))))

(assert (=> b!2565994 (= e!1620058 e!1620059)))

(declare-fun b!2565995 () Bool)

(declare-fun c!412678 () Bool)

(assert (=> b!2565995 (= c!412678 ((_ is Star!7623) (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(assert (=> b!2565995 (= e!1620055 e!1620057)))

(declare-fun b!2565996 () Bool)

(assert (=> b!2565996 (= e!1620056 Nil!29588)))

(declare-fun bm!165106 () Bool)

(assert (=> bm!165106 (= call!165109 (++!7272 (ite c!412677 call!165112 call!165110) (ite c!412677 call!165110 call!165111)))))

(declare-fun b!2565997 () Bool)

(assert (=> b!2565997 (= e!1620057 call!165113)))

(declare-fun b!2565998 () Bool)

(assert (=> b!2565998 (= e!1620055 (Cons!29588 (c!412277 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) Nil!29588))))

(declare-fun bm!165107 () Bool)

(assert (=> bm!165107 (= call!165111 call!165112)))

(declare-fun b!2565999 () Bool)

(assert (=> b!2565999 (= e!1620058 call!165109)))

(declare-fun bm!165108 () Bool)

(assert (=> bm!165108 (= call!165113 (firstChars!98 (ite c!412678 (reg!7952 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) (ite c!412677 (regOne!15759 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) (ite c!412676 (regTwo!15758 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))) (regOne!15758 (ite c!412423 (reg!7952 (regTwo!15758 r!27340)) (ite c!412422 (regOne!15759 (regTwo!15758 r!27340)) (ite c!412421 (regTwo!15758 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))))))

(assert (= (and d!726563 c!412674) b!2565996))

(assert (= (and d!726563 (not c!412674)) b!2565991))

(assert (= (and b!2565991 c!412675) b!2565998))

(assert (= (and b!2565991 (not c!412675)) b!2565995))

(assert (= (and b!2565995 c!412678) b!2565997))

(assert (= (and b!2565995 (not c!412678)) b!2565992))

(assert (= (and b!2565992 c!412677) b!2565999))

(assert (= (and b!2565992 (not c!412677)) b!2565994))

(assert (= (and b!2565994 c!412676) b!2565993))

(assert (= (and b!2565994 (not c!412676)) b!2565990))

(assert (= (or b!2565993 b!2565990) bm!165107))

(assert (= (or b!2565999 bm!165107) bm!165105))

(assert (= (or b!2565999 b!2565993) bm!165104))

(assert (= (or b!2565999 b!2565993) bm!165106))

(assert (= (or b!2565997 bm!165105) bm!165108))

(declare-fun m!2904281 () Bool)

(assert (=> bm!165104 m!2904281))

(declare-fun m!2904283 () Bool)

(assert (=> b!2565994 m!2904283))

(declare-fun m!2904285 () Bool)

(assert (=> bm!165106 m!2904285))

(declare-fun m!2904287 () Bool)

(assert (=> bm!165108 m!2904287))

(assert (=> bm!164870 d!726563))

(declare-fun bm!165109 () Bool)

(declare-fun call!165117 () Regex!7623)

(declare-fun call!165115 () Regex!7623)

(assert (=> bm!165109 (= call!165117 call!165115)))

(declare-fun b!2566000 () Bool)

(declare-fun e!1620064 () Regex!7623)

(declare-fun call!165116 () Regex!7623)

(assert (=> b!2566000 (= e!1620064 (Union!7623 call!165115 call!165116))))

(declare-fun b!2566001 () Bool)

(declare-fun e!1620060 () Regex!7623)

(assert (=> b!2566001 (= e!1620064 e!1620060)))

(declare-fun c!412682 () Bool)

(assert (=> b!2566001 (= c!412682 ((_ is Star!7623) (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))))))

(declare-fun b!2566003 () Bool)

(assert (=> b!2566003 (= e!1620060 (Concat!12319 call!165117 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))))))

(declare-fun b!2566004 () Bool)

(declare-fun e!1620063 () Regex!7623)

(assert (=> b!2566004 (= e!1620063 (ite (= c!14016 (c!412277 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun e!1620062 () Regex!7623)

(declare-fun b!2566005 () Bool)

(declare-fun call!165114 () Regex!7623)

(assert (=> b!2566005 (= e!1620062 (Union!7623 (Concat!12319 call!165114 (regTwo!15758 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))) call!165116))))

(declare-fun b!2566006 () Bool)

(declare-fun e!1620061 () Regex!7623)

(assert (=> b!2566006 (= e!1620061 e!1620063)))

(declare-fun c!412681 () Bool)

(assert (=> b!2566006 (= c!412681 ((_ is ElementMatch!7623) (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))))))

(declare-fun b!2566007 () Bool)

(assert (=> b!2566007 (= e!1620061 EmptyLang!7623)))

(declare-fun b!2566008 () Bool)

(assert (=> b!2566008 (= e!1620062 (Union!7623 (Concat!12319 call!165114 (regTwo!15758 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))) EmptyLang!7623))))

(declare-fun b!2566009 () Bool)

(declare-fun c!412680 () Bool)

(assert (=> b!2566009 (= c!412680 (nullable!2540 (regOne!15758 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))))))

(assert (=> b!2566009 (= e!1620060 e!1620062)))

(declare-fun bm!165110 () Bool)

(assert (=> bm!165110 (= call!165114 call!165117)))

(declare-fun d!726565 () Bool)

(declare-fun lt!905229 () Regex!7623)

(assert (=> d!726565 (validRegex!3249 lt!905229)))

(assert (=> d!726565 (= lt!905229 e!1620061)))

(declare-fun c!412683 () Bool)

(assert (=> d!726565 (= c!412683 (or ((_ is EmptyExpr!7623) (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))) ((_ is EmptyLang!7623) (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))))))

(assert (=> d!726565 (validRegex!3249 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))))

(assert (=> d!726565 (= (derivativeStep!2192 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))) c!14016) lt!905229)))

(declare-fun b!2566002 () Bool)

(declare-fun c!412679 () Bool)

(assert (=> b!2566002 (= c!412679 ((_ is Union!7623) (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))))))

(assert (=> b!2566002 (= e!1620063 e!1620064)))

(declare-fun bm!165111 () Bool)

(assert (=> bm!165111 (= call!165116 (derivativeStep!2192 (ite c!412679 (regTwo!15759 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))) (regTwo!15758 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340))))) c!14016))))

(declare-fun bm!165112 () Bool)

(assert (=> bm!165112 (= call!165115 (derivativeStep!2192 (ite c!412679 (regOne!15759 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))) (ite c!412682 (reg!7952 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))) (regOne!15758 (ite c!412431 (regOne!15759 r!27340) (ite c!412434 (reg!7952 r!27340) (regOne!15758 r!27340)))))) c!14016))))

(assert (= (and d!726565 c!412683) b!2566007))

(assert (= (and d!726565 (not c!412683)) b!2566006))

(assert (= (and b!2566006 c!412681) b!2566004))

(assert (= (and b!2566006 (not c!412681)) b!2566002))

(assert (= (and b!2566002 c!412679) b!2566000))

(assert (= (and b!2566002 (not c!412679)) b!2566001))

(assert (= (and b!2566001 c!412682) b!2566003))

(assert (= (and b!2566001 (not c!412682)) b!2566009))

(assert (= (and b!2566009 c!412680) b!2566005))

(assert (= (and b!2566009 (not c!412680)) b!2566008))

(assert (= (or b!2566005 b!2566008) bm!165110))

(assert (= (or b!2566003 bm!165110) bm!165109))

(assert (= (or b!2566000 b!2566005) bm!165111))

(assert (= (or b!2566000 bm!165109) bm!165112))

(declare-fun m!2904289 () Bool)

(assert (=> b!2566009 m!2904289))

(declare-fun m!2904291 () Bool)

(assert (=> d!726565 m!2904291))

(declare-fun m!2904293 () Bool)

(assert (=> d!726565 m!2904293))

(declare-fun m!2904295 () Bool)

(assert (=> bm!165111 m!2904295))

(declare-fun m!2904297 () Bool)

(assert (=> bm!165112 m!2904297))

(assert (=> bm!164879 d!726565))

(declare-fun b!2566010 () Bool)

(declare-fun e!1620068 () Bool)

(declare-fun e!1620066 () Bool)

(assert (=> b!2566010 (= e!1620068 e!1620066)))

(declare-fun res!1079832 () Bool)

(assert (=> b!2566010 (=> (not res!1079832) (not e!1620066))))

(declare-fun lt!905230 () Bool)

(assert (=> b!2566010 (= res!1079832 (not lt!905230))))

(declare-fun bm!165113 () Bool)

(declare-fun call!165118 () Bool)

(assert (=> bm!165113 (= call!165118 (isEmpty!17046 (tail!4105 tl!4068)))))

(declare-fun b!2566012 () Bool)

(declare-fun res!1079831 () Bool)

(declare-fun e!1620065 () Bool)

(assert (=> b!2566012 (=> (not res!1079831) (not e!1620065))))

(assert (=> b!2566012 (= res!1079831 (isEmpty!17046 (tail!4105 (tail!4105 tl!4068))))))

(declare-fun b!2566013 () Bool)

(declare-fun e!1620067 () Bool)

(assert (=> b!2566013 (= e!1620067 (not lt!905230))))

(declare-fun b!2566014 () Bool)

(declare-fun e!1620070 () Bool)

(assert (=> b!2566014 (= e!1620070 (matchR!3568 (derivativeStep!2192 (derivativeStep!2192 lt!905122 (head!5830 tl!4068)) (head!5830 (tail!4105 tl!4068))) (tail!4105 (tail!4105 tl!4068))))))

(declare-fun b!2566015 () Bool)

(declare-fun res!1079829 () Bool)

(assert (=> b!2566015 (=> res!1079829 e!1620068)))

(assert (=> b!2566015 (= res!1079829 (not ((_ is ElementMatch!7623) (derivativeStep!2192 lt!905122 (head!5830 tl!4068)))))))

(assert (=> b!2566015 (= e!1620067 e!1620068)))

(declare-fun b!2566016 () Bool)

(assert (=> b!2566016 (= e!1620065 (= (head!5830 (tail!4105 tl!4068)) (c!412277 (derivativeStep!2192 lt!905122 (head!5830 tl!4068)))))))

(declare-fun b!2566017 () Bool)

(declare-fun e!1620069 () Bool)

(assert (=> b!2566017 (= e!1620069 (= lt!905230 call!165118))))

(declare-fun b!2566018 () Bool)

(declare-fun e!1620071 () Bool)

(assert (=> b!2566018 (= e!1620071 (not (= (head!5830 (tail!4105 tl!4068)) (c!412277 (derivativeStep!2192 lt!905122 (head!5830 tl!4068))))))))

(declare-fun b!2566019 () Bool)

(assert (=> b!2566019 (= e!1620070 (nullable!2540 (derivativeStep!2192 lt!905122 (head!5830 tl!4068))))))

(declare-fun b!2566020 () Bool)

(declare-fun res!1079833 () Bool)

(assert (=> b!2566020 (=> (not res!1079833) (not e!1620065))))

(assert (=> b!2566020 (= res!1079833 (not call!165118))))

(declare-fun b!2566021 () Bool)

(declare-fun res!1079836 () Bool)

(assert (=> b!2566021 (=> res!1079836 e!1620071)))

(assert (=> b!2566021 (= res!1079836 (not (isEmpty!17046 (tail!4105 (tail!4105 tl!4068)))))))

(declare-fun d!726567 () Bool)

(assert (=> d!726567 e!1620069))

(declare-fun c!412684 () Bool)

(assert (=> d!726567 (= c!412684 ((_ is EmptyExpr!7623) (derivativeStep!2192 lt!905122 (head!5830 tl!4068))))))

(assert (=> d!726567 (= lt!905230 e!1620070)))

(declare-fun c!412686 () Bool)

(assert (=> d!726567 (= c!412686 (isEmpty!17046 (tail!4105 tl!4068)))))

(assert (=> d!726567 (validRegex!3249 (derivativeStep!2192 lt!905122 (head!5830 tl!4068)))))

(assert (=> d!726567 (= (matchR!3568 (derivativeStep!2192 lt!905122 (head!5830 tl!4068)) (tail!4105 tl!4068)) lt!905230)))

(declare-fun b!2566011 () Bool)

(assert (=> b!2566011 (= e!1620066 e!1620071)))

(declare-fun res!1079830 () Bool)

(assert (=> b!2566011 (=> res!1079830 e!1620071)))

(assert (=> b!2566011 (= res!1079830 call!165118)))

(declare-fun b!2566022 () Bool)

(declare-fun res!1079834 () Bool)

(assert (=> b!2566022 (=> res!1079834 e!1620068)))

(assert (=> b!2566022 (= res!1079834 e!1620065)))

(declare-fun res!1079835 () Bool)

(assert (=> b!2566022 (=> (not res!1079835) (not e!1620065))))

(assert (=> b!2566022 (= res!1079835 lt!905230)))

(declare-fun b!2566023 () Bool)

(assert (=> b!2566023 (= e!1620069 e!1620067)))

(declare-fun c!412685 () Bool)

(assert (=> b!2566023 (= c!412685 ((_ is EmptyLang!7623) (derivativeStep!2192 lt!905122 (head!5830 tl!4068))))))

(assert (= (and d!726567 c!412686) b!2566019))

(assert (= (and d!726567 (not c!412686)) b!2566014))

(assert (= (and d!726567 c!412684) b!2566017))

(assert (= (and d!726567 (not c!412684)) b!2566023))

(assert (= (and b!2566023 c!412685) b!2566013))

(assert (= (and b!2566023 (not c!412685)) b!2566015))

(assert (= (and b!2566015 (not res!1079829)) b!2566022))

(assert (= (and b!2566022 res!1079835) b!2566020))

(assert (= (and b!2566020 res!1079833) b!2566012))

(assert (= (and b!2566012 res!1079831) b!2566016))

(assert (= (and b!2566022 (not res!1079834)) b!2566010))

(assert (= (and b!2566010 res!1079832) b!2566011))

(assert (= (and b!2566011 (not res!1079830)) b!2566021))

(assert (= (and b!2566021 (not res!1079836)) b!2566018))

(assert (= (or b!2566017 b!2566011 b!2566020) bm!165113))

(assert (=> b!2566014 m!2903407))

(assert (=> b!2566014 m!2904017))

(assert (=> b!2566014 m!2903405))

(assert (=> b!2566014 m!2904017))

(declare-fun m!2904299 () Bool)

(assert (=> b!2566014 m!2904299))

(assert (=> b!2566014 m!2903407))

(assert (=> b!2566014 m!2904021))

(assert (=> b!2566014 m!2904299))

(assert (=> b!2566014 m!2904021))

(declare-fun m!2904301 () Bool)

(assert (=> b!2566014 m!2904301))

(assert (=> b!2566012 m!2903407))

(assert (=> b!2566012 m!2904021))

(assert (=> b!2566012 m!2904021))

(assert (=> b!2566012 m!2904025))

(assert (=> b!2566018 m!2903407))

(assert (=> b!2566018 m!2904017))

(assert (=> bm!165113 m!2903407))

(assert (=> bm!165113 m!2903411))

(assert (=> d!726567 m!2903407))

(assert (=> d!726567 m!2903411))

(assert (=> d!726567 m!2903405))

(declare-fun m!2904303 () Bool)

(assert (=> d!726567 m!2904303))

(assert (=> b!2566019 m!2903405))

(declare-fun m!2904305 () Bool)

(assert (=> b!2566019 m!2904305))

(assert (=> b!2566021 m!2903407))

(assert (=> b!2566021 m!2904021))

(assert (=> b!2566021 m!2904021))

(assert (=> b!2566021 m!2904025))

(assert (=> b!2566016 m!2903407))

(assert (=> b!2566016 m!2904017))

(assert (=> b!2564712 d!726567))

(declare-fun bm!165114 () Bool)

(declare-fun call!165122 () Regex!7623)

(declare-fun call!165120 () Regex!7623)

(assert (=> bm!165114 (= call!165122 call!165120)))

(declare-fun b!2566024 () Bool)

(declare-fun e!1620076 () Regex!7623)

(declare-fun call!165121 () Regex!7623)

(assert (=> b!2566024 (= e!1620076 (Union!7623 call!165120 call!165121))))

(declare-fun b!2566025 () Bool)

(declare-fun e!1620072 () Regex!7623)

(assert (=> b!2566025 (= e!1620076 e!1620072)))

(declare-fun c!412690 () Bool)

(assert (=> b!2566025 (= c!412690 ((_ is Star!7623) lt!905122))))

(declare-fun b!2566027 () Bool)

(assert (=> b!2566027 (= e!1620072 (Concat!12319 call!165122 lt!905122))))

(declare-fun b!2566028 () Bool)

(declare-fun e!1620075 () Regex!7623)

(assert (=> b!2566028 (= e!1620075 (ite (= (head!5830 tl!4068) (c!412277 lt!905122)) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun b!2566029 () Bool)

(declare-fun e!1620074 () Regex!7623)

(declare-fun call!165119 () Regex!7623)

(assert (=> b!2566029 (= e!1620074 (Union!7623 (Concat!12319 call!165119 (regTwo!15758 lt!905122)) call!165121))))

(declare-fun b!2566030 () Bool)

(declare-fun e!1620073 () Regex!7623)

(assert (=> b!2566030 (= e!1620073 e!1620075)))

(declare-fun c!412689 () Bool)

(assert (=> b!2566030 (= c!412689 ((_ is ElementMatch!7623) lt!905122))))

(declare-fun b!2566031 () Bool)

(assert (=> b!2566031 (= e!1620073 EmptyLang!7623)))

(declare-fun b!2566032 () Bool)

(assert (=> b!2566032 (= e!1620074 (Union!7623 (Concat!12319 call!165119 (regTwo!15758 lt!905122)) EmptyLang!7623))))

(declare-fun b!2566033 () Bool)

(declare-fun c!412688 () Bool)

(assert (=> b!2566033 (= c!412688 (nullable!2540 (regOne!15758 lt!905122)))))

(assert (=> b!2566033 (= e!1620072 e!1620074)))

(declare-fun bm!165115 () Bool)

(assert (=> bm!165115 (= call!165119 call!165122)))

(declare-fun d!726569 () Bool)

(declare-fun lt!905231 () Regex!7623)

(assert (=> d!726569 (validRegex!3249 lt!905231)))

(assert (=> d!726569 (= lt!905231 e!1620073)))

(declare-fun c!412691 () Bool)

(assert (=> d!726569 (= c!412691 (or ((_ is EmptyExpr!7623) lt!905122) ((_ is EmptyLang!7623) lt!905122)))))

(assert (=> d!726569 (validRegex!3249 lt!905122)))

(assert (=> d!726569 (= (derivativeStep!2192 lt!905122 (head!5830 tl!4068)) lt!905231)))

(declare-fun b!2566026 () Bool)

(declare-fun c!412687 () Bool)

(assert (=> b!2566026 (= c!412687 ((_ is Union!7623) lt!905122))))

(assert (=> b!2566026 (= e!1620075 e!1620076)))

(declare-fun bm!165116 () Bool)

(assert (=> bm!165116 (= call!165121 (derivativeStep!2192 (ite c!412687 (regTwo!15759 lt!905122) (regTwo!15758 lt!905122)) (head!5830 tl!4068)))))

(declare-fun bm!165117 () Bool)

(assert (=> bm!165117 (= call!165120 (derivativeStep!2192 (ite c!412687 (regOne!15759 lt!905122) (ite c!412690 (reg!7952 lt!905122) (regOne!15758 lt!905122))) (head!5830 tl!4068)))))

(assert (= (and d!726569 c!412691) b!2566031))

(assert (= (and d!726569 (not c!412691)) b!2566030))

(assert (= (and b!2566030 c!412689) b!2566028))

(assert (= (and b!2566030 (not c!412689)) b!2566026))

(assert (= (and b!2566026 c!412687) b!2566024))

(assert (= (and b!2566026 (not c!412687)) b!2566025))

(assert (= (and b!2566025 c!412690) b!2566027))

(assert (= (and b!2566025 (not c!412690)) b!2566033))

(assert (= (and b!2566033 c!412688) b!2566029))

(assert (= (and b!2566033 (not c!412688)) b!2566032))

(assert (= (or b!2566029 b!2566032) bm!165115))

(assert (= (or b!2566027 bm!165115) bm!165114))

(assert (= (or b!2566024 b!2566029) bm!165116))

(assert (= (or b!2566024 bm!165114) bm!165117))

(assert (=> b!2566033 m!2904273))

(declare-fun m!2904307 () Bool)

(assert (=> d!726569 m!2904307))

(assert (=> d!726569 m!2903353))

(assert (=> bm!165116 m!2903403))

(declare-fun m!2904309 () Bool)

(assert (=> bm!165116 m!2904309))

(assert (=> bm!165117 m!2903403))

(declare-fun m!2904311 () Bool)

(assert (=> bm!165117 m!2904311))

(assert (=> b!2564712 d!726569))

(assert (=> b!2564712 d!726459))

(assert (=> b!2564712 d!726461))

(declare-fun d!726571 () Bool)

(declare-fun lt!905232 () Regex!7623)

(assert (=> d!726571 (validRegex!3249 lt!905232)))

(declare-fun e!1620077 () Regex!7623)

(assert (=> d!726571 (= lt!905232 e!1620077)))

(declare-fun c!412692 () Bool)

(assert (=> d!726571 (= c!412692 ((_ is Cons!29588) (t!211387 tl!4068)))))

(assert (=> d!726571 (validRegex!3249 (derivativeStep!2192 lt!905116 (h!35008 tl!4068)))))

(assert (=> d!726571 (= (derivative!318 (derivativeStep!2192 lt!905116 (h!35008 tl!4068)) (t!211387 tl!4068)) lt!905232)))

(declare-fun b!2566034 () Bool)

(assert (=> b!2566034 (= e!1620077 (derivative!318 (derivativeStep!2192 (derivativeStep!2192 lt!905116 (h!35008 tl!4068)) (h!35008 (t!211387 tl!4068))) (t!211387 (t!211387 tl!4068))))))

(declare-fun b!2566035 () Bool)

(assert (=> b!2566035 (= e!1620077 (derivativeStep!2192 lt!905116 (h!35008 tl!4068)))))

(assert (= (and d!726571 c!412692) b!2566034))

(assert (= (and d!726571 (not c!412692)) b!2566035))

(declare-fun m!2904313 () Bool)

(assert (=> d!726571 m!2904313))

(assert (=> d!726571 m!2903459))

(declare-fun m!2904315 () Bool)

(assert (=> d!726571 m!2904315))

(assert (=> b!2566034 m!2903459))

(declare-fun m!2904317 () Bool)

(assert (=> b!2566034 m!2904317))

(assert (=> b!2566034 m!2904317))

(declare-fun m!2904319 () Bool)

(assert (=> b!2566034 m!2904319))

(assert (=> b!2564790 d!726571))

(declare-fun bm!165118 () Bool)

(declare-fun call!165126 () Regex!7623)

(declare-fun call!165124 () Regex!7623)

(assert (=> bm!165118 (= call!165126 call!165124)))

(declare-fun b!2566036 () Bool)

(declare-fun e!1620082 () Regex!7623)

(declare-fun call!165125 () Regex!7623)

(assert (=> b!2566036 (= e!1620082 (Union!7623 call!165124 call!165125))))

(declare-fun b!2566037 () Bool)

(declare-fun e!1620078 () Regex!7623)

(assert (=> b!2566037 (= e!1620082 e!1620078)))

(declare-fun c!412696 () Bool)

(assert (=> b!2566037 (= c!412696 ((_ is Star!7623) lt!905116))))

(declare-fun b!2566039 () Bool)

(assert (=> b!2566039 (= e!1620078 (Concat!12319 call!165126 lt!905116))))

(declare-fun b!2566040 () Bool)

(declare-fun e!1620081 () Regex!7623)

(assert (=> b!2566040 (= e!1620081 (ite (= (h!35008 tl!4068) (c!412277 lt!905116)) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun b!2566041 () Bool)

(declare-fun call!165123 () Regex!7623)

(declare-fun e!1620080 () Regex!7623)

(assert (=> b!2566041 (= e!1620080 (Union!7623 (Concat!12319 call!165123 (regTwo!15758 lt!905116)) call!165125))))

(declare-fun b!2566042 () Bool)

(declare-fun e!1620079 () Regex!7623)

(assert (=> b!2566042 (= e!1620079 e!1620081)))

(declare-fun c!412695 () Bool)

(assert (=> b!2566042 (= c!412695 ((_ is ElementMatch!7623) lt!905116))))

(declare-fun b!2566043 () Bool)

(assert (=> b!2566043 (= e!1620079 EmptyLang!7623)))

(declare-fun b!2566044 () Bool)

(assert (=> b!2566044 (= e!1620080 (Union!7623 (Concat!12319 call!165123 (regTwo!15758 lt!905116)) EmptyLang!7623))))

(declare-fun b!2566045 () Bool)

(declare-fun c!412694 () Bool)

(assert (=> b!2566045 (= c!412694 (nullable!2540 (regOne!15758 lt!905116)))))

(assert (=> b!2566045 (= e!1620078 e!1620080)))

(declare-fun bm!165119 () Bool)

(assert (=> bm!165119 (= call!165123 call!165126)))

(declare-fun d!726573 () Bool)

(declare-fun lt!905233 () Regex!7623)

(assert (=> d!726573 (validRegex!3249 lt!905233)))

(assert (=> d!726573 (= lt!905233 e!1620079)))

(declare-fun c!412697 () Bool)

(assert (=> d!726573 (= c!412697 (or ((_ is EmptyExpr!7623) lt!905116) ((_ is EmptyLang!7623) lt!905116)))))

(assert (=> d!726573 (validRegex!3249 lt!905116)))

(assert (=> d!726573 (= (derivativeStep!2192 lt!905116 (h!35008 tl!4068)) lt!905233)))

(declare-fun b!2566038 () Bool)

(declare-fun c!412693 () Bool)

(assert (=> b!2566038 (= c!412693 ((_ is Union!7623) lt!905116))))

(assert (=> b!2566038 (= e!1620081 e!1620082)))

(declare-fun bm!165120 () Bool)

(assert (=> bm!165120 (= call!165125 (derivativeStep!2192 (ite c!412693 (regTwo!15759 lt!905116) (regTwo!15758 lt!905116)) (h!35008 tl!4068)))))

(declare-fun bm!165121 () Bool)

(assert (=> bm!165121 (= call!165124 (derivativeStep!2192 (ite c!412693 (regOne!15759 lt!905116) (ite c!412696 (reg!7952 lt!905116) (regOne!15758 lt!905116))) (h!35008 tl!4068)))))

(assert (= (and d!726573 c!412697) b!2566043))

(assert (= (and d!726573 (not c!412697)) b!2566042))

(assert (= (and b!2566042 c!412695) b!2566040))

(assert (= (and b!2566042 (not c!412695)) b!2566038))

(assert (= (and b!2566038 c!412693) b!2566036))

(assert (= (and b!2566038 (not c!412693)) b!2566037))

(assert (= (and b!2566037 c!412696) b!2566039))

(assert (= (and b!2566037 (not c!412696)) b!2566045))

(assert (= (and b!2566045 c!412694) b!2566041))

(assert (= (and b!2566045 (not c!412694)) b!2566044))

(assert (= (or b!2566041 b!2566044) bm!165119))

(assert (= (or b!2566039 bm!165119) bm!165118))

(assert (= (or b!2566036 b!2566041) bm!165120))

(assert (= (or b!2566036 bm!165118) bm!165121))

(assert (=> b!2566045 m!2904187))

(declare-fun m!2904321 () Bool)

(assert (=> d!726573 m!2904321))

(assert (=> d!726573 m!2903457))

(declare-fun m!2904323 () Bool)

(assert (=> bm!165120 m!2904323))

(declare-fun m!2904325 () Bool)

(assert (=> bm!165121 m!2904325))

(assert (=> b!2564790 d!726573))

(assert (=> b!2564710 d!726475))

(assert (=> b!2564710 d!726461))

(declare-fun b!2566046 () Bool)

(declare-fun e!1620086 () Bool)

(declare-fun e!1620084 () Bool)

(assert (=> b!2566046 (= e!1620086 e!1620084)))

(declare-fun res!1079840 () Bool)

(assert (=> b!2566046 (=> (not res!1079840) (not e!1620084))))

(declare-fun call!165129 () Bool)

(assert (=> b!2566046 (= res!1079840 call!165129)))

(declare-fun c!412698 () Bool)

(declare-fun c!412699 () Bool)

(declare-fun call!165127 () Bool)

(declare-fun bm!165122 () Bool)

(assert (=> bm!165122 (= call!165127 (validRegex!3249 (ite c!412698 (reg!7952 lt!905183) (ite c!412699 (regTwo!15759 lt!905183) (regOne!15758 lt!905183)))))))

(declare-fun b!2566047 () Bool)

(declare-fun e!1620087 () Bool)

(assert (=> b!2566047 (= e!1620087 call!165127)))

(declare-fun d!726575 () Bool)

(declare-fun res!1079839 () Bool)

(declare-fun e!1620088 () Bool)

(assert (=> d!726575 (=> res!1079839 e!1620088)))

(assert (=> d!726575 (= res!1079839 ((_ is ElementMatch!7623) lt!905183))))

(assert (=> d!726575 (= (validRegex!3249 lt!905183) e!1620088)))

(declare-fun b!2566048 () Bool)

(declare-fun e!1620083 () Bool)

(assert (=> b!2566048 (= e!1620083 call!165129)))

(declare-fun b!2566049 () Bool)

(declare-fun e!1620085 () Bool)

(assert (=> b!2566049 (= e!1620088 e!1620085)))

(assert (=> b!2566049 (= c!412698 ((_ is Star!7623) lt!905183))))

(declare-fun b!2566050 () Bool)

(assert (=> b!2566050 (= e!1620085 e!1620087)))

(declare-fun res!1079838 () Bool)

(assert (=> b!2566050 (= res!1079838 (not (nullable!2540 (reg!7952 lt!905183))))))

(assert (=> b!2566050 (=> (not res!1079838) (not e!1620087))))

(declare-fun b!2566051 () Bool)

(declare-fun e!1620089 () Bool)

(assert (=> b!2566051 (= e!1620085 e!1620089)))

(assert (=> b!2566051 (= c!412699 ((_ is Union!7623) lt!905183))))

(declare-fun bm!165123 () Bool)

(assert (=> bm!165123 (= call!165129 call!165127)))

(declare-fun bm!165124 () Bool)

(declare-fun call!165128 () Bool)

(assert (=> bm!165124 (= call!165128 (validRegex!3249 (ite c!412699 (regOne!15759 lt!905183) (regTwo!15758 lt!905183))))))

(declare-fun b!2566052 () Bool)

(declare-fun res!1079837 () Bool)

(assert (=> b!2566052 (=> (not res!1079837) (not e!1620083))))

(assert (=> b!2566052 (= res!1079837 call!165128)))

(assert (=> b!2566052 (= e!1620089 e!1620083)))

(declare-fun b!2566053 () Bool)

(assert (=> b!2566053 (= e!1620084 call!165128)))

(declare-fun b!2566054 () Bool)

(declare-fun res!1079841 () Bool)

(assert (=> b!2566054 (=> res!1079841 e!1620086)))

(assert (=> b!2566054 (= res!1079841 (not ((_ is Concat!12319) lt!905183)))))

(assert (=> b!2566054 (= e!1620089 e!1620086)))

(assert (= (and d!726575 (not res!1079839)) b!2566049))

(assert (= (and b!2566049 c!412698) b!2566050))

(assert (= (and b!2566049 (not c!412698)) b!2566051))

(assert (= (and b!2566050 res!1079838) b!2566047))

(assert (= (and b!2566051 c!412699) b!2566052))

(assert (= (and b!2566051 (not c!412699)) b!2566054))

(assert (= (and b!2566052 res!1079837) b!2566048))

(assert (= (and b!2566054 (not res!1079841)) b!2566046))

(assert (= (and b!2566046 res!1079840) b!2566053))

(assert (= (or b!2566052 b!2566053) bm!165124))

(assert (= (or b!2566048 b!2566046) bm!165123))

(assert (= (or b!2566047 bm!165123) bm!165122))

(declare-fun m!2904327 () Bool)

(assert (=> bm!165122 m!2904327))

(declare-fun m!2904329 () Bool)

(assert (=> b!2566050 m!2904329))

(declare-fun m!2904331 () Bool)

(assert (=> bm!165124 m!2904331))

(assert (=> d!726303 d!726575))

(declare-fun b!2566055 () Bool)

(declare-fun e!1620093 () Bool)

(declare-fun e!1620091 () Bool)

(assert (=> b!2566055 (= e!1620093 e!1620091)))

(declare-fun res!1079845 () Bool)

(assert (=> b!2566055 (=> (not res!1079845) (not e!1620091))))

(declare-fun call!165132 () Bool)

(assert (=> b!2566055 (= res!1079845 call!165132)))

(declare-fun c!412701 () Bool)

(declare-fun bm!165125 () Bool)

(declare-fun c!412700 () Bool)

(declare-fun call!165130 () Bool)

(assert (=> bm!165125 (= call!165130 (validRegex!3249 (ite c!412700 (reg!7952 (derivativeStep!2192 r!27340 c!14016)) (ite c!412701 (regTwo!15759 (derivativeStep!2192 r!27340 c!14016)) (regOne!15758 (derivativeStep!2192 r!27340 c!14016))))))))

(declare-fun b!2566056 () Bool)

(declare-fun e!1620094 () Bool)

(assert (=> b!2566056 (= e!1620094 call!165130)))

(declare-fun d!726577 () Bool)

(declare-fun res!1079844 () Bool)

(declare-fun e!1620095 () Bool)

(assert (=> d!726577 (=> res!1079844 e!1620095)))

(assert (=> d!726577 (= res!1079844 ((_ is ElementMatch!7623) (derivativeStep!2192 r!27340 c!14016)))))

(assert (=> d!726577 (= (validRegex!3249 (derivativeStep!2192 r!27340 c!14016)) e!1620095)))

(declare-fun b!2566057 () Bool)

(declare-fun e!1620090 () Bool)

(assert (=> b!2566057 (= e!1620090 call!165132)))

(declare-fun b!2566058 () Bool)

(declare-fun e!1620092 () Bool)

(assert (=> b!2566058 (= e!1620095 e!1620092)))

(assert (=> b!2566058 (= c!412700 ((_ is Star!7623) (derivativeStep!2192 r!27340 c!14016)))))

(declare-fun b!2566059 () Bool)

(assert (=> b!2566059 (= e!1620092 e!1620094)))

(declare-fun res!1079843 () Bool)

(assert (=> b!2566059 (= res!1079843 (not (nullable!2540 (reg!7952 (derivativeStep!2192 r!27340 c!14016)))))))

(assert (=> b!2566059 (=> (not res!1079843) (not e!1620094))))

(declare-fun b!2566060 () Bool)

(declare-fun e!1620096 () Bool)

(assert (=> b!2566060 (= e!1620092 e!1620096)))

(assert (=> b!2566060 (= c!412701 ((_ is Union!7623) (derivativeStep!2192 r!27340 c!14016)))))

(declare-fun bm!165126 () Bool)

(assert (=> bm!165126 (= call!165132 call!165130)))

(declare-fun call!165131 () Bool)

(declare-fun bm!165127 () Bool)

(assert (=> bm!165127 (= call!165131 (validRegex!3249 (ite c!412701 (regOne!15759 (derivativeStep!2192 r!27340 c!14016)) (regTwo!15758 (derivativeStep!2192 r!27340 c!14016)))))))

(declare-fun b!2566061 () Bool)

(declare-fun res!1079842 () Bool)

(assert (=> b!2566061 (=> (not res!1079842) (not e!1620090))))

(assert (=> b!2566061 (= res!1079842 call!165131)))

(assert (=> b!2566061 (= e!1620096 e!1620090)))

(declare-fun b!2566062 () Bool)

(assert (=> b!2566062 (= e!1620091 call!165131)))

(declare-fun b!2566063 () Bool)

(declare-fun res!1079846 () Bool)

(assert (=> b!2566063 (=> res!1079846 e!1620093)))

(assert (=> b!2566063 (= res!1079846 (not ((_ is Concat!12319) (derivativeStep!2192 r!27340 c!14016))))))

(assert (=> b!2566063 (= e!1620096 e!1620093)))

(assert (= (and d!726577 (not res!1079844)) b!2566058))

(assert (= (and b!2566058 c!412700) b!2566059))

(assert (= (and b!2566058 (not c!412700)) b!2566060))

(assert (= (and b!2566059 res!1079843) b!2566056))

(assert (= (and b!2566060 c!412701) b!2566061))

(assert (= (and b!2566060 (not c!412701)) b!2566063))

(assert (= (and b!2566061 res!1079842) b!2566057))

(assert (= (and b!2566063 (not res!1079846)) b!2566055))

(assert (= (and b!2566055 res!1079845) b!2566062))

(assert (= (or b!2566061 b!2566062) bm!165127))

(assert (= (or b!2566057 b!2566055) bm!165126))

(assert (= (or b!2566056 bm!165126) bm!165125))

(declare-fun m!2904333 () Bool)

(assert (=> bm!165125 m!2904333))

(declare-fun m!2904335 () Bool)

(assert (=> b!2566059 m!2904335))

(declare-fun m!2904337 () Bool)

(assert (=> bm!165127 m!2904337))

(assert (=> d!726303 d!726577))

(declare-fun b!2566064 () Bool)

(declare-fun e!1620100 () Bool)

(declare-fun e!1620098 () Bool)

(assert (=> b!2566064 (= e!1620100 e!1620098)))

(declare-fun res!1079850 () Bool)

(assert (=> b!2566064 (=> (not res!1079850) (not e!1620098))))

(declare-fun call!165135 () Bool)

(assert (=> b!2566064 (= res!1079850 call!165135)))

(declare-fun bm!165128 () Bool)

(declare-fun c!412702 () Bool)

(declare-fun call!165133 () Bool)

(declare-fun c!412703 () Bool)

(assert (=> bm!165128 (= call!165133 (validRegex!3249 (ite c!412702 (reg!7952 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) (ite c!412703 (regTwo!15759 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) (regOne!15758 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))))

(declare-fun b!2566065 () Bool)

(declare-fun e!1620101 () Bool)

(assert (=> b!2566065 (= e!1620101 call!165133)))

(declare-fun d!726579 () Bool)

(declare-fun res!1079849 () Bool)

(declare-fun e!1620102 () Bool)

(assert (=> d!726579 (=> res!1079849 e!1620102)))

(assert (=> d!726579 (= res!1079849 ((_ is ElementMatch!7623) (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(assert (=> d!726579 (= (validRegex!3249 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) e!1620102)))

(declare-fun b!2566066 () Bool)

(declare-fun e!1620097 () Bool)

(assert (=> b!2566066 (= e!1620097 call!165135)))

(declare-fun b!2566067 () Bool)

(declare-fun e!1620099 () Bool)

(assert (=> b!2566067 (= e!1620102 e!1620099)))

(assert (=> b!2566067 (= c!412702 ((_ is Star!7623) (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun b!2566068 () Bool)

(assert (=> b!2566068 (= e!1620099 e!1620101)))

(declare-fun res!1079848 () Bool)

(assert (=> b!2566068 (= res!1079848 (not (nullable!2540 (reg!7952 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))))

(assert (=> b!2566068 (=> (not res!1079848) (not e!1620101))))

(declare-fun b!2566069 () Bool)

(declare-fun e!1620103 () Bool)

(assert (=> b!2566069 (= e!1620099 e!1620103)))

(assert (=> b!2566069 (= c!412703 ((_ is Union!7623) (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))

(declare-fun bm!165129 () Bool)

(assert (=> bm!165129 (= call!165135 call!165133)))

(declare-fun bm!165130 () Bool)

(declare-fun call!165134 () Bool)

(assert (=> bm!165130 (= call!165134 (validRegex!3249 (ite c!412703 (regOne!15759 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))) (regTwo!15758 (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340))))))))))

(declare-fun b!2566070 () Bool)

(declare-fun res!1079847 () Bool)

(assert (=> b!2566070 (=> (not res!1079847) (not e!1620097))))

(assert (=> b!2566070 (= res!1079847 call!165134)))

(assert (=> b!2566070 (= e!1620103 e!1620097)))

(declare-fun b!2566071 () Bool)

(assert (=> b!2566071 (= e!1620098 call!165134)))

(declare-fun b!2566072 () Bool)

(declare-fun res!1079851 () Bool)

(assert (=> b!2566072 (=> res!1079851 e!1620100)))

(assert (=> b!2566072 (= res!1079851 (not ((_ is Concat!12319) (ite c!412306 (reg!7952 (regTwo!15758 r!27340)) (ite c!412307 (regTwo!15759 (regTwo!15758 r!27340)) (regOne!15758 (regTwo!15758 r!27340)))))))))

(assert (=> b!2566072 (= e!1620103 e!1620100)))

(assert (= (and d!726579 (not res!1079849)) b!2566067))

(assert (= (and b!2566067 c!412702) b!2566068))

(assert (= (and b!2566067 (not c!412702)) b!2566069))

(assert (= (and b!2566068 res!1079848) b!2566065))

(assert (= (and b!2566069 c!412703) b!2566070))

(assert (= (and b!2566069 (not c!412703)) b!2566072))

(assert (= (and b!2566070 res!1079847) b!2566066))

(assert (= (and b!2566072 (not res!1079851)) b!2566064))

(assert (= (and b!2566064 res!1079850) b!2566071))

(assert (= (or b!2566070 b!2566071) bm!165130))

(assert (= (or b!2566066 b!2566064) bm!165129))

(assert (= (or b!2566065 bm!165129) bm!165128))

(declare-fun m!2904339 () Bool)

(assert (=> bm!165128 m!2904339))

(declare-fun m!2904341 () Bool)

(assert (=> b!2566068 m!2904341))

(declare-fun m!2904343 () Bool)

(assert (=> bm!165130 m!2904343))

(assert (=> bm!164777 d!726579))

(assert (=> b!2564773 d!726475))

(assert (=> b!2564773 d!726461))

(declare-fun d!726581 () Bool)

(assert (=> d!726581 (= (matchR!3568 lt!905116 tl!4068) (matchR!3568 (derivative!318 lt!905116 tl!4068) Nil!29588))))

(assert (=> d!726581 true))

(declare-fun _$108!393 () Unit!43431)

(assert (=> d!726581 (= (choose!15124 lt!905116 tl!4068) _$108!393)))

(declare-fun bs!469929 () Bool)

(assert (= bs!469929 d!726581))

(assert (=> bs!469929 m!2903337))

(assert (=> bs!469929 m!2903329))

(assert (=> bs!469929 m!2903329))

(assert (=> bs!469929 m!2903335))

(assert (=> d!726285 d!726581))

(assert (=> d!726285 d!726241))

(assert (=> d!726285 d!726287))

(assert (=> d!726285 d!726245))

(assert (=> d!726285 d!726479))

(declare-fun d!726583 () Bool)

(declare-fun c!412706 () Bool)

(assert (=> d!726583 (= c!412706 ((_ is Nil!29588) (firstChars!98 (regTwo!15758 r!27340))))))

(declare-fun e!1620106 () (InoxSet C!15404))

(assert (=> d!726583 (= (content!4078 (firstChars!98 (regTwo!15758 r!27340))) e!1620106)))

(declare-fun b!2566077 () Bool)

(assert (=> b!2566077 (= e!1620106 ((as const (Array C!15404 Bool)) false))))

(declare-fun b!2566078 () Bool)

(assert (=> b!2566078 (= e!1620106 ((_ map or) (store ((as const (Array C!15404 Bool)) false) (h!35008 (firstChars!98 (regTwo!15758 r!27340))) true) (content!4078 (t!211387 (firstChars!98 (regTwo!15758 r!27340))))))))

(assert (= (and d!726583 c!412706) b!2566077))

(assert (= (and d!726583 (not c!412706)) b!2566078))

(declare-fun m!2904345 () Bool)

(assert (=> b!2566078 m!2904345))

(assert (=> b!2566078 m!2904245))

(assert (=> d!726289 d!726583))

(assert (=> b!2565034 d!726481))

(assert (=> b!2565034 d!726469))

(assert (=> bm!164780 d!726477))

(declare-fun b!2566079 () Bool)

(declare-fun e!1620110 () Bool)

(declare-fun e!1620108 () Bool)

(assert (=> b!2566079 (= e!1620110 e!1620108)))

(declare-fun res!1079855 () Bool)

(assert (=> b!2566079 (=> (not res!1079855) (not e!1620108))))

(declare-fun call!165138 () Bool)

(assert (=> b!2566079 (= res!1079855 call!165138)))

(declare-fun call!165136 () Bool)

(declare-fun c!412708 () Bool)

(declare-fun bm!165131 () Bool)

(declare-fun c!412707 () Bool)

(assert (=> bm!165131 (= call!165136 (validRegex!3249 (ite c!412707 (reg!7952 lt!905151) (ite c!412708 (regTwo!15759 lt!905151) (regOne!15758 lt!905151)))))))

(declare-fun b!2566080 () Bool)

(declare-fun e!1620111 () Bool)

(assert (=> b!2566080 (= e!1620111 call!165136)))

(declare-fun d!726585 () Bool)

(declare-fun res!1079854 () Bool)

(declare-fun e!1620112 () Bool)

(assert (=> d!726585 (=> res!1079854 e!1620112)))

(assert (=> d!726585 (= res!1079854 ((_ is ElementMatch!7623) lt!905151))))

(assert (=> d!726585 (= (validRegex!3249 lt!905151) e!1620112)))

(declare-fun b!2566081 () Bool)

(declare-fun e!1620107 () Bool)

(assert (=> b!2566081 (= e!1620107 call!165138)))

(declare-fun b!2566082 () Bool)

(declare-fun e!1620109 () Bool)

(assert (=> b!2566082 (= e!1620112 e!1620109)))

(assert (=> b!2566082 (= c!412707 ((_ is Star!7623) lt!905151))))

(declare-fun b!2566083 () Bool)

(assert (=> b!2566083 (= e!1620109 e!1620111)))

(declare-fun res!1079853 () Bool)

(assert (=> b!2566083 (= res!1079853 (not (nullable!2540 (reg!7952 lt!905151))))))

(assert (=> b!2566083 (=> (not res!1079853) (not e!1620111))))

(declare-fun b!2566084 () Bool)

(declare-fun e!1620113 () Bool)

(assert (=> b!2566084 (= e!1620109 e!1620113)))

(assert (=> b!2566084 (= c!412708 ((_ is Union!7623) lt!905151))))

(declare-fun bm!165132 () Bool)

(assert (=> bm!165132 (= call!165138 call!165136)))

(declare-fun bm!165133 () Bool)

(declare-fun call!165137 () Bool)

(assert (=> bm!165133 (= call!165137 (validRegex!3249 (ite c!412708 (regOne!15759 lt!905151) (regTwo!15758 lt!905151))))))

(declare-fun b!2566085 () Bool)

(declare-fun res!1079852 () Bool)

(assert (=> b!2566085 (=> (not res!1079852) (not e!1620107))))

(assert (=> b!2566085 (= res!1079852 call!165137)))

(assert (=> b!2566085 (= e!1620113 e!1620107)))

(declare-fun b!2566086 () Bool)

(assert (=> b!2566086 (= e!1620108 call!165137)))

(declare-fun b!2566087 () Bool)

(declare-fun res!1079856 () Bool)

(assert (=> b!2566087 (=> res!1079856 e!1620110)))

(assert (=> b!2566087 (= res!1079856 (not ((_ is Concat!12319) lt!905151)))))

(assert (=> b!2566087 (= e!1620113 e!1620110)))

(assert (= (and d!726585 (not res!1079854)) b!2566082))

(assert (= (and b!2566082 c!412707) b!2566083))

(assert (= (and b!2566082 (not c!412707)) b!2566084))

(assert (= (and b!2566083 res!1079853) b!2566080))

(assert (= (and b!2566084 c!412708) b!2566085))

(assert (= (and b!2566084 (not c!412708)) b!2566087))

(assert (= (and b!2566085 res!1079852) b!2566081))

(assert (= (and b!2566087 (not res!1079856)) b!2566079))

(assert (= (and b!2566079 res!1079855) b!2566086))

(assert (= (or b!2566085 b!2566086) bm!165133))

(assert (= (or b!2566081 b!2566079) bm!165132))

(assert (= (or b!2566080 bm!165132) bm!165131))

(declare-fun m!2904347 () Bool)

(assert (=> bm!165131 m!2904347))

(declare-fun m!2904349 () Bool)

(assert (=> b!2566083 m!2904349))

(declare-fun m!2904351 () Bool)

(assert (=> bm!165133 m!2904351))

(assert (=> d!726241 d!726585))

(assert (=> d!726241 d!726479))

(declare-fun d!726587 () Bool)

(declare-fun c!412709 () Bool)

(assert (=> d!726587 (= c!412709 ((_ is Nil!29588) (firstChars!98 r!27340)))))

(declare-fun e!1620114 () (InoxSet C!15404))

(assert (=> d!726587 (= (content!4078 (firstChars!98 r!27340)) e!1620114)))

(declare-fun b!2566088 () Bool)

(assert (=> b!2566088 (= e!1620114 ((as const (Array C!15404 Bool)) false))))

(declare-fun b!2566089 () Bool)

(assert (=> b!2566089 (= e!1620114 ((_ map or) (store ((as const (Array C!15404 Bool)) false) (h!35008 (firstChars!98 r!27340)) true) (content!4078 (t!211387 (firstChars!98 r!27340)))))))

(assert (= (and d!726587 c!412709) b!2566088))

(assert (= (and d!726587 (not c!412709)) b!2566089))

(declare-fun m!2904353 () Bool)

(assert (=> b!2566089 m!2904353))

(assert (=> b!2566089 m!2904099))

(assert (=> d!726297 d!726587))

(declare-fun d!726589 () Bool)

(assert (=> d!726589 (= (nullable!2540 lt!905119) (nullableFct!765 lt!905119))))

(declare-fun bs!469930 () Bool)

(assert (= bs!469930 d!726589))

(declare-fun m!2904355 () Bool)

(assert (=> bs!469930 m!2904355))

(assert (=> b!2564771 d!726589))

(declare-fun bm!165134 () Bool)

(declare-fun c!412713 () Bool)

(declare-fun call!165140 () List!29688)

(assert (=> bm!165134 (= call!165140 (firstChars!98 (ite c!412713 (regTwo!15759 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) (regOne!15758 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))))))))

(declare-fun b!2566090 () Bool)

(declare-fun e!1620119 () List!29688)

(declare-fun call!165141 () List!29688)

(assert (=> b!2566090 (= e!1620119 call!165141)))

(declare-fun bm!165135 () Bool)

(declare-fun call!165142 () List!29688)

(declare-fun call!165143 () List!29688)

(assert (=> bm!165135 (= call!165142 call!165143)))

(declare-fun d!726591 () Bool)

(declare-fun c!412710 () Bool)

(assert (=> d!726591 (= c!412710 (or ((_ is EmptyExpr!7623) (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) ((_ is EmptyLang!7623) (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340)))))))))

(declare-fun e!1620116 () List!29688)

(assert (=> d!726591 (= (firstChars!98 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) e!1620116)))

(declare-fun b!2566091 () Bool)

(declare-fun e!1620115 () List!29688)

(assert (=> b!2566091 (= e!1620116 e!1620115)))

(declare-fun c!412711 () Bool)

(assert (=> b!2566091 (= c!412711 ((_ is ElementMatch!7623) (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))))))

(declare-fun b!2566092 () Bool)

(declare-fun e!1620117 () List!29688)

(declare-fun e!1620118 () List!29688)

(assert (=> b!2566092 (= e!1620117 e!1620118)))

(assert (=> b!2566092 (= c!412713 ((_ is Union!7623) (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))))))

(declare-fun b!2566093 () Bool)

(declare-fun call!165139 () List!29688)

(assert (=> b!2566093 (= e!1620119 call!165139)))

(declare-fun b!2566094 () Bool)

(declare-fun c!412712 () Bool)

(assert (=> b!2566094 (= c!412712 (nullable!2540 (regOne!15758 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340)))))))))

(assert (=> b!2566094 (= e!1620118 e!1620119)))

(declare-fun b!2566095 () Bool)

(declare-fun c!412714 () Bool)

(assert (=> b!2566095 (= c!412714 ((_ is Star!7623) (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))))))

(assert (=> b!2566095 (= e!1620115 e!1620117)))

(declare-fun b!2566096 () Bool)

(assert (=> b!2566096 (= e!1620116 Nil!29588)))

(declare-fun bm!165136 () Bool)

(assert (=> bm!165136 (= call!165139 (++!7272 (ite c!412713 call!165142 call!165140) (ite c!412713 call!165140 call!165141)))))

(declare-fun b!2566097 () Bool)

(assert (=> b!2566097 (= e!1620117 call!165143)))

(declare-fun b!2566098 () Bool)

(assert (=> b!2566098 (= e!1620115 (Cons!29588 (c!412277 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) Nil!29588))))

(declare-fun bm!165137 () Bool)

(assert (=> bm!165137 (= call!165141 call!165142)))

(declare-fun b!2566099 () Bool)

(assert (=> b!2566099 (= e!1620118 call!165139)))

(declare-fun bm!165138 () Bool)

(assert (=> bm!165138 (= call!165143 (firstChars!98 (ite c!412714 (reg!7952 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) (ite c!412713 (regOne!15759 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) (ite c!412712 (regTwo!15758 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))) (regOne!15758 (ite c!412428 (reg!7952 r!27340) (ite c!412427 (regOne!15759 r!27340) (ite c!412426 (regTwo!15758 r!27340) (regOne!15758 r!27340))))))))))))

(assert (= (and d!726591 c!412710) b!2566096))

(assert (= (and d!726591 (not c!412710)) b!2566091))

(assert (= (and b!2566091 c!412711) b!2566098))

(assert (= (and b!2566091 (not c!412711)) b!2566095))

(assert (= (and b!2566095 c!412714) b!2566097))

(assert (= (and b!2566095 (not c!412714)) b!2566092))

(assert (= (and b!2566092 c!412713) b!2566099))

(assert (= (and b!2566092 (not c!412713)) b!2566094))

(assert (= (and b!2566094 c!412712) b!2566093))

(assert (= (and b!2566094 (not c!412712)) b!2566090))

(assert (= (or b!2566093 b!2566090) bm!165137))

(assert (= (or b!2566099 bm!165137) bm!165135))

(assert (= (or b!2566099 b!2566093) bm!165134))

(assert (= (or b!2566099 b!2566093) bm!165136))

(assert (= (or b!2566097 bm!165135) bm!165138))

(declare-fun m!2904357 () Bool)

(assert (=> bm!165134 m!2904357))

(declare-fun m!2904359 () Bool)

(assert (=> b!2566094 m!2904359))

(declare-fun m!2904361 () Bool)

(assert (=> bm!165136 m!2904361))

(declare-fun m!2904363 () Bool)

(assert (=> bm!165138 m!2904363))

(assert (=> bm!164875 d!726591))

(assert (=> b!2564814 d!726459))

(assert (=> b!2564812 d!726459))

(assert (=> b!2564658 d!726481))

(assert (=> b!2564658 d!726469))

(declare-fun d!726593 () Bool)

(assert (=> d!726593 (= (nullable!2540 (derivative!318 lt!905116 tl!4068)) (nullableFct!765 (derivative!318 lt!905116 tl!4068)))))

(declare-fun bs!469931 () Bool)

(assert (= bs!469931 d!726593))

(assert (=> bs!469931 m!2903329))

(declare-fun m!2904365 () Bool)

(assert (=> bs!469931 m!2904365))

(assert (=> b!2565032 d!726593))

(assert (=> b!2564656 d!726233))

(assert (=> b!2565071 d!726551))

(declare-fun b!2566100 () Bool)

(declare-fun e!1620123 () Bool)

(declare-fun e!1620121 () Bool)

(assert (=> b!2566100 (= e!1620123 e!1620121)))

(declare-fun res!1079860 () Bool)

(assert (=> b!2566100 (=> (not res!1079860) (not e!1620121))))

(declare-fun call!165146 () Bool)

(assert (=> b!2566100 (= res!1079860 call!165146)))

(declare-fun c!412715 () Bool)

(declare-fun c!412716 () Bool)

(declare-fun bm!165139 () Bool)

(declare-fun call!165144 () Bool)

(assert (=> bm!165139 (= call!165144 (validRegex!3249 (ite c!412715 (reg!7952 lt!905184) (ite c!412716 (regTwo!15759 lt!905184) (regOne!15758 lt!905184)))))))

(declare-fun b!2566101 () Bool)

(declare-fun e!1620124 () Bool)

(assert (=> b!2566101 (= e!1620124 call!165144)))

(declare-fun d!726595 () Bool)

(declare-fun res!1079859 () Bool)

(declare-fun e!1620125 () Bool)

(assert (=> d!726595 (=> res!1079859 e!1620125)))

(assert (=> d!726595 (= res!1079859 ((_ is ElementMatch!7623) lt!905184))))

(assert (=> d!726595 (= (validRegex!3249 lt!905184) e!1620125)))

(declare-fun b!2566102 () Bool)

(declare-fun e!1620120 () Bool)

(assert (=> b!2566102 (= e!1620120 call!165146)))

(declare-fun b!2566103 () Bool)

(declare-fun e!1620122 () Bool)

(assert (=> b!2566103 (= e!1620125 e!1620122)))

(assert (=> b!2566103 (= c!412715 ((_ is Star!7623) lt!905184))))

(declare-fun b!2566104 () Bool)

(assert (=> b!2566104 (= e!1620122 e!1620124)))

(declare-fun res!1079858 () Bool)

(assert (=> b!2566104 (= res!1079858 (not (nullable!2540 (reg!7952 lt!905184))))))

(assert (=> b!2566104 (=> (not res!1079858) (not e!1620124))))

(declare-fun b!2566105 () Bool)

(declare-fun e!1620126 () Bool)

(assert (=> b!2566105 (= e!1620122 e!1620126)))

(assert (=> b!2566105 (= c!412716 ((_ is Union!7623) lt!905184))))

(declare-fun bm!165140 () Bool)

(assert (=> bm!165140 (= call!165146 call!165144)))

(declare-fun bm!165141 () Bool)

(declare-fun call!165145 () Bool)

(assert (=> bm!165141 (= call!165145 (validRegex!3249 (ite c!412716 (regOne!15759 lt!905184) (regTwo!15758 lt!905184))))))

(declare-fun b!2566106 () Bool)

(declare-fun res!1079857 () Bool)

(assert (=> b!2566106 (=> (not res!1079857) (not e!1620120))))

(assert (=> b!2566106 (= res!1079857 call!165145)))

(assert (=> b!2566106 (= e!1620126 e!1620120)))

(declare-fun b!2566107 () Bool)

(assert (=> b!2566107 (= e!1620121 call!165145)))

(declare-fun b!2566108 () Bool)

(declare-fun res!1079861 () Bool)

(assert (=> b!2566108 (=> res!1079861 e!1620123)))

(assert (=> b!2566108 (= res!1079861 (not ((_ is Concat!12319) lt!905184)))))

(assert (=> b!2566108 (= e!1620126 e!1620123)))

(assert (= (and d!726595 (not res!1079859)) b!2566103))

(assert (= (and b!2566103 c!412715) b!2566104))

(assert (= (and b!2566103 (not c!412715)) b!2566105))

(assert (= (and b!2566104 res!1079858) b!2566101))

(assert (= (and b!2566105 c!412716) b!2566106))

(assert (= (and b!2566105 (not c!412716)) b!2566108))

(assert (= (and b!2566106 res!1079857) b!2566102))

(assert (= (and b!2566108 (not res!1079861)) b!2566100))

(assert (= (and b!2566100 res!1079860) b!2566107))

(assert (= (or b!2566106 b!2566107) bm!165141))

(assert (= (or b!2566102 b!2566100) bm!165140))

(assert (= (or b!2566101 bm!165140) bm!165139))

(declare-fun m!2904367 () Bool)

(assert (=> bm!165139 m!2904367))

(declare-fun m!2904369 () Bool)

(assert (=> b!2566104 m!2904369))

(declare-fun m!2904371 () Bool)

(assert (=> bm!165141 m!2904371))

(assert (=> d!726305 d!726595))

(assert (=> d!726305 d!726307))

(declare-fun bm!165142 () Bool)

(declare-fun call!165150 () Regex!7623)

(declare-fun call!165148 () Regex!7623)

(assert (=> bm!165142 (= call!165150 call!165148)))

(declare-fun b!2566109 () Bool)

(declare-fun e!1620131 () Regex!7623)

(declare-fun call!165149 () Regex!7623)

(assert (=> b!2566109 (= e!1620131 (Union!7623 call!165148 call!165149))))

(declare-fun b!2566110 () Bool)

(declare-fun e!1620127 () Regex!7623)

(assert (=> b!2566110 (= e!1620131 e!1620127)))

(declare-fun c!412720 () Bool)

(assert (=> b!2566110 (= c!412720 ((_ is Star!7623) (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))))

(declare-fun b!2566112 () Bool)

(assert (=> b!2566112 (= e!1620127 (Concat!12319 call!165150 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))))

(declare-fun e!1620130 () Regex!7623)

(declare-fun b!2566113 () Bool)

(assert (=> b!2566113 (= e!1620130 (ite (= c!14016 (c!412277 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))) EmptyExpr!7623 EmptyLang!7623))))

(declare-fun call!165147 () Regex!7623)

(declare-fun b!2566114 () Bool)

(declare-fun e!1620129 () Regex!7623)

(assert (=> b!2566114 (= e!1620129 (Union!7623 (Concat!12319 call!165147 (regTwo!15758 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))) call!165149))))

(declare-fun b!2566115 () Bool)

(declare-fun e!1620128 () Regex!7623)

(assert (=> b!2566115 (= e!1620128 e!1620130)))

(declare-fun c!412719 () Bool)

(assert (=> b!2566115 (= c!412719 ((_ is ElementMatch!7623) (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))))

(declare-fun b!2566116 () Bool)

(assert (=> b!2566116 (= e!1620128 EmptyLang!7623)))

(declare-fun b!2566117 () Bool)

(assert (=> b!2566117 (= e!1620129 (Union!7623 (Concat!12319 call!165147 (regTwo!15758 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))) EmptyLang!7623))))

(declare-fun b!2566118 () Bool)

(declare-fun c!412718 () Bool)

(assert (=> b!2566118 (= c!412718 (nullable!2540 (regOne!15758 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))))))

(assert (=> b!2566118 (= e!1620127 e!1620129)))

(declare-fun bm!165143 () Bool)

(assert (=> bm!165143 (= call!165147 call!165150)))

(declare-fun d!726597 () Bool)

(declare-fun lt!905234 () Regex!7623)

(assert (=> d!726597 (validRegex!3249 lt!905234)))

(assert (=> d!726597 (= lt!905234 e!1620128)))

(declare-fun c!412721 () Bool)

(assert (=> d!726597 (= c!412721 (or ((_ is EmptyExpr!7623) (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))) ((_ is EmptyLang!7623) (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))))))

(assert (=> d!726597 (validRegex!3249 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))))

(assert (=> d!726597 (= (derivativeStep!2192 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))) c!14016) lt!905234)))

(declare-fun b!2566111 () Bool)

(declare-fun c!412717 () Bool)

(assert (=> b!2566111 (= c!412717 ((_ is Union!7623) (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))))

(assert (=> b!2566111 (= e!1620130 e!1620131)))

(declare-fun bm!165144 () Bool)

(assert (=> bm!165144 (= call!165149 (derivativeStep!2192 (ite c!412717 (regTwo!15759 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))) (regTwo!15758 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340))))) c!14016))))

(declare-fun bm!165145 () Bool)

(assert (=> bm!165145 (= call!165148 (derivativeStep!2192 (ite c!412717 (regOne!15759 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))) (ite c!412720 (reg!7952 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))) (regOne!15758 (ite c!412401 (regTwo!15759 (regOne!15758 r!27340)) (regTwo!15758 (regOne!15758 r!27340)))))) c!14016))))

(assert (= (and d!726597 c!412721) b!2566116))

(assert (= (and d!726597 (not c!412721)) b!2566115))

(assert (= (and b!2566115 c!412719) b!2566113))

(assert (= (and b!2566115 (not c!412719)) b!2566111))

(assert (= (and b!2566111 c!412717) b!2566109))

(assert (= (and b!2566111 (not c!412717)) b!2566110))

(assert (= (and b!2566110 c!412720) b!2566112))

(assert (= (and b!2566110 (not c!412720)) b!2566118))

(assert (= (and b!2566118 c!412718) b!2566114))

(assert (= (and b!2566118 (not c!412718)) b!2566117))

(assert (= (or b!2566114 b!2566117) bm!165143))

(assert (= (or b!2566112 bm!165143) bm!165142))

(assert (= (or b!2566109 b!2566114) bm!165144))

(assert (= (or b!2566109 bm!165142) bm!165145))

(declare-fun m!2904373 () Bool)

(assert (=> b!2566118 m!2904373))

(declare-fun m!2904375 () Bool)

(assert (=> d!726597 m!2904375))

(declare-fun m!2904377 () Bool)

(assert (=> d!726597 m!2904377))

(declare-fun m!2904379 () Bool)

(assert (=> bm!165144 m!2904379))

(declare-fun m!2904381 () Bool)

(assert (=> bm!165145 m!2904381))

(assert (=> bm!164853 d!726597))

(declare-fun b!2566119 () Bool)

(declare-fun e!1620135 () Bool)

(declare-fun e!1620133 () Bool)

(assert (=> b!2566119 (= e!1620135 e!1620133)))

(declare-fun res!1079865 () Bool)

(assert (=> b!2566119 (=> (not res!1079865) (not e!1620133))))

(declare-fun call!165153 () Bool)

(assert (=> b!2566119 (= res!1079865 call!165153)))

(declare-fun call!165151 () Bool)

(declare-fun c!412723 () Bool)

(declare-fun c!412722 () Bool)

(declare-fun bm!165146 () Bool)

(assert (=> bm!165146 (= call!165151 (validRegex!3249 (ite c!412722 (reg!7952 lt!905128) (ite c!412723 (regTwo!15759 lt!905128) (regOne!15758 lt!905128)))))))

(declare-fun b!2566120 () Bool)

(declare-fun e!1620136 () Bool)

(assert (=> b!2566120 (= e!1620136 call!165151)))

(declare-fun d!726599 () Bool)

(declare-fun res!1079864 () Bool)

(declare-fun e!1620137 () Bool)

(assert (=> d!726599 (=> res!1079864 e!1620137)))

(assert (=> d!726599 (= res!1079864 ((_ is ElementMatch!7623) lt!905128))))

(assert (=> d!726599 (= (validRegex!3249 lt!905128) e!1620137)))

(declare-fun b!2566121 () Bool)

(declare-fun e!1620132 () Bool)

(assert (=> b!2566121 (= e!1620132 call!165153)))

(declare-fun b!2566122 () Bool)

(declare-fun e!1620134 () Bool)

(assert (=> b!2566122 (= e!1620137 e!1620134)))

(assert (=> b!2566122 (= c!412722 ((_ is Star!7623) lt!905128))))

(declare-fun b!2566123 () Bool)

(assert (=> b!2566123 (= e!1620134 e!1620136)))

(declare-fun res!1079863 () Bool)

(assert (=> b!2566123 (= res!1079863 (not (nullable!2540 (reg!7952 lt!905128))))))

(assert (=> b!2566123 (=> (not res!1079863) (not e!1620136))))

(declare-fun b!2566124 () Bool)

(declare-fun e!1620138 () Bool)

(assert (=> b!2566124 (= e!1620134 e!1620138)))

(assert (=> b!2566124 (= c!412723 ((_ is Union!7623) lt!905128))))

(declare-fun bm!165147 () Bool)

(assert (=> bm!165147 (= call!165153 call!165151)))

(declare-fun bm!165148 () Bool)

(declare-fun call!165152 () Bool)

(assert (=> bm!165148 (= call!165152 (validRegex!3249 (ite c!412723 (regOne!15759 lt!905128) (regTwo!15758 lt!905128))))))

(declare-fun b!2566125 () Bool)

(declare-fun res!1079862 () Bool)

(assert (=> b!2566125 (=> (not res!1079862) (not e!1620132))))

(assert (=> b!2566125 (= res!1079862 call!165152)))

(assert (=> b!2566125 (= e!1620138 e!1620132)))

(declare-fun b!2566126 () Bool)

(assert (=> b!2566126 (= e!1620133 call!165152)))

(declare-fun b!2566127 () Bool)

(declare-fun res!1079866 () Bool)

(assert (=> b!2566127 (=> res!1079866 e!1620135)))

(assert (=> b!2566127 (= res!1079866 (not ((_ is Concat!12319) lt!905128)))))

(assert (=> b!2566127 (= e!1620138 e!1620135)))

(assert (= (and d!726599 (not res!1079864)) b!2566122))

(assert (= (and b!2566122 c!412722) b!2566123))

(assert (= (and b!2566122 (not c!412722)) b!2566124))

(assert (= (and b!2566123 res!1079863) b!2566120))

(assert (= (and b!2566124 c!412723) b!2566125))

(assert (= (and b!2566124 (not c!412723)) b!2566127))

(assert (= (and b!2566125 res!1079862) b!2566121))

(assert (= (and b!2566127 (not res!1079866)) b!2566119))

(assert (= (and b!2566119 res!1079865) b!2566126))

(assert (= (or b!2566125 b!2566126) bm!165148))

(assert (= (or b!2566121 b!2566119) bm!165147))

(assert (= (or b!2566120 bm!165147) bm!165146))

(declare-fun m!2904383 () Bool)

(assert (=> bm!165146 m!2904383))

(declare-fun m!2904385 () Bool)

(assert (=> b!2566123 m!2904385))

(declare-fun m!2904387 () Bool)

(assert (=> bm!165148 m!2904387))

(assert (=> d!726215 d!726599))

(assert (=> d!726215 d!726507))

(declare-fun b!2566131 () Bool)

(declare-fun e!1620139 () Bool)

(declare-fun tp!816688 () Bool)

(declare-fun tp!816686 () Bool)

(assert (=> b!2566131 (= e!1620139 (and tp!816688 tp!816686))))

(declare-fun b!2566128 () Bool)

(assert (=> b!2566128 (= e!1620139 tp_is_empty!13101)))

(declare-fun b!2566130 () Bool)

(declare-fun tp!816685 () Bool)

(assert (=> b!2566130 (= e!1620139 tp!816685)))

(assert (=> b!2565132 (= tp!816542 e!1620139)))

(declare-fun b!2566129 () Bool)

(declare-fun tp!816687 () Bool)

(declare-fun tp!816689 () Bool)

(assert (=> b!2566129 (= e!1620139 (and tp!816687 tp!816689))))

(assert (= (and b!2565132 ((_ is ElementMatch!7623) (regOne!15759 (regTwo!15758 r!27340)))) b!2566128))

(assert (= (and b!2565132 ((_ is Concat!12319) (regOne!15759 (regTwo!15758 r!27340)))) b!2566129))

(assert (= (and b!2565132 ((_ is Star!7623) (regOne!15759 (regTwo!15758 r!27340)))) b!2566130))

(assert (= (and b!2565132 ((_ is Union!7623) (regOne!15759 (regTwo!15758 r!27340)))) b!2566131))

(declare-fun b!2566135 () Bool)

(declare-fun e!1620140 () Bool)

(declare-fun tp!816693 () Bool)

(declare-fun tp!816691 () Bool)

(assert (=> b!2566135 (= e!1620140 (and tp!816693 tp!816691))))

(declare-fun b!2566132 () Bool)

(assert (=> b!2566132 (= e!1620140 tp_is_empty!13101)))

(declare-fun b!2566134 () Bool)

(declare-fun tp!816690 () Bool)

(assert (=> b!2566134 (= e!1620140 tp!816690)))

(assert (=> b!2565132 (= tp!816540 e!1620140)))

(declare-fun b!2566133 () Bool)

(declare-fun tp!816692 () Bool)

(declare-fun tp!816694 () Bool)

(assert (=> b!2566133 (= e!1620140 (and tp!816692 tp!816694))))

(assert (= (and b!2565132 ((_ is ElementMatch!7623) (regTwo!15759 (regTwo!15758 r!27340)))) b!2566132))

(assert (= (and b!2565132 ((_ is Concat!12319) (regTwo!15759 (regTwo!15758 r!27340)))) b!2566133))

(assert (= (and b!2565132 ((_ is Star!7623) (regTwo!15759 (regTwo!15758 r!27340)))) b!2566134))

(assert (= (and b!2565132 ((_ is Union!7623) (regTwo!15759 (regTwo!15758 r!27340)))) b!2566135))

(declare-fun b!2566139 () Bool)

(declare-fun e!1620141 () Bool)

(declare-fun tp!816698 () Bool)

(declare-fun tp!816696 () Bool)

(assert (=> b!2566139 (= e!1620141 (and tp!816698 tp!816696))))

(declare-fun b!2566136 () Bool)

(assert (=> b!2566136 (= e!1620141 tp_is_empty!13101)))

(declare-fun b!2566138 () Bool)

(declare-fun tp!816695 () Bool)

(assert (=> b!2566138 (= e!1620141 tp!816695)))

(assert (=> b!2565128 (= tp!816537 e!1620141)))

(declare-fun b!2566137 () Bool)

(declare-fun tp!816697 () Bool)

(declare-fun tp!816699 () Bool)

(assert (=> b!2566137 (= e!1620141 (and tp!816697 tp!816699))))

(assert (= (and b!2565128 ((_ is ElementMatch!7623) (regOne!15759 (regOne!15758 r!27340)))) b!2566136))

(assert (= (and b!2565128 ((_ is Concat!12319) (regOne!15759 (regOne!15758 r!27340)))) b!2566137))

(assert (= (and b!2565128 ((_ is Star!7623) (regOne!15759 (regOne!15758 r!27340)))) b!2566138))

(assert (= (and b!2565128 ((_ is Union!7623) (regOne!15759 (regOne!15758 r!27340)))) b!2566139))

(declare-fun b!2566143 () Bool)

(declare-fun e!1620142 () Bool)

(declare-fun tp!816703 () Bool)

(declare-fun tp!816701 () Bool)

(assert (=> b!2566143 (= e!1620142 (and tp!816703 tp!816701))))

(declare-fun b!2566140 () Bool)

(assert (=> b!2566140 (= e!1620142 tp_is_empty!13101)))

(declare-fun b!2566142 () Bool)

(declare-fun tp!816700 () Bool)

(assert (=> b!2566142 (= e!1620142 tp!816700)))

(assert (=> b!2565128 (= tp!816535 e!1620142)))

(declare-fun b!2566141 () Bool)

(declare-fun tp!816702 () Bool)

(declare-fun tp!816704 () Bool)

(assert (=> b!2566141 (= e!1620142 (and tp!816702 tp!816704))))

(assert (= (and b!2565128 ((_ is ElementMatch!7623) (regTwo!15759 (regOne!15758 r!27340)))) b!2566140))

(assert (= (and b!2565128 ((_ is Concat!12319) (regTwo!15759 (regOne!15758 r!27340)))) b!2566141))

(assert (= (and b!2565128 ((_ is Star!7623) (regTwo!15759 (regOne!15758 r!27340)))) b!2566142))

(assert (= (and b!2565128 ((_ is Union!7623) (regTwo!15759 (regOne!15758 r!27340)))) b!2566143))

(declare-fun b!2566147 () Bool)

(declare-fun e!1620143 () Bool)

(declare-fun tp!816708 () Bool)

(declare-fun tp!816706 () Bool)

(assert (=> b!2566147 (= e!1620143 (and tp!816708 tp!816706))))

(declare-fun b!2566144 () Bool)

(assert (=> b!2566144 (= e!1620143 tp_is_empty!13101)))

(declare-fun b!2566146 () Bool)

(declare-fun tp!816705 () Bool)

(assert (=> b!2566146 (= e!1620143 tp!816705)))

(assert (=> b!2565126 (= tp!816536 e!1620143)))

(declare-fun b!2566145 () Bool)

(declare-fun tp!816707 () Bool)

(declare-fun tp!816709 () Bool)

(assert (=> b!2566145 (= e!1620143 (and tp!816707 tp!816709))))

(assert (= (and b!2565126 ((_ is ElementMatch!7623) (regOne!15758 (regOne!15758 r!27340)))) b!2566144))

(assert (= (and b!2565126 ((_ is Concat!12319) (regOne!15758 (regOne!15758 r!27340)))) b!2566145))

(assert (= (and b!2565126 ((_ is Star!7623) (regOne!15758 (regOne!15758 r!27340)))) b!2566146))

(assert (= (and b!2565126 ((_ is Union!7623) (regOne!15758 (regOne!15758 r!27340)))) b!2566147))

(declare-fun b!2566151 () Bool)

(declare-fun e!1620144 () Bool)

(declare-fun tp!816713 () Bool)

(declare-fun tp!816711 () Bool)

(assert (=> b!2566151 (= e!1620144 (and tp!816713 tp!816711))))

(declare-fun b!2566148 () Bool)

(assert (=> b!2566148 (= e!1620144 tp_is_empty!13101)))

(declare-fun b!2566150 () Bool)

(declare-fun tp!816710 () Bool)

(assert (=> b!2566150 (= e!1620144 tp!816710)))

(assert (=> b!2565126 (= tp!816538 e!1620144)))

(declare-fun b!2566149 () Bool)

(declare-fun tp!816712 () Bool)

(declare-fun tp!816714 () Bool)

(assert (=> b!2566149 (= e!1620144 (and tp!816712 tp!816714))))

(assert (= (and b!2565126 ((_ is ElementMatch!7623) (regTwo!15758 (regOne!15758 r!27340)))) b!2566148))

(assert (= (and b!2565126 ((_ is Concat!12319) (regTwo!15758 (regOne!15758 r!27340)))) b!2566149))

(assert (= (and b!2565126 ((_ is Star!7623) (regTwo!15758 (regOne!15758 r!27340)))) b!2566150))

(assert (= (and b!2565126 ((_ is Union!7623) (regTwo!15758 (regOne!15758 r!27340)))) b!2566151))

(declare-fun b!2566155 () Bool)

(declare-fun e!1620145 () Bool)

(declare-fun tp!816718 () Bool)

(declare-fun tp!816716 () Bool)

(assert (=> b!2566155 (= e!1620145 (and tp!816718 tp!816716))))

(declare-fun b!2566152 () Bool)

(assert (=> b!2566152 (= e!1620145 tp_is_empty!13101)))

(declare-fun b!2566154 () Bool)

(declare-fun tp!816715 () Bool)

(assert (=> b!2566154 (= e!1620145 tp!816715)))

(assert (=> b!2565140 (= tp!816552 e!1620145)))

(declare-fun b!2566153 () Bool)

(declare-fun tp!816717 () Bool)

(declare-fun tp!816719 () Bool)

(assert (=> b!2566153 (= e!1620145 (and tp!816717 tp!816719))))

(assert (= (and b!2565140 ((_ is ElementMatch!7623) (regOne!15759 (regOne!15759 r!27340)))) b!2566152))

(assert (= (and b!2565140 ((_ is Concat!12319) (regOne!15759 (regOne!15759 r!27340)))) b!2566153))

(assert (= (and b!2565140 ((_ is Star!7623) (regOne!15759 (regOne!15759 r!27340)))) b!2566154))

(assert (= (and b!2565140 ((_ is Union!7623) (regOne!15759 (regOne!15759 r!27340)))) b!2566155))

(declare-fun b!2566159 () Bool)

(declare-fun e!1620146 () Bool)

(declare-fun tp!816723 () Bool)

(declare-fun tp!816721 () Bool)

(assert (=> b!2566159 (= e!1620146 (and tp!816723 tp!816721))))

(declare-fun b!2566156 () Bool)

(assert (=> b!2566156 (= e!1620146 tp_is_empty!13101)))

(declare-fun b!2566158 () Bool)

(declare-fun tp!816720 () Bool)

(assert (=> b!2566158 (= e!1620146 tp!816720)))

(assert (=> b!2565140 (= tp!816550 e!1620146)))

(declare-fun b!2566157 () Bool)

(declare-fun tp!816722 () Bool)

(declare-fun tp!816724 () Bool)

(assert (=> b!2566157 (= e!1620146 (and tp!816722 tp!816724))))

(assert (= (and b!2565140 ((_ is ElementMatch!7623) (regTwo!15759 (regOne!15759 r!27340)))) b!2566156))

(assert (= (and b!2565140 ((_ is Concat!12319) (regTwo!15759 (regOne!15759 r!27340)))) b!2566157))

(assert (= (and b!2565140 ((_ is Star!7623) (regTwo!15759 (regOne!15759 r!27340)))) b!2566158))

(assert (= (and b!2565140 ((_ is Union!7623) (regTwo!15759 (regOne!15759 r!27340)))) b!2566159))

(declare-fun b!2566163 () Bool)

(declare-fun e!1620147 () Bool)

(declare-fun tp!816728 () Bool)

(declare-fun tp!816726 () Bool)

(assert (=> b!2566163 (= e!1620147 (and tp!816728 tp!816726))))

(declare-fun b!2566160 () Bool)

(assert (=> b!2566160 (= e!1620147 tp_is_empty!13101)))

(declare-fun b!2566162 () Bool)

(declare-fun tp!816725 () Bool)

(assert (=> b!2566162 (= e!1620147 tp!816725)))

(assert (=> b!2565131 (= tp!816539 e!1620147)))

(declare-fun b!2566161 () Bool)

(declare-fun tp!816727 () Bool)

(declare-fun tp!816729 () Bool)

(assert (=> b!2566161 (= e!1620147 (and tp!816727 tp!816729))))

(assert (= (and b!2565131 ((_ is ElementMatch!7623) (reg!7952 (regTwo!15758 r!27340)))) b!2566160))

(assert (= (and b!2565131 ((_ is Concat!12319) (reg!7952 (regTwo!15758 r!27340)))) b!2566161))

(assert (= (and b!2565131 ((_ is Star!7623) (reg!7952 (regTwo!15758 r!27340)))) b!2566162))

(assert (= (and b!2565131 ((_ is Union!7623) (reg!7952 (regTwo!15758 r!27340)))) b!2566163))

(declare-fun b!2566167 () Bool)

(declare-fun e!1620148 () Bool)

(declare-fun tp!816733 () Bool)

(declare-fun tp!816731 () Bool)

(assert (=> b!2566167 (= e!1620148 (and tp!816733 tp!816731))))

(declare-fun b!2566164 () Bool)

(assert (=> b!2566164 (= e!1620148 tp_is_empty!13101)))

(declare-fun b!2566166 () Bool)

(declare-fun tp!816730 () Bool)

(assert (=> b!2566166 (= e!1620148 tp!816730)))

(assert (=> b!2565136 (= tp!816547 e!1620148)))

(declare-fun b!2566165 () Bool)

(declare-fun tp!816732 () Bool)

(declare-fun tp!816734 () Bool)

(assert (=> b!2566165 (= e!1620148 (and tp!816732 tp!816734))))

(assert (= (and b!2565136 ((_ is ElementMatch!7623) (regOne!15759 (reg!7952 r!27340)))) b!2566164))

(assert (= (and b!2565136 ((_ is Concat!12319) (regOne!15759 (reg!7952 r!27340)))) b!2566165))

(assert (= (and b!2565136 ((_ is Star!7623) (regOne!15759 (reg!7952 r!27340)))) b!2566166))

(assert (= (and b!2565136 ((_ is Union!7623) (regOne!15759 (reg!7952 r!27340)))) b!2566167))

(declare-fun b!2566171 () Bool)

(declare-fun e!1620149 () Bool)

(declare-fun tp!816738 () Bool)

(declare-fun tp!816736 () Bool)

(assert (=> b!2566171 (= e!1620149 (and tp!816738 tp!816736))))

(declare-fun b!2566168 () Bool)

(assert (=> b!2566168 (= e!1620149 tp_is_empty!13101)))

(declare-fun b!2566170 () Bool)

(declare-fun tp!816735 () Bool)

(assert (=> b!2566170 (= e!1620149 tp!816735)))

(assert (=> b!2565136 (= tp!816545 e!1620149)))

(declare-fun b!2566169 () Bool)

(declare-fun tp!816737 () Bool)

(declare-fun tp!816739 () Bool)

(assert (=> b!2566169 (= e!1620149 (and tp!816737 tp!816739))))

(assert (= (and b!2565136 ((_ is ElementMatch!7623) (regTwo!15759 (reg!7952 r!27340)))) b!2566168))

(assert (= (and b!2565136 ((_ is Concat!12319) (regTwo!15759 (reg!7952 r!27340)))) b!2566169))

(assert (= (and b!2565136 ((_ is Star!7623) (regTwo!15759 (reg!7952 r!27340)))) b!2566170))

(assert (= (and b!2565136 ((_ is Union!7623) (regTwo!15759 (reg!7952 r!27340)))) b!2566171))

(declare-fun b!2566175 () Bool)

(declare-fun e!1620150 () Bool)

(declare-fun tp!816743 () Bool)

(declare-fun tp!816741 () Bool)

(assert (=> b!2566175 (= e!1620150 (and tp!816743 tp!816741))))

(declare-fun b!2566172 () Bool)

(assert (=> b!2566172 (= e!1620150 tp_is_empty!13101)))

(declare-fun b!2566174 () Bool)

(declare-fun tp!816740 () Bool)

(assert (=> b!2566174 (= e!1620150 tp!816740)))

(assert (=> b!2565127 (= tp!816534 e!1620150)))

(declare-fun b!2566173 () Bool)

(declare-fun tp!816742 () Bool)

(declare-fun tp!816744 () Bool)

(assert (=> b!2566173 (= e!1620150 (and tp!816742 tp!816744))))

(assert (= (and b!2565127 ((_ is ElementMatch!7623) (reg!7952 (regOne!15758 r!27340)))) b!2566172))

(assert (= (and b!2565127 ((_ is Concat!12319) (reg!7952 (regOne!15758 r!27340)))) b!2566173))

(assert (= (and b!2565127 ((_ is Star!7623) (reg!7952 (regOne!15758 r!27340)))) b!2566174))

(assert (= (and b!2565127 ((_ is Union!7623) (reg!7952 (regOne!15758 r!27340)))) b!2566175))

(declare-fun b!2566179 () Bool)

(declare-fun e!1620151 () Bool)

(declare-fun tp!816748 () Bool)

(declare-fun tp!816746 () Bool)

(assert (=> b!2566179 (= e!1620151 (and tp!816748 tp!816746))))

(declare-fun b!2566176 () Bool)

(assert (=> b!2566176 (= e!1620151 tp_is_empty!13101)))

(declare-fun b!2566178 () Bool)

(declare-fun tp!816745 () Bool)

(assert (=> b!2566178 (= e!1620151 tp!816745)))

(assert (=> b!2565134 (= tp!816546 e!1620151)))

(declare-fun b!2566177 () Bool)

(declare-fun tp!816747 () Bool)

(declare-fun tp!816749 () Bool)

(assert (=> b!2566177 (= e!1620151 (and tp!816747 tp!816749))))

(assert (= (and b!2565134 ((_ is ElementMatch!7623) (regOne!15758 (reg!7952 r!27340)))) b!2566176))

(assert (= (and b!2565134 ((_ is Concat!12319) (regOne!15758 (reg!7952 r!27340)))) b!2566177))

(assert (= (and b!2565134 ((_ is Star!7623) (regOne!15758 (reg!7952 r!27340)))) b!2566178))

(assert (= (and b!2565134 ((_ is Union!7623) (regOne!15758 (reg!7952 r!27340)))) b!2566179))

(declare-fun b!2566183 () Bool)

(declare-fun e!1620152 () Bool)

(declare-fun tp!816753 () Bool)

(declare-fun tp!816751 () Bool)

(assert (=> b!2566183 (= e!1620152 (and tp!816753 tp!816751))))

(declare-fun b!2566180 () Bool)

(assert (=> b!2566180 (= e!1620152 tp_is_empty!13101)))

(declare-fun b!2566182 () Bool)

(declare-fun tp!816750 () Bool)

(assert (=> b!2566182 (= e!1620152 tp!816750)))

(assert (=> b!2565134 (= tp!816548 e!1620152)))

(declare-fun b!2566181 () Bool)

(declare-fun tp!816752 () Bool)

(declare-fun tp!816754 () Bool)

(assert (=> b!2566181 (= e!1620152 (and tp!816752 tp!816754))))

(assert (= (and b!2565134 ((_ is ElementMatch!7623) (regTwo!15758 (reg!7952 r!27340)))) b!2566180))

(assert (= (and b!2565134 ((_ is Concat!12319) (regTwo!15758 (reg!7952 r!27340)))) b!2566181))

(assert (= (and b!2565134 ((_ is Star!7623) (regTwo!15758 (reg!7952 r!27340)))) b!2566182))

(assert (= (and b!2565134 ((_ is Union!7623) (regTwo!15758 (reg!7952 r!27340)))) b!2566183))

(declare-fun b!2566187 () Bool)

(declare-fun e!1620153 () Bool)

(declare-fun tp!816758 () Bool)

(declare-fun tp!816756 () Bool)

(assert (=> b!2566187 (= e!1620153 (and tp!816758 tp!816756))))

(declare-fun b!2566184 () Bool)

(assert (=> b!2566184 (= e!1620153 tp_is_empty!13101)))

(declare-fun b!2566186 () Bool)

(declare-fun tp!816755 () Bool)

(assert (=> b!2566186 (= e!1620153 tp!816755)))

(assert (=> b!2565139 (= tp!816549 e!1620153)))

(declare-fun b!2566185 () Bool)

(declare-fun tp!816757 () Bool)

(declare-fun tp!816759 () Bool)

(assert (=> b!2566185 (= e!1620153 (and tp!816757 tp!816759))))

(assert (= (and b!2565139 ((_ is ElementMatch!7623) (reg!7952 (regOne!15759 r!27340)))) b!2566184))

(assert (= (and b!2565139 ((_ is Concat!12319) (reg!7952 (regOne!15759 r!27340)))) b!2566185))

(assert (= (and b!2565139 ((_ is Star!7623) (reg!7952 (regOne!15759 r!27340)))) b!2566186))

(assert (= (and b!2565139 ((_ is Union!7623) (reg!7952 (regOne!15759 r!27340)))) b!2566187))

(declare-fun b!2566191 () Bool)

(declare-fun e!1620154 () Bool)

(declare-fun tp!816763 () Bool)

(declare-fun tp!816761 () Bool)

(assert (=> b!2566191 (= e!1620154 (and tp!816763 tp!816761))))

(declare-fun b!2566188 () Bool)

(assert (=> b!2566188 (= e!1620154 tp_is_empty!13101)))

(declare-fun b!2566190 () Bool)

(declare-fun tp!816760 () Bool)

(assert (=> b!2566190 (= e!1620154 tp!816760)))

(assert (=> b!2565130 (= tp!816541 e!1620154)))

(declare-fun b!2566189 () Bool)

(declare-fun tp!816762 () Bool)

(declare-fun tp!816764 () Bool)

(assert (=> b!2566189 (= e!1620154 (and tp!816762 tp!816764))))

(assert (= (and b!2565130 ((_ is ElementMatch!7623) (regOne!15758 (regTwo!15758 r!27340)))) b!2566188))

(assert (= (and b!2565130 ((_ is Concat!12319) (regOne!15758 (regTwo!15758 r!27340)))) b!2566189))

(assert (= (and b!2565130 ((_ is Star!7623) (regOne!15758 (regTwo!15758 r!27340)))) b!2566190))

(assert (= (and b!2565130 ((_ is Union!7623) (regOne!15758 (regTwo!15758 r!27340)))) b!2566191))

(declare-fun b!2566195 () Bool)

(declare-fun e!1620155 () Bool)

(declare-fun tp!816768 () Bool)

(declare-fun tp!816766 () Bool)

(assert (=> b!2566195 (= e!1620155 (and tp!816768 tp!816766))))

(declare-fun b!2566192 () Bool)

(assert (=> b!2566192 (= e!1620155 tp_is_empty!13101)))

(declare-fun b!2566194 () Bool)

(declare-fun tp!816765 () Bool)

(assert (=> b!2566194 (= e!1620155 tp!816765)))

(assert (=> b!2565130 (= tp!816543 e!1620155)))

(declare-fun b!2566193 () Bool)

(declare-fun tp!816767 () Bool)

(declare-fun tp!816769 () Bool)

(assert (=> b!2566193 (= e!1620155 (and tp!816767 tp!816769))))

(assert (= (and b!2565130 ((_ is ElementMatch!7623) (regTwo!15758 (regTwo!15758 r!27340)))) b!2566192))

(assert (= (and b!2565130 ((_ is Concat!12319) (regTwo!15758 (regTwo!15758 r!27340)))) b!2566193))

(assert (= (and b!2565130 ((_ is Star!7623) (regTwo!15758 (regTwo!15758 r!27340)))) b!2566194))

(assert (= (and b!2565130 ((_ is Union!7623) (regTwo!15758 (regTwo!15758 r!27340)))) b!2566195))

(declare-fun b!2566199 () Bool)

(declare-fun e!1620156 () Bool)

(declare-fun tp!816773 () Bool)

(declare-fun tp!816771 () Bool)

(assert (=> b!2566199 (= e!1620156 (and tp!816773 tp!816771))))

(declare-fun b!2566196 () Bool)

(assert (=> b!2566196 (= e!1620156 tp_is_empty!13101)))

(declare-fun b!2566198 () Bool)

(declare-fun tp!816770 () Bool)

(assert (=> b!2566198 (= e!1620156 tp!816770)))

(assert (=> b!2565144 (= tp!816557 e!1620156)))

(declare-fun b!2566197 () Bool)

(declare-fun tp!816772 () Bool)

(declare-fun tp!816774 () Bool)

(assert (=> b!2566197 (= e!1620156 (and tp!816772 tp!816774))))

(assert (= (and b!2565144 ((_ is ElementMatch!7623) (regOne!15759 (regTwo!15759 r!27340)))) b!2566196))

(assert (= (and b!2565144 ((_ is Concat!12319) (regOne!15759 (regTwo!15759 r!27340)))) b!2566197))

(assert (= (and b!2565144 ((_ is Star!7623) (regOne!15759 (regTwo!15759 r!27340)))) b!2566198))

(assert (= (and b!2565144 ((_ is Union!7623) (regOne!15759 (regTwo!15759 r!27340)))) b!2566199))

(declare-fun b!2566203 () Bool)

(declare-fun e!1620157 () Bool)

(declare-fun tp!816778 () Bool)

(declare-fun tp!816776 () Bool)

(assert (=> b!2566203 (= e!1620157 (and tp!816778 tp!816776))))

(declare-fun b!2566200 () Bool)

(assert (=> b!2566200 (= e!1620157 tp_is_empty!13101)))

(declare-fun b!2566202 () Bool)

(declare-fun tp!816775 () Bool)

(assert (=> b!2566202 (= e!1620157 tp!816775)))

(assert (=> b!2565144 (= tp!816555 e!1620157)))

(declare-fun b!2566201 () Bool)

(declare-fun tp!816777 () Bool)

(declare-fun tp!816779 () Bool)

(assert (=> b!2566201 (= e!1620157 (and tp!816777 tp!816779))))

(assert (= (and b!2565144 ((_ is ElementMatch!7623) (regTwo!15759 (regTwo!15759 r!27340)))) b!2566200))

(assert (= (and b!2565144 ((_ is Concat!12319) (regTwo!15759 (regTwo!15759 r!27340)))) b!2566201))

(assert (= (and b!2565144 ((_ is Star!7623) (regTwo!15759 (regTwo!15759 r!27340)))) b!2566202))

(assert (= (and b!2565144 ((_ is Union!7623) (regTwo!15759 (regTwo!15759 r!27340)))) b!2566203))

(declare-fun b!2566207 () Bool)

(declare-fun e!1620158 () Bool)

(declare-fun tp!816783 () Bool)

(declare-fun tp!816781 () Bool)

(assert (=> b!2566207 (= e!1620158 (and tp!816783 tp!816781))))

(declare-fun b!2566204 () Bool)

(assert (=> b!2566204 (= e!1620158 tp_is_empty!13101)))

(declare-fun b!2566206 () Bool)

(declare-fun tp!816780 () Bool)

(assert (=> b!2566206 (= e!1620158 tp!816780)))

(assert (=> b!2565135 (= tp!816544 e!1620158)))

(declare-fun b!2566205 () Bool)

(declare-fun tp!816782 () Bool)

(declare-fun tp!816784 () Bool)

(assert (=> b!2566205 (= e!1620158 (and tp!816782 tp!816784))))

(assert (= (and b!2565135 ((_ is ElementMatch!7623) (reg!7952 (reg!7952 r!27340)))) b!2566204))

(assert (= (and b!2565135 ((_ is Concat!12319) (reg!7952 (reg!7952 r!27340)))) b!2566205))

(assert (= (and b!2565135 ((_ is Star!7623) (reg!7952 (reg!7952 r!27340)))) b!2566206))

(assert (= (and b!2565135 ((_ is Union!7623) (reg!7952 (reg!7952 r!27340)))) b!2566207))

(declare-fun b!2566211 () Bool)

(declare-fun e!1620159 () Bool)

(declare-fun tp!816788 () Bool)

(declare-fun tp!816786 () Bool)

(assert (=> b!2566211 (= e!1620159 (and tp!816788 tp!816786))))

(declare-fun b!2566208 () Bool)

(assert (=> b!2566208 (= e!1620159 tp_is_empty!13101)))

(declare-fun b!2566210 () Bool)

(declare-fun tp!816785 () Bool)

(assert (=> b!2566210 (= e!1620159 tp!816785)))

(assert (=> b!2565142 (= tp!816556 e!1620159)))

(declare-fun b!2566209 () Bool)

(declare-fun tp!816787 () Bool)

(declare-fun tp!816789 () Bool)

(assert (=> b!2566209 (= e!1620159 (and tp!816787 tp!816789))))

(assert (= (and b!2565142 ((_ is ElementMatch!7623) (regOne!15758 (regTwo!15759 r!27340)))) b!2566208))

(assert (= (and b!2565142 ((_ is Concat!12319) (regOne!15758 (regTwo!15759 r!27340)))) b!2566209))

(assert (= (and b!2565142 ((_ is Star!7623) (regOne!15758 (regTwo!15759 r!27340)))) b!2566210))

(assert (= (and b!2565142 ((_ is Union!7623) (regOne!15758 (regTwo!15759 r!27340)))) b!2566211))

(declare-fun b!2566215 () Bool)

(declare-fun e!1620160 () Bool)

(declare-fun tp!816793 () Bool)

(declare-fun tp!816791 () Bool)

(assert (=> b!2566215 (= e!1620160 (and tp!816793 tp!816791))))

(declare-fun b!2566212 () Bool)

(assert (=> b!2566212 (= e!1620160 tp_is_empty!13101)))

(declare-fun b!2566214 () Bool)

(declare-fun tp!816790 () Bool)

(assert (=> b!2566214 (= e!1620160 tp!816790)))

(assert (=> b!2565142 (= tp!816558 e!1620160)))

(declare-fun b!2566213 () Bool)

(declare-fun tp!816792 () Bool)

(declare-fun tp!816794 () Bool)

(assert (=> b!2566213 (= e!1620160 (and tp!816792 tp!816794))))

(assert (= (and b!2565142 ((_ is ElementMatch!7623) (regTwo!15758 (regTwo!15759 r!27340)))) b!2566212))

(assert (= (and b!2565142 ((_ is Concat!12319) (regTwo!15758 (regTwo!15759 r!27340)))) b!2566213))

(assert (= (and b!2565142 ((_ is Star!7623) (regTwo!15758 (regTwo!15759 r!27340)))) b!2566214))

(assert (= (and b!2565142 ((_ is Union!7623) (regTwo!15758 (regTwo!15759 r!27340)))) b!2566215))

(declare-fun b!2566219 () Bool)

(declare-fun e!1620161 () Bool)

(declare-fun tp!816798 () Bool)

(declare-fun tp!816796 () Bool)

(assert (=> b!2566219 (= e!1620161 (and tp!816798 tp!816796))))

(declare-fun b!2566216 () Bool)

(assert (=> b!2566216 (= e!1620161 tp_is_empty!13101)))

(declare-fun b!2566218 () Bool)

(declare-fun tp!816795 () Bool)

(assert (=> b!2566218 (= e!1620161 tp!816795)))

(assert (=> b!2565138 (= tp!816551 e!1620161)))

(declare-fun b!2566217 () Bool)

(declare-fun tp!816797 () Bool)

(declare-fun tp!816799 () Bool)

(assert (=> b!2566217 (= e!1620161 (and tp!816797 tp!816799))))

(assert (= (and b!2565138 ((_ is ElementMatch!7623) (regOne!15758 (regOne!15759 r!27340)))) b!2566216))

(assert (= (and b!2565138 ((_ is Concat!12319) (regOne!15758 (regOne!15759 r!27340)))) b!2566217))

(assert (= (and b!2565138 ((_ is Star!7623) (regOne!15758 (regOne!15759 r!27340)))) b!2566218))

(assert (= (and b!2565138 ((_ is Union!7623) (regOne!15758 (regOne!15759 r!27340)))) b!2566219))

(declare-fun b!2566223 () Bool)

(declare-fun e!1620162 () Bool)

(declare-fun tp!816803 () Bool)

(declare-fun tp!816801 () Bool)

(assert (=> b!2566223 (= e!1620162 (and tp!816803 tp!816801))))

(declare-fun b!2566220 () Bool)

(assert (=> b!2566220 (= e!1620162 tp_is_empty!13101)))

(declare-fun b!2566222 () Bool)

(declare-fun tp!816800 () Bool)

(assert (=> b!2566222 (= e!1620162 tp!816800)))

(assert (=> b!2565138 (= tp!816553 e!1620162)))

(declare-fun b!2566221 () Bool)

(declare-fun tp!816802 () Bool)

(declare-fun tp!816804 () Bool)

(assert (=> b!2566221 (= e!1620162 (and tp!816802 tp!816804))))

(assert (= (and b!2565138 ((_ is ElementMatch!7623) (regTwo!15758 (regOne!15759 r!27340)))) b!2566220))

(assert (= (and b!2565138 ((_ is Concat!12319) (regTwo!15758 (regOne!15759 r!27340)))) b!2566221))

(assert (= (and b!2565138 ((_ is Star!7623) (regTwo!15758 (regOne!15759 r!27340)))) b!2566222))

(assert (= (and b!2565138 ((_ is Union!7623) (regTwo!15758 (regOne!15759 r!27340)))) b!2566223))

(declare-fun b!2566224 () Bool)

(declare-fun e!1620163 () Bool)

(declare-fun tp!816805 () Bool)

(assert (=> b!2566224 (= e!1620163 (and tp_is_empty!13101 tp!816805))))

(assert (=> b!2565114 (= tp!816523 e!1620163)))

(assert (= (and b!2565114 ((_ is Cons!29588) (t!211387 (t!211387 tl!4068)))) b!2566224))

(declare-fun b!2566228 () Bool)

(declare-fun e!1620164 () Bool)

(declare-fun tp!816809 () Bool)

(declare-fun tp!816807 () Bool)

(assert (=> b!2566228 (= e!1620164 (and tp!816809 tp!816807))))

(declare-fun b!2566225 () Bool)

(assert (=> b!2566225 (= e!1620164 tp_is_empty!13101)))

(declare-fun b!2566227 () Bool)

(declare-fun tp!816806 () Bool)

(assert (=> b!2566227 (= e!1620164 tp!816806)))

(assert (=> b!2565143 (= tp!816554 e!1620164)))

(declare-fun b!2566226 () Bool)

(declare-fun tp!816808 () Bool)

(declare-fun tp!816810 () Bool)

(assert (=> b!2566226 (= e!1620164 (and tp!816808 tp!816810))))

(assert (= (and b!2565143 ((_ is ElementMatch!7623) (reg!7952 (regTwo!15759 r!27340)))) b!2566225))

(assert (= (and b!2565143 ((_ is Concat!12319) (reg!7952 (regTwo!15759 r!27340)))) b!2566226))

(assert (= (and b!2565143 ((_ is Star!7623) (reg!7952 (regTwo!15759 r!27340)))) b!2566227))

(assert (= (and b!2565143 ((_ is Union!7623) (reg!7952 (regTwo!15759 r!27340)))) b!2566228))

(check-sat (not b!2566170) (not b!2566155) (not bm!165021) (not b!2566224) (not b!2566198) (not b!2565772) (not b!2566185) (not d!726573) (not bm!165125) (not b!2565972) (not b!2566175) (not b!2565691) (not bm!165095) (not b!2566131) (not bm!165071) (not bm!165130) (not bm!165136) (not d!726593) (not b!2566182) (not bm!165057) (not bm!165056) (not b!2566205) (not b!2566163) (not b!2565823) (not d!726501) (not b!2566135) (not b!2566123) (not bm!165073) (not b!2566143) (not bm!165091) (not b!2566138) (not b!2565720) (not b!2565710) (not bm!165083) (not bm!165020) (not b!2565698) (not b!2565689) (not bm!165078) (not b!2565853) (not b!2566210) (not bm!165102) (not b!2566045) (not b!2565876) (not d!726597) (not d!726515) (not b!2566147) (not b!2566141) (not b!2566161) (not bm!165146) (not b!2566159) (not b!2565994) (not bm!165085) (not b!2565873) (not b!2566199) (not b!2566021) (not b!2566153) (not b!2566206) (not b!2566191) (not b!2565695) (not d!726517) (not b!2565822) (not b!2565830) (not bm!165039) (not b!2566019) (not b!2565785) (not bm!165106) (not d!726503) (not b!2566149) (not bm!165127) (not d!726523) (not b!2566201) (not b!2566203) (not bm!165055) (not b!2566166) (not b!2566177) (not bm!165030) (not b!2566078) (not b!2566209) (not b!2565958) (not b!2565809) (not bm!165076) (not bm!165121) (not b!2566014) (not d!726569) (not b!2566219) (not b!2566189) (not d!726457) (not b!2565816) (not d!726499) (not bm!165051) (not b!2566089) (not bm!165054) (not b!2566130) (not d!726545) (not b!2566223) (not b!2566195) (not b!2566104) (not b!2566094) (not d!726505) (not b!2566129) (not b!2566133) (not b!2566167) (not bm!165061) (not bm!165099) (not b!2566217) (not b!2565795) (not bm!165026) (not b!2565952) (not bm!165035) (not bm!165058) (not b!2566118) (not bm!165097) (not d!726473) (not bm!165117) (not b!2566150) (not d!726571) (not bm!165036) (not b!2566145) (not bm!165040) (not b!2566012) (not bm!165023) (not bm!165145) (not b!2566181) (not b!2566179) (not b!2566215) (not bm!165086) (not b!2566173) (not b!2565871) (not b!2566083) (not d!726567) (not bm!165138) (not bm!165122) (not d!726531) (not b!2565721) (not b!2566139) (not b!2565841) (not b!2566226) (not b!2566009) (not d!726471) (not b!2565693) (not b!2566218) (not d!726589) (not bm!165047) (not bm!165089) (not b!2566183) (not b!2566174) (not bm!165148) (not bm!165131) (not b!2566134) (not b!2566186) tp_is_empty!13101 (not bm!165088) (not bm!165043) (not bm!165067) (not b!2566194) (not b!2566034) (not b!2566221) (not bm!165064) (not d!726455) (not b!2566187) (not bm!165103) (not bm!165044) (not d!726509) (not b!2566207) (not b!2566154) (not b!2566197) (not b!2565989) (not bm!165112) (not bm!165128) (not bm!165027) (not bm!165048) (not d!726497) (not b!2565919) (not b!2566137) (not d!726513) (not b!2566142) (not b!2566228) (not bm!165063) (not b!2566213) (not b!2566162) (not b!2565905) (not bm!165094) (not d!726581) (not bm!165092) (not b!2566050) (not b!2566193) (not d!726553) (not bm!165120) (not b!2565862) (not b!2566227) (not bm!165134) (not b!2566171) (not b!2565875) (not b!2566202) (not d!726489) (not b!2566178) (not b!2565741) (not d!726495) (not b!2566151) (not b!2565820) (not b!2565696) (not b!2566222) (not bm!165077) (not bm!165070) (not bm!165060) (not d!726535) (not bm!165050) (not d!726539) (not bm!165124) (not bm!165144) (not b!2565963) (not d!726529) (not b!2566158) (not bm!165080) (not bm!165069) (not bm!165116) (not bm!165108) (not b!2565727) (not bm!165133) (not b!2565900) (not b!2566169) (not b!2565818) (not d!726559) (not b!2566018) (not b!2565943) (not bm!165081) (not b!2565783) (not bm!165016) (not b!2566190) (not b!2566059) (not bm!165028) (not d!726551) (not bm!165019) (not bm!165045) (not b!2566068) (not bm!165141) (not b!2565924) (not b!2565890) (not b!2565800) (not b!2565878) (not b!2566157) (not b!2565829) (not b!2566016) (not b!2565746) (not b!2565933) (not b!2566033) (not bm!165111) (not bm!165068) (not bm!165139) (not b!2565978) (not b!2566211) (not b!2565869) (not b!2566146) (not d!726565) (not bm!165104) (not b!2565825) (not b!2566214) (not d!726561) (not b!2566165) (not bm!165113) (not d!726519))
(check-sat)
