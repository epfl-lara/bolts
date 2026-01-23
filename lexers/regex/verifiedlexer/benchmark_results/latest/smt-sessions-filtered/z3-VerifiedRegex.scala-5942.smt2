; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290960 () Bool)

(assert start!290960)

(declare-fun b!3034356 () Bool)

(declare-fun e!1902824 () Bool)

(declare-fun e!1902819 () Bool)

(assert (=> b!3034356 (= e!1902824 e!1902819)))

(declare-fun res!1248293 () Bool)

(assert (=> b!3034356 (=> res!1248293 e!1902819)))

(declare-fun lt!1046463 () Bool)

(assert (=> b!3034356 (= res!1248293 lt!1046463)))

(declare-fun e!1902825 () Bool)

(assert (=> b!3034356 e!1902825))

(declare-fun res!1248290 () Bool)

(assert (=> b!3034356 (=> res!1248290 e!1902825)))

(assert (=> b!3034356 (= res!1248290 lt!1046463)))

(declare-datatypes ((C!19056 0))(
  ( (C!19057 (val!11564 Int)) )
))
(declare-datatypes ((Regex!9435 0))(
  ( (ElementMatch!9435 (c!501585 C!19056)) (Concat!14756 (regOne!19382 Regex!9435) (regTwo!19382 Regex!9435)) (EmptyExpr!9435) (Star!9435 (reg!9764 Regex!9435)) (EmptyLang!9435) (Union!9435 (regOne!19383 Regex!9435) (regTwo!19383 Regex!9435)) )
))
(declare-fun r!17423 () Regex!9435)

(declare-datatypes ((List!35300 0))(
  ( (Nil!35176) (Cons!35176 (h!40596 C!19056) (t!234365 List!35300)) )
))
(declare-fun s!11993 () List!35300)

(declare-fun matchR!4317 (Regex!9435 List!35300) Bool)

(assert (=> b!3034356 (= lt!1046463 (matchR!4317 (regOne!19383 r!17423) s!11993))))

(declare-datatypes ((Unit!49293 0))(
  ( (Unit!49294) )
))
(declare-fun lt!1046469 () Unit!49293)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!312 (Regex!9435 Regex!9435 List!35300) Unit!49293)

(assert (=> b!3034356 (= lt!1046469 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!312 (regOne!19383 r!17423) (regTwo!19383 r!17423) s!11993))))

(declare-fun b!3034357 () Bool)

(declare-fun e!1902823 () Bool)

(declare-fun tp!961306 () Bool)

(assert (=> b!3034357 (= e!1902823 tp!961306)))

(declare-fun b!3034358 () Bool)

(declare-fun e!1902820 () Bool)

(assert (=> b!3034358 (= e!1902819 e!1902820)))

(declare-fun res!1248294 () Bool)

(assert (=> b!3034358 (=> res!1248294 e!1902820)))

(declare-fun lt!1046470 () Bool)

(assert (=> b!3034358 (= res!1248294 (not lt!1046470))))

(declare-fun lt!1046465 () Bool)

(assert (=> b!3034358 (= lt!1046465 lt!1046470)))

(declare-fun lt!1046461 () Regex!9435)

(assert (=> b!3034358 (= lt!1046470 (matchR!4317 lt!1046461 s!11993))))

(assert (=> b!3034358 (= lt!1046465 (matchR!4317 (regTwo!19383 r!17423) s!11993))))

(declare-fun simplify!402 (Regex!9435) Regex!9435)

(assert (=> b!3034358 (= lt!1046461 (simplify!402 (regTwo!19383 r!17423)))))

(declare-fun lt!1046467 () Unit!49293)

(declare-fun lemmaSimplifySound!250 (Regex!9435 List!35300) Unit!49293)

(assert (=> b!3034358 (= lt!1046467 (lemmaSimplifySound!250 (regTwo!19383 r!17423) s!11993))))

(declare-fun b!3034359 () Bool)

(declare-fun tp_is_empty!16433 () Bool)

(assert (=> b!3034359 (= e!1902823 tp_is_empty!16433)))

(declare-fun b!3034360 () Bool)

(declare-fun tp!961304 () Bool)

(declare-fun tp!961309 () Bool)

(assert (=> b!3034360 (= e!1902823 (and tp!961304 tp!961309))))

(declare-fun b!3034361 () Bool)

(declare-fun e!1902821 () Bool)

(assert (=> b!3034361 (= e!1902821 (not e!1902824))))

(declare-fun res!1248292 () Bool)

(assert (=> b!3034361 (=> res!1248292 e!1902824)))

(declare-fun lt!1046466 () Bool)

(get-info :version)

(assert (=> b!3034361 (= res!1248292 (or (not lt!1046466) ((_ is Concat!14756) r!17423) (not ((_ is Union!9435) r!17423))))))

(declare-fun matchRSpec!1572 (Regex!9435 List!35300) Bool)

(assert (=> b!3034361 (= lt!1046466 (matchRSpec!1572 r!17423 s!11993))))

(assert (=> b!3034361 (= lt!1046466 (matchR!4317 r!17423 s!11993))))

(declare-fun lt!1046462 () Unit!49293)

(declare-fun mainMatchTheorem!1572 (Regex!9435 List!35300) Unit!49293)

(assert (=> b!3034361 (= lt!1046462 (mainMatchTheorem!1572 r!17423 s!11993))))

(declare-fun b!3034362 () Bool)

(declare-fun tp!961308 () Bool)

(declare-fun tp!961307 () Bool)

(assert (=> b!3034362 (= e!1902823 (and tp!961308 tp!961307))))

(declare-fun res!1248289 () Bool)

(assert (=> start!290960 (=> (not res!1248289) (not e!1902821))))

(declare-fun validRegex!4168 (Regex!9435) Bool)

(assert (=> start!290960 (= res!1248289 (validRegex!4168 r!17423))))

(assert (=> start!290960 e!1902821))

(assert (=> start!290960 e!1902823))

(declare-fun e!1902818 () Bool)

(assert (=> start!290960 e!1902818))

(declare-fun b!3034355 () Bool)

(declare-fun e!1902822 () Bool)

(assert (=> b!3034355 (= e!1902820 e!1902822)))

(declare-fun res!1248291 () Bool)

(assert (=> b!3034355 (=> (not res!1248291) (not e!1902822))))

(assert (=> b!3034355 (= res!1248291 (validRegex!4168 lt!1046461))))

(declare-fun lt!1046468 () Regex!9435)

(assert (=> b!3034355 (matchR!4317 (Union!9435 lt!1046461 lt!1046468) s!11993)))

(declare-fun lt!1046464 () Unit!49293)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!76 (Regex!9435 Regex!9435 List!35300) Unit!49293)

(assert (=> b!3034355 (= lt!1046464 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!76 lt!1046461 lt!1046468 s!11993))))

(assert (=> b!3034355 (= lt!1046468 (simplify!402 (regOne!19383 r!17423)))))

(declare-fun b!3034363 () Bool)

(assert (=> b!3034363 (= e!1902825 (matchR!4317 (regTwo!19383 r!17423) s!11993))))

(declare-fun b!3034364 () Bool)

(declare-fun tp!961305 () Bool)

(assert (=> b!3034364 (= e!1902818 (and tp_is_empty!16433 tp!961305))))

(declare-fun b!3034365 () Bool)

(assert (=> b!3034365 (= e!1902822 (validRegex!4168 lt!1046468))))

(assert (= (and start!290960 res!1248289) b!3034361))

(assert (= (and b!3034361 (not res!1248292)) b!3034356))

(assert (= (and b!3034356 (not res!1248290)) b!3034363))

(assert (= (and b!3034356 (not res!1248293)) b!3034358))

(assert (= (and b!3034358 (not res!1248294)) b!3034355))

(assert (= (and b!3034355 res!1248291) b!3034365))

(assert (= (and start!290960 ((_ is ElementMatch!9435) r!17423)) b!3034359))

(assert (= (and start!290960 ((_ is Concat!14756) r!17423)) b!3034360))

(assert (= (and start!290960 ((_ is Star!9435) r!17423)) b!3034357))

(assert (= (and start!290960 ((_ is Union!9435) r!17423)) b!3034362))

(assert (= (and start!290960 ((_ is Cons!35176) s!11993)) b!3034364))

(declare-fun m!3369259 () Bool)

(assert (=> start!290960 m!3369259))

(declare-fun m!3369261 () Bool)

(assert (=> b!3034356 m!3369261))

(declare-fun m!3369263 () Bool)

(assert (=> b!3034356 m!3369263))

(declare-fun m!3369265 () Bool)

(assert (=> b!3034361 m!3369265))

(declare-fun m!3369267 () Bool)

(assert (=> b!3034361 m!3369267))

(declare-fun m!3369269 () Bool)

(assert (=> b!3034361 m!3369269))

(declare-fun m!3369271 () Bool)

(assert (=> b!3034358 m!3369271))

(declare-fun m!3369273 () Bool)

(assert (=> b!3034358 m!3369273))

(declare-fun m!3369275 () Bool)

(assert (=> b!3034358 m!3369275))

(declare-fun m!3369277 () Bool)

(assert (=> b!3034358 m!3369277))

(declare-fun m!3369279 () Bool)

(assert (=> b!3034355 m!3369279))

(declare-fun m!3369281 () Bool)

(assert (=> b!3034355 m!3369281))

(declare-fun m!3369283 () Bool)

(assert (=> b!3034355 m!3369283))

(declare-fun m!3369285 () Bool)

(assert (=> b!3034355 m!3369285))

(declare-fun m!3369287 () Bool)

(assert (=> b!3034365 m!3369287))

(assert (=> b!3034363 m!3369273))

(check-sat (not b!3034355) (not start!290960) (not b!3034362) (not b!3034360) (not b!3034357) (not b!3034361) tp_is_empty!16433 (not b!3034364) (not b!3034356) (not b!3034358) (not b!3034365) (not b!3034363))
(check-sat)
(get-model)

(declare-fun b!3034402 () Bool)

(declare-fun e!1902859 () Bool)

(declare-fun call!207017 () Bool)

(assert (=> b!3034402 (= e!1902859 call!207017)))

(declare-fun b!3034403 () Bool)

(declare-fun e!1902855 () Bool)

(declare-fun e!1902860 () Bool)

(assert (=> b!3034403 (= e!1902855 e!1902860)))

(declare-fun res!1248317 () Bool)

(declare-fun nullable!3085 (Regex!9435) Bool)

(assert (=> b!3034403 (= res!1248317 (not (nullable!3085 (reg!9764 r!17423))))))

(assert (=> b!3034403 (=> (not res!1248317) (not e!1902860))))

(declare-fun b!3034404 () Bool)

(declare-fun res!1248318 () Bool)

(declare-fun e!1902854 () Bool)

(assert (=> b!3034404 (=> res!1248318 e!1902854)))

(assert (=> b!3034404 (= res!1248318 (not ((_ is Concat!14756) r!17423)))))

(declare-fun e!1902856 () Bool)

(assert (=> b!3034404 (= e!1902856 e!1902854)))

(declare-fun bm!207010 () Bool)

(declare-fun call!207016 () Bool)

(declare-fun c!501594 () Bool)

(assert (=> bm!207010 (= call!207016 (validRegex!4168 (ite c!501594 (regTwo!19383 r!17423) (regOne!19382 r!17423))))))

(declare-fun bm!207011 () Bool)

(declare-fun call!207015 () Bool)

(assert (=> bm!207011 (= call!207017 call!207015)))

(declare-fun b!3034406 () Bool)

(declare-fun e!1902857 () Bool)

(assert (=> b!3034406 (= e!1902857 e!1902855)))

(declare-fun c!501595 () Bool)

(assert (=> b!3034406 (= c!501595 ((_ is Star!9435) r!17423))))

(declare-fun b!3034407 () Bool)

(assert (=> b!3034407 (= e!1902854 e!1902859)))

(declare-fun res!1248315 () Bool)

(assert (=> b!3034407 (=> (not res!1248315) (not e!1902859))))

(assert (=> b!3034407 (= res!1248315 call!207016)))

(declare-fun b!3034408 () Bool)

(declare-fun res!1248316 () Bool)

(declare-fun e!1902858 () Bool)

(assert (=> b!3034408 (=> (not res!1248316) (not e!1902858))))

(assert (=> b!3034408 (= res!1248316 call!207017)))

(assert (=> b!3034408 (= e!1902856 e!1902858)))

(declare-fun d!851521 () Bool)

(declare-fun res!1248319 () Bool)

(assert (=> d!851521 (=> res!1248319 e!1902857)))

(assert (=> d!851521 (= res!1248319 ((_ is ElementMatch!9435) r!17423))))

(assert (=> d!851521 (= (validRegex!4168 r!17423) e!1902857)))

(declare-fun b!3034405 () Bool)

(assert (=> b!3034405 (= e!1902860 call!207015)))

(declare-fun bm!207012 () Bool)

(assert (=> bm!207012 (= call!207015 (validRegex!4168 (ite c!501595 (reg!9764 r!17423) (ite c!501594 (regOne!19383 r!17423) (regTwo!19382 r!17423)))))))

(declare-fun b!3034409 () Bool)

(assert (=> b!3034409 (= e!1902858 call!207016)))

(declare-fun b!3034410 () Bool)

(assert (=> b!3034410 (= e!1902855 e!1902856)))

(assert (=> b!3034410 (= c!501594 ((_ is Union!9435) r!17423))))

(assert (= (and d!851521 (not res!1248319)) b!3034406))

(assert (= (and b!3034406 c!501595) b!3034403))

(assert (= (and b!3034406 (not c!501595)) b!3034410))

(assert (= (and b!3034403 res!1248317) b!3034405))

(assert (= (and b!3034410 c!501594) b!3034408))

(assert (= (and b!3034410 (not c!501594)) b!3034404))

(assert (= (and b!3034408 res!1248316) b!3034409))

(assert (= (and b!3034404 (not res!1248318)) b!3034407))

(assert (= (and b!3034407 res!1248315) b!3034402))

(assert (= (or b!3034408 b!3034402) bm!207011))

(assert (= (or b!3034409 b!3034407) bm!207010))

(assert (= (or b!3034405 bm!207011) bm!207012))

(declare-fun m!3369289 () Bool)

(assert (=> b!3034403 m!3369289))

(declare-fun m!3369291 () Bool)

(assert (=> bm!207010 m!3369291))

(declare-fun m!3369293 () Bool)

(assert (=> bm!207012 m!3369293))

(assert (=> start!290960 d!851521))

(declare-fun b!3034485 () Bool)

(declare-fun e!1902904 () Bool)

(declare-fun e!1902906 () Bool)

(assert (=> b!3034485 (= e!1902904 e!1902906)))

(declare-fun res!1248368 () Bool)

(assert (=> b!3034485 (=> res!1248368 e!1902906)))

(declare-fun call!207030 () Bool)

(assert (=> b!3034485 (= res!1248368 call!207030)))

(declare-fun b!3034486 () Bool)

(declare-fun e!1902907 () Bool)

(declare-fun head!6741 (List!35300) C!19056)

(assert (=> b!3034486 (= e!1902907 (= (head!6741 s!11993) (c!501585 (regTwo!19383 r!17423))))))

(declare-fun b!3034487 () Bool)

(declare-fun e!1902909 () Bool)

(declare-fun derivativeStep!2682 (Regex!9435 C!19056) Regex!9435)

(declare-fun tail!4967 (List!35300) List!35300)

(assert (=> b!3034487 (= e!1902909 (matchR!4317 (derivativeStep!2682 (regTwo!19383 r!17423) (head!6741 s!11993)) (tail!4967 s!11993)))))

(declare-fun b!3034488 () Bool)

(declare-fun res!1248366 () Bool)

(declare-fun e!1902905 () Bool)

(assert (=> b!3034488 (=> res!1248366 e!1902905)))

(assert (=> b!3034488 (= res!1248366 e!1902907)))

(declare-fun res!1248363 () Bool)

(assert (=> b!3034488 (=> (not res!1248363) (not e!1902907))))

(declare-fun lt!1046475 () Bool)

(assert (=> b!3034488 (= res!1248363 lt!1046475)))

(declare-fun b!3034489 () Bool)

(declare-fun e!1902908 () Bool)

(assert (=> b!3034489 (= e!1902908 (= lt!1046475 call!207030))))

(declare-fun b!3034490 () Bool)

(declare-fun res!1248364 () Bool)

(assert (=> b!3034490 (=> res!1248364 e!1902905)))

(assert (=> b!3034490 (= res!1248364 (not ((_ is ElementMatch!9435) (regTwo!19383 r!17423))))))

(declare-fun e!1902903 () Bool)

(assert (=> b!3034490 (= e!1902903 e!1902905)))

(declare-fun b!3034491 () Bool)

(assert (=> b!3034491 (= e!1902909 (nullable!3085 (regTwo!19383 r!17423)))))

(declare-fun b!3034492 () Bool)

(assert (=> b!3034492 (= e!1902905 e!1902904)))

(declare-fun res!1248367 () Bool)

(assert (=> b!3034492 (=> (not res!1248367) (not e!1902904))))

(assert (=> b!3034492 (= res!1248367 (not lt!1046475))))

(declare-fun b!3034493 () Bool)

(declare-fun res!1248365 () Bool)

(assert (=> b!3034493 (=> (not res!1248365) (not e!1902907))))

(declare-fun isEmpty!19476 (List!35300) Bool)

(assert (=> b!3034493 (= res!1248365 (isEmpty!19476 (tail!4967 s!11993)))))

(declare-fun b!3034494 () Bool)

(declare-fun res!1248369 () Bool)

(assert (=> b!3034494 (=> (not res!1248369) (not e!1902907))))

(assert (=> b!3034494 (= res!1248369 (not call!207030))))

(declare-fun bm!207025 () Bool)

(assert (=> bm!207025 (= call!207030 (isEmpty!19476 s!11993))))

(declare-fun b!3034496 () Bool)

(assert (=> b!3034496 (= e!1902908 e!1902903)))

(declare-fun c!501614 () Bool)

(assert (=> b!3034496 (= c!501614 ((_ is EmptyLang!9435) (regTwo!19383 r!17423)))))

(declare-fun b!3034497 () Bool)

(assert (=> b!3034497 (= e!1902906 (not (= (head!6741 s!11993) (c!501585 (regTwo!19383 r!17423)))))))

(declare-fun b!3034498 () Bool)

(assert (=> b!3034498 (= e!1902903 (not lt!1046475))))

(declare-fun b!3034495 () Bool)

(declare-fun res!1248362 () Bool)

(assert (=> b!3034495 (=> res!1248362 e!1902906)))

(assert (=> b!3034495 (= res!1248362 (not (isEmpty!19476 (tail!4967 s!11993))))))

(declare-fun d!851525 () Bool)

(assert (=> d!851525 e!1902908))

(declare-fun c!501613 () Bool)

(assert (=> d!851525 (= c!501613 ((_ is EmptyExpr!9435) (regTwo!19383 r!17423)))))

(assert (=> d!851525 (= lt!1046475 e!1902909)))

(declare-fun c!501612 () Bool)

(assert (=> d!851525 (= c!501612 (isEmpty!19476 s!11993))))

(assert (=> d!851525 (validRegex!4168 (regTwo!19383 r!17423))))

(assert (=> d!851525 (= (matchR!4317 (regTwo!19383 r!17423) s!11993) lt!1046475)))

(assert (= (and d!851525 c!501612) b!3034491))

(assert (= (and d!851525 (not c!501612)) b!3034487))

(assert (= (and d!851525 c!501613) b!3034489))

(assert (= (and d!851525 (not c!501613)) b!3034496))

(assert (= (and b!3034496 c!501614) b!3034498))

(assert (= (and b!3034496 (not c!501614)) b!3034490))

(assert (= (and b!3034490 (not res!1248364)) b!3034488))

(assert (= (and b!3034488 res!1248363) b!3034494))

(assert (= (and b!3034494 res!1248369) b!3034493))

(assert (= (and b!3034493 res!1248365) b!3034486))

(assert (= (and b!3034488 (not res!1248366)) b!3034492))

(assert (= (and b!3034492 res!1248367) b!3034485))

(assert (= (and b!3034485 (not res!1248368)) b!3034495))

(assert (= (and b!3034495 (not res!1248362)) b!3034497))

(assert (= (or b!3034489 b!3034485 b!3034494) bm!207025))

(declare-fun m!3369307 () Bool)

(assert (=> b!3034495 m!3369307))

(assert (=> b!3034495 m!3369307))

(declare-fun m!3369309 () Bool)

(assert (=> b!3034495 m!3369309))

(declare-fun m!3369311 () Bool)

(assert (=> bm!207025 m!3369311))

(assert (=> b!3034493 m!3369307))

(assert (=> b!3034493 m!3369307))

(assert (=> b!3034493 m!3369309))

(declare-fun m!3369313 () Bool)

(assert (=> b!3034491 m!3369313))

(declare-fun m!3369315 () Bool)

(assert (=> b!3034486 m!3369315))

(assert (=> b!3034497 m!3369315))

(assert (=> d!851525 m!3369311))

(declare-fun m!3369317 () Bool)

(assert (=> d!851525 m!3369317))

(assert (=> b!3034487 m!3369315))

(assert (=> b!3034487 m!3369315))

(declare-fun m!3369319 () Bool)

(assert (=> b!3034487 m!3369319))

(assert (=> b!3034487 m!3369307))

(assert (=> b!3034487 m!3369319))

(assert (=> b!3034487 m!3369307))

(declare-fun m!3369321 () Bool)

(assert (=> b!3034487 m!3369321))

(assert (=> b!3034363 d!851525))

(declare-fun b!3034766 () Bool)

(assert (=> b!3034766 true))

(assert (=> b!3034766 true))

(declare-fun bs!530921 () Bool)

(declare-fun b!3034767 () Bool)

(assert (= bs!530921 (and b!3034767 b!3034766)))

(declare-fun lambda!113246 () Int)

(declare-fun lambda!113245 () Int)

(assert (=> bs!530921 (not (= lambda!113246 lambda!113245))))

(assert (=> b!3034767 true))

(assert (=> b!3034767 true))

(declare-fun b!3034764 () Bool)

(declare-fun e!1903063 () Bool)

(declare-fun e!1903064 () Bool)

(assert (=> b!3034764 (= e!1903063 e!1903064)))

(declare-fun res!1248469 () Bool)

(assert (=> b!3034764 (= res!1248469 (not ((_ is EmptyLang!9435) r!17423)))))

(assert (=> b!3034764 (=> (not res!1248469) (not e!1903064))))

(declare-fun b!3034765 () Bool)

(declare-fun c!501696 () Bool)

(assert (=> b!3034765 (= c!501696 ((_ is Union!9435) r!17423))))

(declare-fun e!1903062 () Bool)

(declare-fun e!1903060 () Bool)

(assert (=> b!3034765 (= e!1903062 e!1903060)))

(declare-fun e!1903061 () Bool)

(declare-fun call!207077 () Bool)

(assert (=> b!3034766 (= e!1903061 call!207077)))

(declare-fun e!1903058 () Bool)

(assert (=> b!3034767 (= e!1903058 call!207077)))

(declare-fun b!3034768 () Bool)

(declare-fun e!1903059 () Bool)

(assert (=> b!3034768 (= e!1903059 (matchRSpec!1572 (regTwo!19383 r!17423) s!11993))))

(declare-fun bm!207072 () Bool)

(declare-fun call!207078 () Bool)

(assert (=> bm!207072 (= call!207078 (isEmpty!19476 s!11993))))

(declare-fun b!3034769 () Bool)

(declare-fun res!1248471 () Bool)

(assert (=> b!3034769 (=> res!1248471 e!1903061)))

(assert (=> b!3034769 (= res!1248471 call!207078)))

(assert (=> b!3034769 (= e!1903058 e!1903061)))

(declare-fun b!3034770 () Bool)

(assert (=> b!3034770 (= e!1903062 (= s!11993 (Cons!35176 (c!501585 r!17423) Nil!35176)))))

(declare-fun b!3034771 () Bool)

(declare-fun c!501697 () Bool)

(assert (=> b!3034771 (= c!501697 ((_ is ElementMatch!9435) r!17423))))

(assert (=> b!3034771 (= e!1903064 e!1903062)))

(declare-fun d!851531 () Bool)

(declare-fun c!501698 () Bool)

(assert (=> d!851531 (= c!501698 ((_ is EmptyExpr!9435) r!17423))))

(assert (=> d!851531 (= (matchRSpec!1572 r!17423 s!11993) e!1903063)))

(declare-fun b!3034772 () Bool)

(assert (=> b!3034772 (= e!1903060 e!1903058)))

(declare-fun c!501699 () Bool)

(assert (=> b!3034772 (= c!501699 ((_ is Star!9435) r!17423))))

(declare-fun bm!207073 () Bool)

(declare-fun Exists!1700 (Int) Bool)

(assert (=> bm!207073 (= call!207077 (Exists!1700 (ite c!501699 lambda!113245 lambda!113246)))))

(declare-fun b!3034773 () Bool)

(assert (=> b!3034773 (= e!1903063 call!207078)))

(declare-fun b!3034774 () Bool)

(assert (=> b!3034774 (= e!1903060 e!1903059)))

(declare-fun res!1248470 () Bool)

(assert (=> b!3034774 (= res!1248470 (matchRSpec!1572 (regOne!19383 r!17423) s!11993))))

(assert (=> b!3034774 (=> res!1248470 e!1903059)))

(assert (= (and d!851531 c!501698) b!3034773))

(assert (= (and d!851531 (not c!501698)) b!3034764))

(assert (= (and b!3034764 res!1248469) b!3034771))

(assert (= (and b!3034771 c!501697) b!3034770))

(assert (= (and b!3034771 (not c!501697)) b!3034765))

(assert (= (and b!3034765 c!501696) b!3034774))

(assert (= (and b!3034765 (not c!501696)) b!3034772))

(assert (= (and b!3034774 (not res!1248470)) b!3034768))

(assert (= (and b!3034772 c!501699) b!3034769))

(assert (= (and b!3034772 (not c!501699)) b!3034767))

(assert (= (and b!3034769 (not res!1248471)) b!3034766))

(assert (= (or b!3034766 b!3034767) bm!207073))

(assert (= (or b!3034773 b!3034769) bm!207072))

(declare-fun m!3369421 () Bool)

(assert (=> b!3034768 m!3369421))

(assert (=> bm!207072 m!3369311))

(declare-fun m!3369423 () Bool)

(assert (=> bm!207073 m!3369423))

(declare-fun m!3369425 () Bool)

(assert (=> b!3034774 m!3369425))

(assert (=> b!3034361 d!851531))

(declare-fun b!3034804 () Bool)

(declare-fun e!1903075 () Bool)

(declare-fun e!1903077 () Bool)

(assert (=> b!3034804 (= e!1903075 e!1903077)))

(declare-fun res!1248480 () Bool)

(assert (=> b!3034804 (=> res!1248480 e!1903077)))

(declare-fun call!207079 () Bool)

(assert (=> b!3034804 (= res!1248480 call!207079)))

(declare-fun b!3034805 () Bool)

(declare-fun e!1903078 () Bool)

(assert (=> b!3034805 (= e!1903078 (= (head!6741 s!11993) (c!501585 r!17423)))))

(declare-fun b!3034806 () Bool)

(declare-fun e!1903080 () Bool)

(assert (=> b!3034806 (= e!1903080 (matchR!4317 (derivativeStep!2682 r!17423 (head!6741 s!11993)) (tail!4967 s!11993)))))

(declare-fun b!3034807 () Bool)

(declare-fun res!1248478 () Bool)

(declare-fun e!1903076 () Bool)

(assert (=> b!3034807 (=> res!1248478 e!1903076)))

(assert (=> b!3034807 (= res!1248478 e!1903078)))

(declare-fun res!1248475 () Bool)

(assert (=> b!3034807 (=> (not res!1248475) (not e!1903078))))

(declare-fun lt!1046517 () Bool)

(assert (=> b!3034807 (= res!1248475 lt!1046517)))

(declare-fun b!3034808 () Bool)

(declare-fun e!1903079 () Bool)

(assert (=> b!3034808 (= e!1903079 (= lt!1046517 call!207079))))

(declare-fun b!3034809 () Bool)

(declare-fun res!1248476 () Bool)

(assert (=> b!3034809 (=> res!1248476 e!1903076)))

(assert (=> b!3034809 (= res!1248476 (not ((_ is ElementMatch!9435) r!17423)))))

(declare-fun e!1903074 () Bool)

(assert (=> b!3034809 (= e!1903074 e!1903076)))

(declare-fun b!3034810 () Bool)

(assert (=> b!3034810 (= e!1903080 (nullable!3085 r!17423))))

(declare-fun b!3034815 () Bool)

(assert (=> b!3034815 (= e!1903076 e!1903075)))

(declare-fun res!1248479 () Bool)

(assert (=> b!3034815 (=> (not res!1248479) (not e!1903075))))

(assert (=> b!3034815 (= res!1248479 (not lt!1046517))))

(declare-fun b!3034816 () Bool)

(declare-fun res!1248477 () Bool)

(assert (=> b!3034816 (=> (not res!1248477) (not e!1903078))))

(assert (=> b!3034816 (= res!1248477 (isEmpty!19476 (tail!4967 s!11993)))))

(declare-fun b!3034817 () Bool)

(declare-fun res!1248481 () Bool)

(assert (=> b!3034817 (=> (not res!1248481) (not e!1903078))))

(assert (=> b!3034817 (= res!1248481 (not call!207079))))

(declare-fun bm!207074 () Bool)

(assert (=> bm!207074 (= call!207079 (isEmpty!19476 s!11993))))

(declare-fun b!3034819 () Bool)

(assert (=> b!3034819 (= e!1903079 e!1903074)))

(declare-fun c!501702 () Bool)

(assert (=> b!3034819 (= c!501702 ((_ is EmptyLang!9435) r!17423))))

(declare-fun b!3034820 () Bool)

(assert (=> b!3034820 (= e!1903077 (not (= (head!6741 s!11993) (c!501585 r!17423))))))

(declare-fun b!3034821 () Bool)

(assert (=> b!3034821 (= e!1903074 (not lt!1046517))))

(declare-fun b!3034818 () Bool)

(declare-fun res!1248474 () Bool)

(assert (=> b!3034818 (=> res!1248474 e!1903077)))

(assert (=> b!3034818 (= res!1248474 (not (isEmpty!19476 (tail!4967 s!11993))))))

(declare-fun d!851557 () Bool)

(assert (=> d!851557 e!1903079))

(declare-fun c!501701 () Bool)

(assert (=> d!851557 (= c!501701 ((_ is EmptyExpr!9435) r!17423))))

(assert (=> d!851557 (= lt!1046517 e!1903080)))

(declare-fun c!501700 () Bool)

(assert (=> d!851557 (= c!501700 (isEmpty!19476 s!11993))))

(assert (=> d!851557 (validRegex!4168 r!17423)))

(assert (=> d!851557 (= (matchR!4317 r!17423 s!11993) lt!1046517)))

(assert (= (and d!851557 c!501700) b!3034810))

(assert (= (and d!851557 (not c!501700)) b!3034806))

(assert (= (and d!851557 c!501701) b!3034808))

(assert (= (and d!851557 (not c!501701)) b!3034819))

(assert (= (and b!3034819 c!501702) b!3034821))

(assert (= (and b!3034819 (not c!501702)) b!3034809))

(assert (= (and b!3034809 (not res!1248476)) b!3034807))

(assert (= (and b!3034807 res!1248475) b!3034817))

(assert (= (and b!3034817 res!1248481) b!3034816))

(assert (= (and b!3034816 res!1248477) b!3034805))

(assert (= (and b!3034807 (not res!1248478)) b!3034815))

(assert (= (and b!3034815 res!1248479) b!3034804))

(assert (= (and b!3034804 (not res!1248480)) b!3034818))

(assert (= (and b!3034818 (not res!1248474)) b!3034820))

(assert (= (or b!3034808 b!3034804 b!3034817) bm!207074))

(assert (=> b!3034818 m!3369307))

(assert (=> b!3034818 m!3369307))

(assert (=> b!3034818 m!3369309))

(assert (=> bm!207074 m!3369311))

(assert (=> b!3034816 m!3369307))

(assert (=> b!3034816 m!3369307))

(assert (=> b!3034816 m!3369309))

(declare-fun m!3369427 () Bool)

(assert (=> b!3034810 m!3369427))

(assert (=> b!3034805 m!3369315))

(assert (=> b!3034820 m!3369315))

(assert (=> d!851557 m!3369311))

(assert (=> d!851557 m!3369259))

(assert (=> b!3034806 m!3369315))

(assert (=> b!3034806 m!3369315))

(declare-fun m!3369429 () Bool)

(assert (=> b!3034806 m!3369429))

(assert (=> b!3034806 m!3369307))

(assert (=> b!3034806 m!3369429))

(assert (=> b!3034806 m!3369307))

(declare-fun m!3369431 () Bool)

(assert (=> b!3034806 m!3369431))

(assert (=> b!3034361 d!851557))

(declare-fun d!851559 () Bool)

(assert (=> d!851559 (= (matchR!4317 r!17423 s!11993) (matchRSpec!1572 r!17423 s!11993))))

(declare-fun lt!1046520 () Unit!49293)

(declare-fun choose!17997 (Regex!9435 List!35300) Unit!49293)

(assert (=> d!851559 (= lt!1046520 (choose!17997 r!17423 s!11993))))

(assert (=> d!851559 (validRegex!4168 r!17423)))

(assert (=> d!851559 (= (mainMatchTheorem!1572 r!17423 s!11993) lt!1046520)))

(declare-fun bs!530922 () Bool)

(assert (= bs!530922 d!851559))

(assert (=> bs!530922 m!3369267))

(assert (=> bs!530922 m!3369265))

(declare-fun m!3369433 () Bool)

(assert (=> bs!530922 m!3369433))

(assert (=> bs!530922 m!3369259))

(assert (=> b!3034361 d!851559))

(declare-fun b!3034830 () Bool)

(declare-fun e!1903085 () Bool)

(declare-fun e!1903087 () Bool)

(assert (=> b!3034830 (= e!1903085 e!1903087)))

(declare-fun res!1248488 () Bool)

(assert (=> b!3034830 (=> res!1248488 e!1903087)))

(declare-fun call!207080 () Bool)

(assert (=> b!3034830 (= res!1248488 call!207080)))

(declare-fun b!3034831 () Bool)

(declare-fun e!1903088 () Bool)

(assert (=> b!3034831 (= e!1903088 (= (head!6741 s!11993) (c!501585 (regOne!19383 r!17423))))))

(declare-fun b!3034832 () Bool)

(declare-fun e!1903090 () Bool)

(assert (=> b!3034832 (= e!1903090 (matchR!4317 (derivativeStep!2682 (regOne!19383 r!17423) (head!6741 s!11993)) (tail!4967 s!11993)))))

(declare-fun b!3034833 () Bool)

(declare-fun res!1248486 () Bool)

(declare-fun e!1903086 () Bool)

(assert (=> b!3034833 (=> res!1248486 e!1903086)))

(assert (=> b!3034833 (= res!1248486 e!1903088)))

(declare-fun res!1248483 () Bool)

(assert (=> b!3034833 (=> (not res!1248483) (not e!1903088))))

(declare-fun lt!1046521 () Bool)

(assert (=> b!3034833 (= res!1248483 lt!1046521)))

(declare-fun b!3034834 () Bool)

(declare-fun e!1903089 () Bool)

(assert (=> b!3034834 (= e!1903089 (= lt!1046521 call!207080))))

(declare-fun b!3034835 () Bool)

(declare-fun res!1248484 () Bool)

(assert (=> b!3034835 (=> res!1248484 e!1903086)))

(assert (=> b!3034835 (= res!1248484 (not ((_ is ElementMatch!9435) (regOne!19383 r!17423))))))

(declare-fun e!1903084 () Bool)

(assert (=> b!3034835 (= e!1903084 e!1903086)))

(declare-fun b!3034836 () Bool)

(assert (=> b!3034836 (= e!1903090 (nullable!3085 (regOne!19383 r!17423)))))

(declare-fun b!3034837 () Bool)

(assert (=> b!3034837 (= e!1903086 e!1903085)))

(declare-fun res!1248487 () Bool)

(assert (=> b!3034837 (=> (not res!1248487) (not e!1903085))))

(assert (=> b!3034837 (= res!1248487 (not lt!1046521))))

(declare-fun b!3034838 () Bool)

(declare-fun res!1248485 () Bool)

(assert (=> b!3034838 (=> (not res!1248485) (not e!1903088))))

(assert (=> b!3034838 (= res!1248485 (isEmpty!19476 (tail!4967 s!11993)))))

(declare-fun b!3034839 () Bool)

(declare-fun res!1248489 () Bool)

(assert (=> b!3034839 (=> (not res!1248489) (not e!1903088))))

(assert (=> b!3034839 (= res!1248489 (not call!207080))))

(declare-fun bm!207075 () Bool)

(assert (=> bm!207075 (= call!207080 (isEmpty!19476 s!11993))))

(declare-fun b!3034841 () Bool)

(assert (=> b!3034841 (= e!1903089 e!1903084)))

(declare-fun c!501705 () Bool)

(assert (=> b!3034841 (= c!501705 ((_ is EmptyLang!9435) (regOne!19383 r!17423)))))

(declare-fun b!3034842 () Bool)

(assert (=> b!3034842 (= e!1903087 (not (= (head!6741 s!11993) (c!501585 (regOne!19383 r!17423)))))))

(declare-fun b!3034843 () Bool)

(assert (=> b!3034843 (= e!1903084 (not lt!1046521))))

(declare-fun b!3034840 () Bool)

(declare-fun res!1248482 () Bool)

(assert (=> b!3034840 (=> res!1248482 e!1903087)))

(assert (=> b!3034840 (= res!1248482 (not (isEmpty!19476 (tail!4967 s!11993))))))

(declare-fun d!851561 () Bool)

(assert (=> d!851561 e!1903089))

(declare-fun c!501704 () Bool)

(assert (=> d!851561 (= c!501704 ((_ is EmptyExpr!9435) (regOne!19383 r!17423)))))

(assert (=> d!851561 (= lt!1046521 e!1903090)))

(declare-fun c!501703 () Bool)

(assert (=> d!851561 (= c!501703 (isEmpty!19476 s!11993))))

(assert (=> d!851561 (validRegex!4168 (regOne!19383 r!17423))))

(assert (=> d!851561 (= (matchR!4317 (regOne!19383 r!17423) s!11993) lt!1046521)))

(assert (= (and d!851561 c!501703) b!3034836))

(assert (= (and d!851561 (not c!501703)) b!3034832))

(assert (= (and d!851561 c!501704) b!3034834))

(assert (= (and d!851561 (not c!501704)) b!3034841))

(assert (= (and b!3034841 c!501705) b!3034843))

(assert (= (and b!3034841 (not c!501705)) b!3034835))

(assert (= (and b!3034835 (not res!1248484)) b!3034833))

(assert (= (and b!3034833 res!1248483) b!3034839))

(assert (= (and b!3034839 res!1248489) b!3034838))

(assert (= (and b!3034838 res!1248485) b!3034831))

(assert (= (and b!3034833 (not res!1248486)) b!3034837))

(assert (= (and b!3034837 res!1248487) b!3034830))

(assert (= (and b!3034830 (not res!1248488)) b!3034840))

(assert (= (and b!3034840 (not res!1248482)) b!3034842))

(assert (= (or b!3034834 b!3034830 b!3034839) bm!207075))

(assert (=> b!3034840 m!3369307))

(assert (=> b!3034840 m!3369307))

(assert (=> b!3034840 m!3369309))

(assert (=> bm!207075 m!3369311))

(assert (=> b!3034838 m!3369307))

(assert (=> b!3034838 m!3369307))

(assert (=> b!3034838 m!3369309))

(declare-fun m!3369435 () Bool)

(assert (=> b!3034836 m!3369435))

(assert (=> b!3034831 m!3369315))

(assert (=> b!3034842 m!3369315))

(assert (=> d!851561 m!3369311))

(declare-fun m!3369437 () Bool)

(assert (=> d!851561 m!3369437))

(assert (=> b!3034832 m!3369315))

(assert (=> b!3034832 m!3369315))

(declare-fun m!3369439 () Bool)

(assert (=> b!3034832 m!3369439))

(assert (=> b!3034832 m!3369307))

(assert (=> b!3034832 m!3369439))

(assert (=> b!3034832 m!3369307))

(declare-fun m!3369441 () Bool)

(assert (=> b!3034832 m!3369441))

(assert (=> b!3034356 d!851561))

(declare-fun d!851563 () Bool)

(declare-fun e!1903095 () Bool)

(assert (=> d!851563 e!1903095))

(declare-fun res!1248495 () Bool)

(assert (=> d!851563 (=> res!1248495 e!1903095)))

(assert (=> d!851563 (= res!1248495 (matchR!4317 (regOne!19383 r!17423) s!11993))))

(declare-fun lt!1046524 () Unit!49293)

(declare-fun choose!17998 (Regex!9435 Regex!9435 List!35300) Unit!49293)

(assert (=> d!851563 (= lt!1046524 (choose!17998 (regOne!19383 r!17423) (regTwo!19383 r!17423) s!11993))))

(declare-fun e!1903096 () Bool)

(assert (=> d!851563 e!1903096))

(declare-fun res!1248494 () Bool)

(assert (=> d!851563 (=> (not res!1248494) (not e!1903096))))

(assert (=> d!851563 (= res!1248494 (validRegex!4168 (regOne!19383 r!17423)))))

(assert (=> d!851563 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!312 (regOne!19383 r!17423) (regTwo!19383 r!17423) s!11993) lt!1046524)))

(declare-fun b!3034848 () Bool)

(assert (=> b!3034848 (= e!1903096 (validRegex!4168 (regTwo!19383 r!17423)))))

(declare-fun b!3034849 () Bool)

(assert (=> b!3034849 (= e!1903095 (matchR!4317 (regTwo!19383 r!17423) s!11993))))

(assert (= (and d!851563 res!1248494) b!3034848))

(assert (= (and d!851563 (not res!1248495)) b!3034849))

(assert (=> d!851563 m!3369261))

(declare-fun m!3369443 () Bool)

(assert (=> d!851563 m!3369443))

(assert (=> d!851563 m!3369437))

(assert (=> b!3034848 m!3369317))

(assert (=> b!3034849 m!3369273))

(assert (=> b!3034356 d!851563))

(declare-fun b!3034850 () Bool)

(declare-fun e!1903102 () Bool)

(declare-fun call!207083 () Bool)

(assert (=> b!3034850 (= e!1903102 call!207083)))

(declare-fun b!3034851 () Bool)

(declare-fun e!1903098 () Bool)

(declare-fun e!1903103 () Bool)

(assert (=> b!3034851 (= e!1903098 e!1903103)))

(declare-fun res!1248498 () Bool)

(assert (=> b!3034851 (= res!1248498 (not (nullable!3085 (reg!9764 lt!1046468))))))

(assert (=> b!3034851 (=> (not res!1248498) (not e!1903103))))

(declare-fun b!3034852 () Bool)

(declare-fun res!1248499 () Bool)

(declare-fun e!1903097 () Bool)

(assert (=> b!3034852 (=> res!1248499 e!1903097)))

(assert (=> b!3034852 (= res!1248499 (not ((_ is Concat!14756) lt!1046468)))))

(declare-fun e!1903099 () Bool)

(assert (=> b!3034852 (= e!1903099 e!1903097)))

(declare-fun bm!207076 () Bool)

(declare-fun call!207082 () Bool)

(declare-fun c!501706 () Bool)

(assert (=> bm!207076 (= call!207082 (validRegex!4168 (ite c!501706 (regTwo!19383 lt!1046468) (regOne!19382 lt!1046468))))))

(declare-fun bm!207077 () Bool)

(declare-fun call!207081 () Bool)

(assert (=> bm!207077 (= call!207083 call!207081)))

(declare-fun b!3034854 () Bool)

(declare-fun e!1903100 () Bool)

(assert (=> b!3034854 (= e!1903100 e!1903098)))

(declare-fun c!501707 () Bool)

(assert (=> b!3034854 (= c!501707 ((_ is Star!9435) lt!1046468))))

(declare-fun b!3034855 () Bool)

(assert (=> b!3034855 (= e!1903097 e!1903102)))

(declare-fun res!1248496 () Bool)

(assert (=> b!3034855 (=> (not res!1248496) (not e!1903102))))

(assert (=> b!3034855 (= res!1248496 call!207082)))

(declare-fun b!3034856 () Bool)

(declare-fun res!1248497 () Bool)

(declare-fun e!1903101 () Bool)

(assert (=> b!3034856 (=> (not res!1248497) (not e!1903101))))

(assert (=> b!3034856 (= res!1248497 call!207083)))

(assert (=> b!3034856 (= e!1903099 e!1903101)))

(declare-fun d!851565 () Bool)

(declare-fun res!1248500 () Bool)

(assert (=> d!851565 (=> res!1248500 e!1903100)))

(assert (=> d!851565 (= res!1248500 ((_ is ElementMatch!9435) lt!1046468))))

(assert (=> d!851565 (= (validRegex!4168 lt!1046468) e!1903100)))

(declare-fun b!3034853 () Bool)

(assert (=> b!3034853 (= e!1903103 call!207081)))

(declare-fun bm!207078 () Bool)

(assert (=> bm!207078 (= call!207081 (validRegex!4168 (ite c!501707 (reg!9764 lt!1046468) (ite c!501706 (regOne!19383 lt!1046468) (regTwo!19382 lt!1046468)))))))

(declare-fun b!3034857 () Bool)

(assert (=> b!3034857 (= e!1903101 call!207082)))

(declare-fun b!3034858 () Bool)

(assert (=> b!3034858 (= e!1903098 e!1903099)))

(assert (=> b!3034858 (= c!501706 ((_ is Union!9435) lt!1046468))))

(assert (= (and d!851565 (not res!1248500)) b!3034854))

(assert (= (and b!3034854 c!501707) b!3034851))

(assert (= (and b!3034854 (not c!501707)) b!3034858))

(assert (= (and b!3034851 res!1248498) b!3034853))

(assert (= (and b!3034858 c!501706) b!3034856))

(assert (= (and b!3034858 (not c!501706)) b!3034852))

(assert (= (and b!3034856 res!1248497) b!3034857))

(assert (= (and b!3034852 (not res!1248499)) b!3034855))

(assert (= (and b!3034855 res!1248496) b!3034850))

(assert (= (or b!3034856 b!3034850) bm!207077))

(assert (= (or b!3034857 b!3034855) bm!207076))

(assert (= (or b!3034853 bm!207077) bm!207078))

(declare-fun m!3369445 () Bool)

(assert (=> b!3034851 m!3369445))

(declare-fun m!3369447 () Bool)

(assert (=> bm!207076 m!3369447))

(declare-fun m!3369449 () Bool)

(assert (=> bm!207078 m!3369449))

(assert (=> b!3034365 d!851565))

(declare-fun b!3034859 () Bool)

(declare-fun e!1903109 () Bool)

(declare-fun call!207086 () Bool)

(assert (=> b!3034859 (= e!1903109 call!207086)))

(declare-fun b!3034860 () Bool)

(declare-fun e!1903105 () Bool)

(declare-fun e!1903110 () Bool)

(assert (=> b!3034860 (= e!1903105 e!1903110)))

(declare-fun res!1248503 () Bool)

(assert (=> b!3034860 (= res!1248503 (not (nullable!3085 (reg!9764 lt!1046461))))))

(assert (=> b!3034860 (=> (not res!1248503) (not e!1903110))))

(declare-fun b!3034861 () Bool)

(declare-fun res!1248504 () Bool)

(declare-fun e!1903104 () Bool)

(assert (=> b!3034861 (=> res!1248504 e!1903104)))

(assert (=> b!3034861 (= res!1248504 (not ((_ is Concat!14756) lt!1046461)))))

(declare-fun e!1903106 () Bool)

(assert (=> b!3034861 (= e!1903106 e!1903104)))

(declare-fun bm!207079 () Bool)

(declare-fun call!207085 () Bool)

(declare-fun c!501708 () Bool)

(assert (=> bm!207079 (= call!207085 (validRegex!4168 (ite c!501708 (regTwo!19383 lt!1046461) (regOne!19382 lt!1046461))))))

(declare-fun bm!207080 () Bool)

(declare-fun call!207084 () Bool)

(assert (=> bm!207080 (= call!207086 call!207084)))

(declare-fun b!3034863 () Bool)

(declare-fun e!1903107 () Bool)

(assert (=> b!3034863 (= e!1903107 e!1903105)))

(declare-fun c!501709 () Bool)

(assert (=> b!3034863 (= c!501709 ((_ is Star!9435) lt!1046461))))

(declare-fun b!3034864 () Bool)

(assert (=> b!3034864 (= e!1903104 e!1903109)))

(declare-fun res!1248501 () Bool)

(assert (=> b!3034864 (=> (not res!1248501) (not e!1903109))))

(assert (=> b!3034864 (= res!1248501 call!207085)))

(declare-fun b!3034865 () Bool)

(declare-fun res!1248502 () Bool)

(declare-fun e!1903108 () Bool)

(assert (=> b!3034865 (=> (not res!1248502) (not e!1903108))))

(assert (=> b!3034865 (= res!1248502 call!207086)))

(assert (=> b!3034865 (= e!1903106 e!1903108)))

(declare-fun d!851567 () Bool)

(declare-fun res!1248505 () Bool)

(assert (=> d!851567 (=> res!1248505 e!1903107)))

(assert (=> d!851567 (= res!1248505 ((_ is ElementMatch!9435) lt!1046461))))

(assert (=> d!851567 (= (validRegex!4168 lt!1046461) e!1903107)))

(declare-fun b!3034862 () Bool)

(assert (=> b!3034862 (= e!1903110 call!207084)))

(declare-fun bm!207081 () Bool)

(assert (=> bm!207081 (= call!207084 (validRegex!4168 (ite c!501709 (reg!9764 lt!1046461) (ite c!501708 (regOne!19383 lt!1046461) (regTwo!19382 lt!1046461)))))))

(declare-fun b!3034866 () Bool)

(assert (=> b!3034866 (= e!1903108 call!207085)))

(declare-fun b!3034867 () Bool)

(assert (=> b!3034867 (= e!1903105 e!1903106)))

(assert (=> b!3034867 (= c!501708 ((_ is Union!9435) lt!1046461))))

(assert (= (and d!851567 (not res!1248505)) b!3034863))

(assert (= (and b!3034863 c!501709) b!3034860))

(assert (= (and b!3034863 (not c!501709)) b!3034867))

(assert (= (and b!3034860 res!1248503) b!3034862))

(assert (= (and b!3034867 c!501708) b!3034865))

(assert (= (and b!3034867 (not c!501708)) b!3034861))

(assert (= (and b!3034865 res!1248502) b!3034866))

(assert (= (and b!3034861 (not res!1248504)) b!3034864))

(assert (= (and b!3034864 res!1248501) b!3034859))

(assert (= (or b!3034865 b!3034859) bm!207080))

(assert (= (or b!3034866 b!3034864) bm!207079))

(assert (= (or b!3034862 bm!207080) bm!207081))

(declare-fun m!3369451 () Bool)

(assert (=> b!3034860 m!3369451))

(declare-fun m!3369453 () Bool)

(assert (=> bm!207079 m!3369453))

(declare-fun m!3369455 () Bool)

(assert (=> bm!207081 m!3369455))

(assert (=> b!3034355 d!851567))

(declare-fun b!3034868 () Bool)

(declare-fun e!1903112 () Bool)

(declare-fun e!1903114 () Bool)

(assert (=> b!3034868 (= e!1903112 e!1903114)))

(declare-fun res!1248512 () Bool)

(assert (=> b!3034868 (=> res!1248512 e!1903114)))

(declare-fun call!207087 () Bool)

(assert (=> b!3034868 (= res!1248512 call!207087)))

(declare-fun b!3034869 () Bool)

(declare-fun e!1903115 () Bool)

(assert (=> b!3034869 (= e!1903115 (= (head!6741 s!11993) (c!501585 (Union!9435 lt!1046461 lt!1046468))))))

(declare-fun b!3034870 () Bool)

(declare-fun e!1903117 () Bool)

(assert (=> b!3034870 (= e!1903117 (matchR!4317 (derivativeStep!2682 (Union!9435 lt!1046461 lt!1046468) (head!6741 s!11993)) (tail!4967 s!11993)))))

(declare-fun b!3034871 () Bool)

(declare-fun res!1248510 () Bool)

(declare-fun e!1903113 () Bool)

(assert (=> b!3034871 (=> res!1248510 e!1903113)))

(assert (=> b!3034871 (= res!1248510 e!1903115)))

(declare-fun res!1248507 () Bool)

(assert (=> b!3034871 (=> (not res!1248507) (not e!1903115))))

(declare-fun lt!1046525 () Bool)

(assert (=> b!3034871 (= res!1248507 lt!1046525)))

(declare-fun b!3034872 () Bool)

(declare-fun e!1903116 () Bool)

(assert (=> b!3034872 (= e!1903116 (= lt!1046525 call!207087))))

(declare-fun b!3034873 () Bool)

(declare-fun res!1248508 () Bool)

(assert (=> b!3034873 (=> res!1248508 e!1903113)))

(assert (=> b!3034873 (= res!1248508 (not ((_ is ElementMatch!9435) (Union!9435 lt!1046461 lt!1046468))))))

(declare-fun e!1903111 () Bool)

(assert (=> b!3034873 (= e!1903111 e!1903113)))

(declare-fun b!3034874 () Bool)

(assert (=> b!3034874 (= e!1903117 (nullable!3085 (Union!9435 lt!1046461 lt!1046468)))))

(declare-fun b!3034875 () Bool)

(assert (=> b!3034875 (= e!1903113 e!1903112)))

(declare-fun res!1248511 () Bool)

(assert (=> b!3034875 (=> (not res!1248511) (not e!1903112))))

(assert (=> b!3034875 (= res!1248511 (not lt!1046525))))

(declare-fun b!3034876 () Bool)

(declare-fun res!1248509 () Bool)

(assert (=> b!3034876 (=> (not res!1248509) (not e!1903115))))

(assert (=> b!3034876 (= res!1248509 (isEmpty!19476 (tail!4967 s!11993)))))

(declare-fun b!3034877 () Bool)

(declare-fun res!1248513 () Bool)

(assert (=> b!3034877 (=> (not res!1248513) (not e!1903115))))

(assert (=> b!3034877 (= res!1248513 (not call!207087))))

(declare-fun bm!207082 () Bool)

(assert (=> bm!207082 (= call!207087 (isEmpty!19476 s!11993))))

(declare-fun b!3034879 () Bool)

(assert (=> b!3034879 (= e!1903116 e!1903111)))

(declare-fun c!501712 () Bool)

(assert (=> b!3034879 (= c!501712 ((_ is EmptyLang!9435) (Union!9435 lt!1046461 lt!1046468)))))

(declare-fun b!3034880 () Bool)

(assert (=> b!3034880 (= e!1903114 (not (= (head!6741 s!11993) (c!501585 (Union!9435 lt!1046461 lt!1046468)))))))

(declare-fun b!3034881 () Bool)

(assert (=> b!3034881 (= e!1903111 (not lt!1046525))))

(declare-fun b!3034878 () Bool)

(declare-fun res!1248506 () Bool)

(assert (=> b!3034878 (=> res!1248506 e!1903114)))

(assert (=> b!3034878 (= res!1248506 (not (isEmpty!19476 (tail!4967 s!11993))))))

(declare-fun d!851569 () Bool)

(assert (=> d!851569 e!1903116))

(declare-fun c!501711 () Bool)

(assert (=> d!851569 (= c!501711 ((_ is EmptyExpr!9435) (Union!9435 lt!1046461 lt!1046468)))))

(assert (=> d!851569 (= lt!1046525 e!1903117)))

(declare-fun c!501710 () Bool)

(assert (=> d!851569 (= c!501710 (isEmpty!19476 s!11993))))

(assert (=> d!851569 (validRegex!4168 (Union!9435 lt!1046461 lt!1046468))))

(assert (=> d!851569 (= (matchR!4317 (Union!9435 lt!1046461 lt!1046468) s!11993) lt!1046525)))

(assert (= (and d!851569 c!501710) b!3034874))

(assert (= (and d!851569 (not c!501710)) b!3034870))

(assert (= (and d!851569 c!501711) b!3034872))

(assert (= (and d!851569 (not c!501711)) b!3034879))

(assert (= (and b!3034879 c!501712) b!3034881))

(assert (= (and b!3034879 (not c!501712)) b!3034873))

(assert (= (and b!3034873 (not res!1248508)) b!3034871))

(assert (= (and b!3034871 res!1248507) b!3034877))

(assert (= (and b!3034877 res!1248513) b!3034876))

(assert (= (and b!3034876 res!1248509) b!3034869))

(assert (= (and b!3034871 (not res!1248510)) b!3034875))

(assert (= (and b!3034875 res!1248511) b!3034868))

(assert (= (and b!3034868 (not res!1248512)) b!3034878))

(assert (= (and b!3034878 (not res!1248506)) b!3034880))

(assert (= (or b!3034872 b!3034868 b!3034877) bm!207082))

(assert (=> b!3034878 m!3369307))

(assert (=> b!3034878 m!3369307))

(assert (=> b!3034878 m!3369309))

(assert (=> bm!207082 m!3369311))

(assert (=> b!3034876 m!3369307))

(assert (=> b!3034876 m!3369307))

(assert (=> b!3034876 m!3369309))

(declare-fun m!3369457 () Bool)

(assert (=> b!3034874 m!3369457))

(assert (=> b!3034869 m!3369315))

(assert (=> b!3034880 m!3369315))

(assert (=> d!851569 m!3369311))

(declare-fun m!3369459 () Bool)

(assert (=> d!851569 m!3369459))

(assert (=> b!3034870 m!3369315))

(assert (=> b!3034870 m!3369315))

(declare-fun m!3369461 () Bool)

(assert (=> b!3034870 m!3369461))

(assert (=> b!3034870 m!3369307))

(assert (=> b!3034870 m!3369461))

(assert (=> b!3034870 m!3369307))

(declare-fun m!3369463 () Bool)

(assert (=> b!3034870 m!3369463))

(assert (=> b!3034355 d!851569))

(declare-fun d!851571 () Bool)

(assert (=> d!851571 (matchR!4317 (Union!9435 lt!1046461 lt!1046468) s!11993)))

(declare-fun lt!1046528 () Unit!49293)

(declare-fun choose!18000 (Regex!9435 Regex!9435 List!35300) Unit!49293)

(assert (=> d!851571 (= lt!1046528 (choose!18000 lt!1046461 lt!1046468 s!11993))))

(declare-fun e!1903120 () Bool)

(assert (=> d!851571 e!1903120))

(declare-fun res!1248516 () Bool)

(assert (=> d!851571 (=> (not res!1248516) (not e!1903120))))

(assert (=> d!851571 (= res!1248516 (validRegex!4168 lt!1046461))))

(assert (=> d!851571 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!76 lt!1046461 lt!1046468 s!11993) lt!1046528)))

(declare-fun b!3034884 () Bool)

(assert (=> b!3034884 (= e!1903120 (validRegex!4168 lt!1046468))))

(assert (= (and d!851571 res!1248516) b!3034884))

(assert (=> d!851571 m!3369281))

(declare-fun m!3369465 () Bool)

(assert (=> d!851571 m!3369465))

(assert (=> d!851571 m!3369279))

(assert (=> b!3034884 m!3369287))

(assert (=> b!3034355 d!851571))

(declare-fun b!3034935 () Bool)

(declare-fun e!1903154 () Regex!9435)

(declare-fun lt!1046546 () Regex!9435)

(assert (=> b!3034935 (= e!1903154 lt!1046546)))

(declare-fun b!3034936 () Bool)

(declare-fun e!1903157 () Regex!9435)

(assert (=> b!3034936 (= e!1903157 EmptyLang!9435)))

(declare-fun b!3034937 () Bool)

(declare-fun e!1903149 () Regex!9435)

(declare-fun e!1903162 () Regex!9435)

(assert (=> b!3034937 (= e!1903149 e!1903162)))

(declare-fun c!501743 () Bool)

(assert (=> b!3034937 (= c!501743 ((_ is ElementMatch!9435) (regOne!19383 r!17423)))))

(declare-fun b!3034938 () Bool)

(declare-fun c!501745 () Bool)

(declare-fun call!207102 () Bool)

(assert (=> b!3034938 (= c!501745 call!207102)))

(declare-fun e!1903150 () Regex!9435)

(assert (=> b!3034938 (= e!1903157 e!1903150)))

(declare-fun b!3034939 () Bool)

(declare-fun e!1903152 () Regex!9435)

(declare-fun e!1903160 () Regex!9435)

(assert (=> b!3034939 (= e!1903152 e!1903160)))

(declare-fun call!207104 () Regex!9435)

(assert (=> b!3034939 (= lt!1046546 call!207104)))

(declare-fun lt!1046541 () Regex!9435)

(declare-fun call!207106 () Regex!9435)

(assert (=> b!3034939 (= lt!1046541 call!207106)))

(declare-fun c!501736 () Bool)

(declare-fun call!207108 () Bool)

(assert (=> b!3034939 (= c!501736 call!207108)))

(declare-fun c!501741 () Bool)

(declare-fun lt!1046545 () Regex!9435)

(declare-fun bm!207097 () Bool)

(declare-fun lt!1046542 () Regex!9435)

(declare-fun isEmptyExpr!506 (Regex!9435) Bool)

(assert (=> bm!207097 (= call!207102 (isEmptyExpr!506 (ite c!501741 lt!1046542 lt!1046545)))))

(declare-fun b!3034940 () Bool)

(assert (=> b!3034940 (= e!1903162 (regOne!19383 r!17423))))

(declare-fun b!3034941 () Bool)

(declare-fun e!1903153 () Regex!9435)

(assert (=> b!3034941 (= e!1903153 EmptyExpr!9435)))

(declare-fun b!3034943 () Bool)

(declare-fun e!1903161 () Regex!9435)

(assert (=> b!3034943 (= e!1903161 lt!1046545)))

(declare-fun bm!207098 () Bool)

(declare-fun c!501739 () Bool)

(assert (=> bm!207098 (= call!207106 (simplify!402 (ite c!501739 (regTwo!19383 (regOne!19383 r!17423)) (regOne!19382 (regOne!19383 r!17423)))))))

(declare-fun bm!207099 () Bool)

(declare-fun call!207107 () Bool)

(assert (=> bm!207099 (= call!207108 call!207107)))

(declare-fun b!3034944 () Bool)

(declare-fun c!501742 () Bool)

(declare-fun e!1903156 () Bool)

(assert (=> b!3034944 (= c!501742 e!1903156)))

(declare-fun res!1248525 () Bool)

(assert (=> b!3034944 (=> res!1248525 e!1903156)))

(assert (=> b!3034944 (= res!1248525 call!207107)))

(declare-fun call!207103 () Regex!9435)

(assert (=> b!3034944 (= lt!1046542 call!207103)))

(declare-fun e!1903158 () Regex!9435)

(declare-fun e!1903151 () Regex!9435)

(assert (=> b!3034944 (= e!1903158 e!1903151)))

(declare-fun bm!207100 () Bool)

(declare-fun lt!1046544 () Regex!9435)

(declare-fun isEmptyLang!500 (Regex!9435) Bool)

(assert (=> bm!207100 (= call!207107 (isEmptyLang!500 (ite c!501741 lt!1046542 (ite c!501739 lt!1046546 lt!1046544))))))

(declare-fun b!3034945 () Bool)

(declare-fun c!501744 () Bool)

(declare-fun call!207105 () Bool)

(assert (=> b!3034945 (= c!501744 call!207105)))

(assert (=> b!3034945 (= e!1903160 e!1903154)))

(declare-fun b!3034946 () Bool)

(assert (=> b!3034946 (= e!1903160 lt!1046541)))

(declare-fun bm!207101 () Bool)

(assert (=> bm!207101 (= call!207104 call!207103)))

(declare-fun bm!207102 () Bool)

(assert (=> bm!207102 (= call!207103 (simplify!402 (ite c!501741 (reg!9764 (regOne!19383 r!17423)) (ite c!501739 (regOne!19383 (regOne!19383 r!17423)) (regTwo!19382 (regOne!19383 r!17423))))))))

(declare-fun b!3034947 () Bool)

(assert (=> b!3034947 (= e!1903161 (Concat!14756 lt!1046545 lt!1046544))))

(declare-fun b!3034948 () Bool)

(assert (=> b!3034948 (= e!1903156 call!207102)))

(declare-fun b!3034949 () Bool)

(declare-fun e!1903159 () Bool)

(assert (=> b!3034949 (= e!1903159 call!207108)))

(declare-fun bm!207103 () Bool)

(assert (=> bm!207103 (= call!207105 (isEmptyLang!500 (ite c!501739 lt!1046541 lt!1046545)))))

(declare-fun b!3034950 () Bool)

(assert (=> b!3034950 (= e!1903150 e!1903161)))

(declare-fun c!501735 () Bool)

(assert (=> b!3034950 (= c!501735 (isEmptyExpr!506 lt!1046544))))

(declare-fun b!3034951 () Bool)

(assert (=> b!3034951 (= e!1903151 EmptyExpr!9435)))

(declare-fun b!3034952 () Bool)

(assert (=> b!3034952 (= e!1903149 EmptyLang!9435)))

(declare-fun b!3034953 () Bool)

(assert (=> b!3034953 (= e!1903153 e!1903158)))

(assert (=> b!3034953 (= c!501741 ((_ is Star!9435) (regOne!19383 r!17423)))))

(declare-fun b!3034954 () Bool)

(assert (=> b!3034954 (= e!1903154 (Union!9435 lt!1046546 lt!1046541))))

(declare-fun b!3034955 () Bool)

(assert (=> b!3034955 (= e!1903152 e!1903157)))

(assert (=> b!3034955 (= lt!1046545 call!207106)))

(assert (=> b!3034955 (= lt!1046544 call!207104)))

(declare-fun res!1248523 () Bool)

(assert (=> b!3034955 (= res!1248523 call!207105)))

(assert (=> b!3034955 (=> res!1248523 e!1903159)))

(declare-fun c!501740 () Bool)

(assert (=> b!3034955 (= c!501740 e!1903159)))

(declare-fun b!3034956 () Bool)

(declare-fun c!501737 () Bool)

(assert (=> b!3034956 (= c!501737 ((_ is EmptyExpr!9435) (regOne!19383 r!17423)))))

(assert (=> b!3034956 (= e!1903162 e!1903153)))

(declare-fun b!3034957 () Bool)

(assert (=> b!3034957 (= e!1903151 (Star!9435 lt!1046542))))

(declare-fun b!3034958 () Bool)

(assert (=> b!3034958 (= e!1903150 lt!1046544)))

(declare-fun b!3034959 () Bool)

(declare-fun e!1903155 () Bool)

(declare-fun lt!1046543 () Regex!9435)

(assert (=> b!3034959 (= e!1903155 (= (nullable!3085 lt!1046543) (nullable!3085 (regOne!19383 r!17423))))))

(declare-fun b!3034942 () Bool)

(assert (=> b!3034942 (= c!501739 ((_ is Union!9435) (regOne!19383 r!17423)))))

(assert (=> b!3034942 (= e!1903158 e!1903152)))

(declare-fun d!851573 () Bool)

(assert (=> d!851573 e!1903155))

(declare-fun res!1248524 () Bool)

(assert (=> d!851573 (=> (not res!1248524) (not e!1903155))))

(assert (=> d!851573 (= res!1248524 (validRegex!4168 lt!1046543))))

(assert (=> d!851573 (= lt!1046543 e!1903149)))

(declare-fun c!501738 () Bool)

(assert (=> d!851573 (= c!501738 ((_ is EmptyLang!9435) (regOne!19383 r!17423)))))

(assert (=> d!851573 (validRegex!4168 (regOne!19383 r!17423))))

(assert (=> d!851573 (= (simplify!402 (regOne!19383 r!17423)) lt!1046543)))

(assert (= (and d!851573 c!501738) b!3034952))

(assert (= (and d!851573 (not c!501738)) b!3034937))

(assert (= (and b!3034937 c!501743) b!3034940))

(assert (= (and b!3034937 (not c!501743)) b!3034956))

(assert (= (and b!3034956 c!501737) b!3034941))

(assert (= (and b!3034956 (not c!501737)) b!3034953))

(assert (= (and b!3034953 c!501741) b!3034944))

(assert (= (and b!3034953 (not c!501741)) b!3034942))

(assert (= (and b!3034944 (not res!1248525)) b!3034948))

(assert (= (and b!3034944 c!501742) b!3034951))

(assert (= (and b!3034944 (not c!501742)) b!3034957))

(assert (= (and b!3034942 c!501739) b!3034939))

(assert (= (and b!3034942 (not c!501739)) b!3034955))

(assert (= (and b!3034939 c!501736) b!3034946))

(assert (= (and b!3034939 (not c!501736)) b!3034945))

(assert (= (and b!3034945 c!501744) b!3034935))

(assert (= (and b!3034945 (not c!501744)) b!3034954))

(assert (= (and b!3034955 (not res!1248523)) b!3034949))

(assert (= (and b!3034955 c!501740) b!3034936))

(assert (= (and b!3034955 (not c!501740)) b!3034938))

(assert (= (and b!3034938 c!501745) b!3034958))

(assert (= (and b!3034938 (not c!501745)) b!3034950))

(assert (= (and b!3034950 c!501735) b!3034943))

(assert (= (and b!3034950 (not c!501735)) b!3034947))

(assert (= (or b!3034939 b!3034955) bm!207101))

(assert (= (or b!3034939 b!3034955) bm!207098))

(assert (= (or b!3034945 b!3034955) bm!207103))

(assert (= (or b!3034939 b!3034949) bm!207099))

(assert (= (or b!3034948 b!3034938) bm!207097))

(assert (= (or b!3034944 bm!207101) bm!207102))

(assert (= (or b!3034944 bm!207099) bm!207100))

(assert (= (and d!851573 res!1248524) b!3034959))

(declare-fun m!3369467 () Bool)

(assert (=> bm!207097 m!3369467))

(declare-fun m!3369469 () Bool)

(assert (=> b!3034959 m!3369469))

(assert (=> b!3034959 m!3369435))

(declare-fun m!3369471 () Bool)

(assert (=> d!851573 m!3369471))

(assert (=> d!851573 m!3369437))

(declare-fun m!3369473 () Bool)

(assert (=> bm!207102 m!3369473))

(declare-fun m!3369475 () Bool)

(assert (=> bm!207098 m!3369475))

(declare-fun m!3369477 () Bool)

(assert (=> b!3034950 m!3369477))

(declare-fun m!3369479 () Bool)

(assert (=> bm!207100 m!3369479))

(declare-fun m!3369481 () Bool)

(assert (=> bm!207103 m!3369481))

(assert (=> b!3034355 d!851573))

(declare-fun b!3034960 () Bool)

(declare-fun e!1903164 () Bool)

(declare-fun e!1903166 () Bool)

(assert (=> b!3034960 (= e!1903164 e!1903166)))

(declare-fun res!1248532 () Bool)

(assert (=> b!3034960 (=> res!1248532 e!1903166)))

(declare-fun call!207109 () Bool)

(assert (=> b!3034960 (= res!1248532 call!207109)))

(declare-fun b!3034961 () Bool)

(declare-fun e!1903167 () Bool)

(assert (=> b!3034961 (= e!1903167 (= (head!6741 s!11993) (c!501585 lt!1046461)))))

(declare-fun b!3034962 () Bool)

(declare-fun e!1903169 () Bool)

(assert (=> b!3034962 (= e!1903169 (matchR!4317 (derivativeStep!2682 lt!1046461 (head!6741 s!11993)) (tail!4967 s!11993)))))

(declare-fun b!3034963 () Bool)

(declare-fun res!1248530 () Bool)

(declare-fun e!1903165 () Bool)

(assert (=> b!3034963 (=> res!1248530 e!1903165)))

(assert (=> b!3034963 (= res!1248530 e!1903167)))

(declare-fun res!1248527 () Bool)

(assert (=> b!3034963 (=> (not res!1248527) (not e!1903167))))

(declare-fun lt!1046547 () Bool)

(assert (=> b!3034963 (= res!1248527 lt!1046547)))

(declare-fun b!3034964 () Bool)

(declare-fun e!1903168 () Bool)

(assert (=> b!3034964 (= e!1903168 (= lt!1046547 call!207109))))

(declare-fun b!3034965 () Bool)

(declare-fun res!1248528 () Bool)

(assert (=> b!3034965 (=> res!1248528 e!1903165)))

(assert (=> b!3034965 (= res!1248528 (not ((_ is ElementMatch!9435) lt!1046461)))))

(declare-fun e!1903163 () Bool)

(assert (=> b!3034965 (= e!1903163 e!1903165)))

(declare-fun b!3034966 () Bool)

(assert (=> b!3034966 (= e!1903169 (nullable!3085 lt!1046461))))

(declare-fun b!3034967 () Bool)

(assert (=> b!3034967 (= e!1903165 e!1903164)))

(declare-fun res!1248531 () Bool)

(assert (=> b!3034967 (=> (not res!1248531) (not e!1903164))))

(assert (=> b!3034967 (= res!1248531 (not lt!1046547))))

(declare-fun b!3034968 () Bool)

(declare-fun res!1248529 () Bool)

(assert (=> b!3034968 (=> (not res!1248529) (not e!1903167))))

(assert (=> b!3034968 (= res!1248529 (isEmpty!19476 (tail!4967 s!11993)))))

(declare-fun b!3034969 () Bool)

(declare-fun res!1248533 () Bool)

(assert (=> b!3034969 (=> (not res!1248533) (not e!1903167))))

(assert (=> b!3034969 (= res!1248533 (not call!207109))))

(declare-fun bm!207104 () Bool)

(assert (=> bm!207104 (= call!207109 (isEmpty!19476 s!11993))))

(declare-fun b!3034971 () Bool)

(assert (=> b!3034971 (= e!1903168 e!1903163)))

(declare-fun c!501748 () Bool)

(assert (=> b!3034971 (= c!501748 ((_ is EmptyLang!9435) lt!1046461))))

(declare-fun b!3034972 () Bool)

(assert (=> b!3034972 (= e!1903166 (not (= (head!6741 s!11993) (c!501585 lt!1046461))))))

(declare-fun b!3034973 () Bool)

(assert (=> b!3034973 (= e!1903163 (not lt!1046547))))

(declare-fun b!3034970 () Bool)

(declare-fun res!1248526 () Bool)

(assert (=> b!3034970 (=> res!1248526 e!1903166)))

(assert (=> b!3034970 (= res!1248526 (not (isEmpty!19476 (tail!4967 s!11993))))))

(declare-fun d!851575 () Bool)

(assert (=> d!851575 e!1903168))

(declare-fun c!501747 () Bool)

(assert (=> d!851575 (= c!501747 ((_ is EmptyExpr!9435) lt!1046461))))

(assert (=> d!851575 (= lt!1046547 e!1903169)))

(declare-fun c!501746 () Bool)

(assert (=> d!851575 (= c!501746 (isEmpty!19476 s!11993))))

(assert (=> d!851575 (validRegex!4168 lt!1046461)))

(assert (=> d!851575 (= (matchR!4317 lt!1046461 s!11993) lt!1046547)))

(assert (= (and d!851575 c!501746) b!3034966))

(assert (= (and d!851575 (not c!501746)) b!3034962))

(assert (= (and d!851575 c!501747) b!3034964))

(assert (= (and d!851575 (not c!501747)) b!3034971))

(assert (= (and b!3034971 c!501748) b!3034973))

(assert (= (and b!3034971 (not c!501748)) b!3034965))

(assert (= (and b!3034965 (not res!1248528)) b!3034963))

(assert (= (and b!3034963 res!1248527) b!3034969))

(assert (= (and b!3034969 res!1248533) b!3034968))

(assert (= (and b!3034968 res!1248529) b!3034961))

(assert (= (and b!3034963 (not res!1248530)) b!3034967))

(assert (= (and b!3034967 res!1248531) b!3034960))

(assert (= (and b!3034960 (not res!1248532)) b!3034970))

(assert (= (and b!3034970 (not res!1248526)) b!3034972))

(assert (= (or b!3034964 b!3034960 b!3034969) bm!207104))

(assert (=> b!3034970 m!3369307))

(assert (=> b!3034970 m!3369307))

(assert (=> b!3034970 m!3369309))

(assert (=> bm!207104 m!3369311))

(assert (=> b!3034968 m!3369307))

(assert (=> b!3034968 m!3369307))

(assert (=> b!3034968 m!3369309))

(declare-fun m!3369483 () Bool)

(assert (=> b!3034966 m!3369483))

(assert (=> b!3034961 m!3369315))

(assert (=> b!3034972 m!3369315))

(assert (=> d!851575 m!3369311))

(assert (=> d!851575 m!3369279))

(assert (=> b!3034962 m!3369315))

(assert (=> b!3034962 m!3369315))

(declare-fun m!3369485 () Bool)

(assert (=> b!3034962 m!3369485))

(assert (=> b!3034962 m!3369307))

(assert (=> b!3034962 m!3369485))

(assert (=> b!3034962 m!3369307))

(declare-fun m!3369487 () Bool)

(assert (=> b!3034962 m!3369487))

(assert (=> b!3034358 d!851575))

(assert (=> b!3034358 d!851525))

(declare-fun b!3034974 () Bool)

(declare-fun e!1903175 () Regex!9435)

(declare-fun lt!1046553 () Regex!9435)

(assert (=> b!3034974 (= e!1903175 lt!1046553)))

(declare-fun b!3034975 () Bool)

(declare-fun e!1903178 () Regex!9435)

(assert (=> b!3034975 (= e!1903178 EmptyLang!9435)))

(declare-fun b!3034976 () Bool)

(declare-fun e!1903170 () Regex!9435)

(declare-fun e!1903183 () Regex!9435)

(assert (=> b!3034976 (= e!1903170 e!1903183)))

(declare-fun c!501757 () Bool)

(assert (=> b!3034976 (= c!501757 ((_ is ElementMatch!9435) (regTwo!19383 r!17423)))))

(declare-fun b!3034977 () Bool)

(declare-fun c!501759 () Bool)

(declare-fun call!207110 () Bool)

(assert (=> b!3034977 (= c!501759 call!207110)))

(declare-fun e!1903171 () Regex!9435)

(assert (=> b!3034977 (= e!1903178 e!1903171)))

(declare-fun b!3034978 () Bool)

(declare-fun e!1903173 () Regex!9435)

(declare-fun e!1903181 () Regex!9435)

(assert (=> b!3034978 (= e!1903173 e!1903181)))

(declare-fun call!207112 () Regex!9435)

(assert (=> b!3034978 (= lt!1046553 call!207112)))

(declare-fun lt!1046548 () Regex!9435)

(declare-fun call!207114 () Regex!9435)

(assert (=> b!3034978 (= lt!1046548 call!207114)))

(declare-fun c!501750 () Bool)

(declare-fun call!207116 () Bool)

(assert (=> b!3034978 (= c!501750 call!207116)))

(declare-fun lt!1046549 () Regex!9435)

(declare-fun lt!1046552 () Regex!9435)

(declare-fun bm!207105 () Bool)

(declare-fun c!501755 () Bool)

(assert (=> bm!207105 (= call!207110 (isEmptyExpr!506 (ite c!501755 lt!1046549 lt!1046552)))))

(declare-fun b!3034979 () Bool)

(assert (=> b!3034979 (= e!1903183 (regTwo!19383 r!17423))))

(declare-fun b!3034980 () Bool)

(declare-fun e!1903174 () Regex!9435)

(assert (=> b!3034980 (= e!1903174 EmptyExpr!9435)))

(declare-fun b!3034982 () Bool)

(declare-fun e!1903182 () Regex!9435)

(assert (=> b!3034982 (= e!1903182 lt!1046552)))

(declare-fun bm!207106 () Bool)

(declare-fun c!501753 () Bool)

(assert (=> bm!207106 (= call!207114 (simplify!402 (ite c!501753 (regTwo!19383 (regTwo!19383 r!17423)) (regOne!19382 (regTwo!19383 r!17423)))))))

(declare-fun bm!207107 () Bool)

(declare-fun call!207115 () Bool)

(assert (=> bm!207107 (= call!207116 call!207115)))

(declare-fun b!3034983 () Bool)

(declare-fun c!501756 () Bool)

(declare-fun e!1903177 () Bool)

(assert (=> b!3034983 (= c!501756 e!1903177)))

(declare-fun res!1248536 () Bool)

(assert (=> b!3034983 (=> res!1248536 e!1903177)))

(assert (=> b!3034983 (= res!1248536 call!207115)))

(declare-fun call!207111 () Regex!9435)

(assert (=> b!3034983 (= lt!1046549 call!207111)))

(declare-fun e!1903179 () Regex!9435)

(declare-fun e!1903172 () Regex!9435)

(assert (=> b!3034983 (= e!1903179 e!1903172)))

(declare-fun lt!1046551 () Regex!9435)

(declare-fun bm!207108 () Bool)

(assert (=> bm!207108 (= call!207115 (isEmptyLang!500 (ite c!501755 lt!1046549 (ite c!501753 lt!1046553 lt!1046551))))))

(declare-fun b!3034984 () Bool)

(declare-fun c!501758 () Bool)

(declare-fun call!207113 () Bool)

(assert (=> b!3034984 (= c!501758 call!207113)))

(assert (=> b!3034984 (= e!1903181 e!1903175)))

(declare-fun b!3034985 () Bool)

(assert (=> b!3034985 (= e!1903181 lt!1046548)))

(declare-fun bm!207109 () Bool)

(assert (=> bm!207109 (= call!207112 call!207111)))

(declare-fun bm!207110 () Bool)

(assert (=> bm!207110 (= call!207111 (simplify!402 (ite c!501755 (reg!9764 (regTwo!19383 r!17423)) (ite c!501753 (regOne!19383 (regTwo!19383 r!17423)) (regTwo!19382 (regTwo!19383 r!17423))))))))

(declare-fun b!3034986 () Bool)

(assert (=> b!3034986 (= e!1903182 (Concat!14756 lt!1046552 lt!1046551))))

(declare-fun b!3034987 () Bool)

(assert (=> b!3034987 (= e!1903177 call!207110)))

(declare-fun b!3034988 () Bool)

(declare-fun e!1903180 () Bool)

(assert (=> b!3034988 (= e!1903180 call!207116)))

(declare-fun bm!207111 () Bool)

(assert (=> bm!207111 (= call!207113 (isEmptyLang!500 (ite c!501753 lt!1046548 lt!1046552)))))

(declare-fun b!3034989 () Bool)

(assert (=> b!3034989 (= e!1903171 e!1903182)))

(declare-fun c!501749 () Bool)

(assert (=> b!3034989 (= c!501749 (isEmptyExpr!506 lt!1046551))))

(declare-fun b!3034990 () Bool)

(assert (=> b!3034990 (= e!1903172 EmptyExpr!9435)))

(declare-fun b!3034991 () Bool)

(assert (=> b!3034991 (= e!1903170 EmptyLang!9435)))

(declare-fun b!3034992 () Bool)

(assert (=> b!3034992 (= e!1903174 e!1903179)))

(assert (=> b!3034992 (= c!501755 ((_ is Star!9435) (regTwo!19383 r!17423)))))

(declare-fun b!3034993 () Bool)

(assert (=> b!3034993 (= e!1903175 (Union!9435 lt!1046553 lt!1046548))))

(declare-fun b!3034994 () Bool)

(assert (=> b!3034994 (= e!1903173 e!1903178)))

(assert (=> b!3034994 (= lt!1046552 call!207114)))

(assert (=> b!3034994 (= lt!1046551 call!207112)))

(declare-fun res!1248534 () Bool)

(assert (=> b!3034994 (= res!1248534 call!207113)))

(assert (=> b!3034994 (=> res!1248534 e!1903180)))

(declare-fun c!501754 () Bool)

(assert (=> b!3034994 (= c!501754 e!1903180)))

(declare-fun b!3034995 () Bool)

(declare-fun c!501751 () Bool)

(assert (=> b!3034995 (= c!501751 ((_ is EmptyExpr!9435) (regTwo!19383 r!17423)))))

(assert (=> b!3034995 (= e!1903183 e!1903174)))

(declare-fun b!3034996 () Bool)

(assert (=> b!3034996 (= e!1903172 (Star!9435 lt!1046549))))

(declare-fun b!3034997 () Bool)

(assert (=> b!3034997 (= e!1903171 lt!1046551)))

(declare-fun b!3034998 () Bool)

(declare-fun e!1903176 () Bool)

(declare-fun lt!1046550 () Regex!9435)

(assert (=> b!3034998 (= e!1903176 (= (nullable!3085 lt!1046550) (nullable!3085 (regTwo!19383 r!17423))))))

(declare-fun b!3034981 () Bool)

(assert (=> b!3034981 (= c!501753 ((_ is Union!9435) (regTwo!19383 r!17423)))))

(assert (=> b!3034981 (= e!1903179 e!1903173)))

(declare-fun d!851577 () Bool)

(assert (=> d!851577 e!1903176))

(declare-fun res!1248535 () Bool)

(assert (=> d!851577 (=> (not res!1248535) (not e!1903176))))

(assert (=> d!851577 (= res!1248535 (validRegex!4168 lt!1046550))))

(assert (=> d!851577 (= lt!1046550 e!1903170)))

(declare-fun c!501752 () Bool)

(assert (=> d!851577 (= c!501752 ((_ is EmptyLang!9435) (regTwo!19383 r!17423)))))

(assert (=> d!851577 (validRegex!4168 (regTwo!19383 r!17423))))

(assert (=> d!851577 (= (simplify!402 (regTwo!19383 r!17423)) lt!1046550)))

(assert (= (and d!851577 c!501752) b!3034991))

(assert (= (and d!851577 (not c!501752)) b!3034976))

(assert (= (and b!3034976 c!501757) b!3034979))

(assert (= (and b!3034976 (not c!501757)) b!3034995))

(assert (= (and b!3034995 c!501751) b!3034980))

(assert (= (and b!3034995 (not c!501751)) b!3034992))

(assert (= (and b!3034992 c!501755) b!3034983))

(assert (= (and b!3034992 (not c!501755)) b!3034981))

(assert (= (and b!3034983 (not res!1248536)) b!3034987))

(assert (= (and b!3034983 c!501756) b!3034990))

(assert (= (and b!3034983 (not c!501756)) b!3034996))

(assert (= (and b!3034981 c!501753) b!3034978))

(assert (= (and b!3034981 (not c!501753)) b!3034994))

(assert (= (and b!3034978 c!501750) b!3034985))

(assert (= (and b!3034978 (not c!501750)) b!3034984))

(assert (= (and b!3034984 c!501758) b!3034974))

(assert (= (and b!3034984 (not c!501758)) b!3034993))

(assert (= (and b!3034994 (not res!1248534)) b!3034988))

(assert (= (and b!3034994 c!501754) b!3034975))

(assert (= (and b!3034994 (not c!501754)) b!3034977))

(assert (= (and b!3034977 c!501759) b!3034997))

(assert (= (and b!3034977 (not c!501759)) b!3034989))

(assert (= (and b!3034989 c!501749) b!3034982))

(assert (= (and b!3034989 (not c!501749)) b!3034986))

(assert (= (or b!3034978 b!3034994) bm!207109))

(assert (= (or b!3034978 b!3034994) bm!207106))

(assert (= (or b!3034984 b!3034994) bm!207111))

(assert (= (or b!3034978 b!3034988) bm!207107))

(assert (= (or b!3034987 b!3034977) bm!207105))

(assert (= (or b!3034983 bm!207109) bm!207110))

(assert (= (or b!3034983 bm!207107) bm!207108))

(assert (= (and d!851577 res!1248535) b!3034998))

(declare-fun m!3369489 () Bool)

(assert (=> bm!207105 m!3369489))

(declare-fun m!3369491 () Bool)

(assert (=> b!3034998 m!3369491))

(assert (=> b!3034998 m!3369313))

(declare-fun m!3369493 () Bool)

(assert (=> d!851577 m!3369493))

(assert (=> d!851577 m!3369317))

(declare-fun m!3369495 () Bool)

(assert (=> bm!207110 m!3369495))

(declare-fun m!3369497 () Bool)

(assert (=> bm!207106 m!3369497))

(declare-fun m!3369499 () Bool)

(assert (=> b!3034989 m!3369499))

(declare-fun m!3369501 () Bool)

(assert (=> bm!207108 m!3369501))

(declare-fun m!3369503 () Bool)

(assert (=> bm!207111 m!3369503))

(assert (=> b!3034358 d!851577))

(declare-fun d!851579 () Bool)

(assert (=> d!851579 (= (matchR!4317 (regTwo!19383 r!17423) s!11993) (matchR!4317 (simplify!402 (regTwo!19383 r!17423)) s!11993))))

(declare-fun lt!1046556 () Unit!49293)

(declare-fun choose!18003 (Regex!9435 List!35300) Unit!49293)

(assert (=> d!851579 (= lt!1046556 (choose!18003 (regTwo!19383 r!17423) s!11993))))

(assert (=> d!851579 (validRegex!4168 (regTwo!19383 r!17423))))

(assert (=> d!851579 (= (lemmaSimplifySound!250 (regTwo!19383 r!17423) s!11993) lt!1046556)))

(declare-fun bs!530923 () Bool)

(assert (= bs!530923 d!851579))

(assert (=> bs!530923 m!3369273))

(assert (=> bs!530923 m!3369317))

(assert (=> bs!530923 m!3369275))

(declare-fun m!3369505 () Bool)

(assert (=> bs!530923 m!3369505))

(assert (=> bs!530923 m!3369275))

(declare-fun m!3369507 () Bool)

(assert (=> bs!530923 m!3369507))

(assert (=> b!3034358 d!851579))

(declare-fun b!3035011 () Bool)

(declare-fun e!1903186 () Bool)

(declare-fun tp!961361 () Bool)

(assert (=> b!3035011 (= e!1903186 tp!961361)))

(assert (=> b!3034362 (= tp!961308 e!1903186)))

(declare-fun b!3035010 () Bool)

(declare-fun tp!961362 () Bool)

(declare-fun tp!961358 () Bool)

(assert (=> b!3035010 (= e!1903186 (and tp!961362 tp!961358))))

(declare-fun b!3035009 () Bool)

(assert (=> b!3035009 (= e!1903186 tp_is_empty!16433)))

(declare-fun b!3035012 () Bool)

(declare-fun tp!961359 () Bool)

(declare-fun tp!961360 () Bool)

(assert (=> b!3035012 (= e!1903186 (and tp!961359 tp!961360))))

(assert (= (and b!3034362 ((_ is ElementMatch!9435) (regOne!19383 r!17423))) b!3035009))

(assert (= (and b!3034362 ((_ is Concat!14756) (regOne!19383 r!17423))) b!3035010))

(assert (= (and b!3034362 ((_ is Star!9435) (regOne!19383 r!17423))) b!3035011))

(assert (= (and b!3034362 ((_ is Union!9435) (regOne!19383 r!17423))) b!3035012))

(declare-fun b!3035015 () Bool)

(declare-fun e!1903187 () Bool)

(declare-fun tp!961366 () Bool)

(assert (=> b!3035015 (= e!1903187 tp!961366)))

(assert (=> b!3034362 (= tp!961307 e!1903187)))

(declare-fun b!3035014 () Bool)

(declare-fun tp!961367 () Bool)

(declare-fun tp!961363 () Bool)

(assert (=> b!3035014 (= e!1903187 (and tp!961367 tp!961363))))

(declare-fun b!3035013 () Bool)

(assert (=> b!3035013 (= e!1903187 tp_is_empty!16433)))

(declare-fun b!3035016 () Bool)

(declare-fun tp!961364 () Bool)

(declare-fun tp!961365 () Bool)

(assert (=> b!3035016 (= e!1903187 (and tp!961364 tp!961365))))

(assert (= (and b!3034362 ((_ is ElementMatch!9435) (regTwo!19383 r!17423))) b!3035013))

(assert (= (and b!3034362 ((_ is Concat!14756) (regTwo!19383 r!17423))) b!3035014))

(assert (= (and b!3034362 ((_ is Star!9435) (regTwo!19383 r!17423))) b!3035015))

(assert (= (and b!3034362 ((_ is Union!9435) (regTwo!19383 r!17423))) b!3035016))

(declare-fun b!3035019 () Bool)

(declare-fun e!1903188 () Bool)

(declare-fun tp!961371 () Bool)

(assert (=> b!3035019 (= e!1903188 tp!961371)))

(assert (=> b!3034357 (= tp!961306 e!1903188)))

(declare-fun b!3035018 () Bool)

(declare-fun tp!961372 () Bool)

(declare-fun tp!961368 () Bool)

(assert (=> b!3035018 (= e!1903188 (and tp!961372 tp!961368))))

(declare-fun b!3035017 () Bool)

(assert (=> b!3035017 (= e!1903188 tp_is_empty!16433)))

(declare-fun b!3035020 () Bool)

(declare-fun tp!961369 () Bool)

(declare-fun tp!961370 () Bool)

(assert (=> b!3035020 (= e!1903188 (and tp!961369 tp!961370))))

(assert (= (and b!3034357 ((_ is ElementMatch!9435) (reg!9764 r!17423))) b!3035017))

(assert (= (and b!3034357 ((_ is Concat!14756) (reg!9764 r!17423))) b!3035018))

(assert (= (and b!3034357 ((_ is Star!9435) (reg!9764 r!17423))) b!3035019))

(assert (= (and b!3034357 ((_ is Union!9435) (reg!9764 r!17423))) b!3035020))

(declare-fun b!3035023 () Bool)

(declare-fun e!1903189 () Bool)

(declare-fun tp!961376 () Bool)

(assert (=> b!3035023 (= e!1903189 tp!961376)))

(assert (=> b!3034360 (= tp!961304 e!1903189)))

(declare-fun b!3035022 () Bool)

(declare-fun tp!961377 () Bool)

(declare-fun tp!961373 () Bool)

(assert (=> b!3035022 (= e!1903189 (and tp!961377 tp!961373))))

(declare-fun b!3035021 () Bool)

(assert (=> b!3035021 (= e!1903189 tp_is_empty!16433)))

(declare-fun b!3035024 () Bool)

(declare-fun tp!961374 () Bool)

(declare-fun tp!961375 () Bool)

(assert (=> b!3035024 (= e!1903189 (and tp!961374 tp!961375))))

(assert (= (and b!3034360 ((_ is ElementMatch!9435) (regOne!19382 r!17423))) b!3035021))

(assert (= (and b!3034360 ((_ is Concat!14756) (regOne!19382 r!17423))) b!3035022))

(assert (= (and b!3034360 ((_ is Star!9435) (regOne!19382 r!17423))) b!3035023))

(assert (= (and b!3034360 ((_ is Union!9435) (regOne!19382 r!17423))) b!3035024))

(declare-fun b!3035027 () Bool)

(declare-fun e!1903190 () Bool)

(declare-fun tp!961381 () Bool)

(assert (=> b!3035027 (= e!1903190 tp!961381)))

(assert (=> b!3034360 (= tp!961309 e!1903190)))

(declare-fun b!3035026 () Bool)

(declare-fun tp!961382 () Bool)

(declare-fun tp!961378 () Bool)

(assert (=> b!3035026 (= e!1903190 (and tp!961382 tp!961378))))

(declare-fun b!3035025 () Bool)

(assert (=> b!3035025 (= e!1903190 tp_is_empty!16433)))

(declare-fun b!3035028 () Bool)

(declare-fun tp!961379 () Bool)

(declare-fun tp!961380 () Bool)

(assert (=> b!3035028 (= e!1903190 (and tp!961379 tp!961380))))

(assert (= (and b!3034360 ((_ is ElementMatch!9435) (regTwo!19382 r!17423))) b!3035025))

(assert (= (and b!3034360 ((_ is Concat!14756) (regTwo!19382 r!17423))) b!3035026))

(assert (= (and b!3034360 ((_ is Star!9435) (regTwo!19382 r!17423))) b!3035027))

(assert (= (and b!3034360 ((_ is Union!9435) (regTwo!19382 r!17423))) b!3035028))

(declare-fun b!3035033 () Bool)

(declare-fun e!1903193 () Bool)

(declare-fun tp!961385 () Bool)

(assert (=> b!3035033 (= e!1903193 (and tp_is_empty!16433 tp!961385))))

(assert (=> b!3034364 (= tp!961305 e!1903193)))

(assert (= (and b!3034364 ((_ is Cons!35176) (t!234365 s!11993))) b!3035033))

(check-sat (not b!3035011) (not b!3035016) (not b!3034774) (not b!3034810) (not bm!207103) (not b!3034818) (not b!3034840) (not b!3034966) (not bm!207102) (not b!3035028) (not b!3034487) (not b!3034768) (not b!3034836) (not b!3034950) (not bm!207078) (not b!3034998) (not bm!207074) (not b!3034403) (not d!851575) (not b!3034968) (not b!3034497) (not b!3035033) (not bm!207111) (not b!3034878) (not bm!207075) (not b!3035027) (not bm!207106) (not b!3034860) (not b!3034849) (not b!3034970) (not bm!207097) (not d!851525) (not b!3034880) (not b!3035022) (not b!3034805) (not b!3034495) (not b!3034851) (not b!3035012) (not b!3035014) (not d!851573) (not bm!207079) (not b!3035018) (not b!3034848) (not b!3034486) (not bm!207098) (not bm!207100) (not bm!207082) (not d!851579) (not b!3034874) (not b!3034959) (not d!851563) (not b!3035024) (not bm!207104) (not bm!207110) (not bm!207010) (not b!3035023) (not b!3034870) (not b!3034869) (not b!3035010) (not b!3034831) (not d!851569) (not b!3034816) (not bm!207081) (not b!3034876) (not b!3034961) (not b!3035015) (not b!3034884) (not b!3034842) (not b!3035020) (not b!3035019) (not bm!207105) (not b!3034838) (not d!851557) (not d!851577) (not d!851559) tp_is_empty!16433 (not b!3034491) (not b!3035026) (not b!3034989) (not bm!207108) (not d!851561) (not b!3034820) (not b!3034962) (not bm!207076) (not b!3034493) (not d!851571) (not b!3034832) (not bm!207025) (not bm!207073) (not b!3034806) (not b!3034972) (not bm!207012) (not bm!207072))
(check-sat)
