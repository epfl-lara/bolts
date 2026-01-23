; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243332 () Bool)

(assert start!243332)

(declare-fun b!2490374 () Bool)

(declare-fun e!1580977 () Bool)

(declare-datatypes ((C!14804 0))(
  ( (C!14805 (val!9054 Int)) )
))
(declare-datatypes ((List!29388 0))(
  ( (Nil!29288) (Cons!29288 (h!34708 C!14804) (t!211087 List!29388)) )
))
(declare-fun tl!4068 () List!29388)

(assert (=> b!2490374 (= e!1580977 (= tl!4068 Nil!29288))))

(declare-fun b!2490375 () Bool)

(declare-fun res!1053911 () Bool)

(assert (=> b!2490375 (=> (not res!1053911) (not e!1580977))))

(declare-datatypes ((Regex!7323 0))(
  ( (ElementMatch!7323 (c!395849 C!14804)) (Concat!12019 (regOne!15158 Regex!7323) (regTwo!15158 Regex!7323)) (EmptyExpr!7323) (Star!7323 (reg!7652 Regex!7323)) (EmptyLang!7323) (Union!7323 (regOne!15159 Regex!7323) (regTwo!15159 Regex!7323)) )
))
(declare-fun lt!893886 () Regex!7323)

(declare-fun r!27340 () Regex!7323)

(declare-fun c!14016 () C!14804)

(get-info :version)

(assert (=> b!2490375 (= res!1053911 (and (not ((_ is EmptyExpr!7323) r!27340)) (not ((_ is EmptyLang!7323) r!27340)) ((_ is ElementMatch!7323) r!27340) (= c!14016 (c!395849 r!27340)) (= lt!893886 EmptyExpr!7323)))))

(declare-fun b!2490376 () Bool)

(declare-fun res!1053910 () Bool)

(assert (=> b!2490376 (=> (not res!1053910) (not e!1580977))))

(declare-fun isEmpty!16791 (List!29388) Bool)

(assert (=> b!2490376 (= res!1053910 (not (isEmpty!16791 tl!4068)))))

(declare-fun b!2490377 () Bool)

(declare-fun e!1580978 () Bool)

(declare-fun tp!797352 () Bool)

(declare-fun tp!797350 () Bool)

(assert (=> b!2490377 (= e!1580978 (and tp!797352 tp!797350))))

(declare-fun b!2490378 () Bool)

(declare-fun e!1580976 () Bool)

(declare-fun tp_is_empty!12501 () Bool)

(declare-fun tp!797353 () Bool)

(assert (=> b!2490378 (= e!1580976 (and tp_is_empty!12501 tp!797353))))

(declare-fun res!1053909 () Bool)

(declare-fun e!1580975 () Bool)

(assert (=> start!243332 (=> (not res!1053909) (not e!1580975))))

(declare-fun validRegex!2949 (Regex!7323) Bool)

(assert (=> start!243332 (= res!1053909 (validRegex!2949 r!27340))))

(assert (=> start!243332 e!1580975))

(assert (=> start!243332 e!1580978))

(assert (=> start!243332 tp_is_empty!12501))

(assert (=> start!243332 e!1580976))

(declare-fun b!2490379 () Bool)

(assert (=> b!2490379 (= e!1580978 tp_is_empty!12501)))

(declare-fun b!2490380 () Bool)

(assert (=> b!2490380 (= e!1580975 e!1580977)))

(declare-fun res!1053912 () Bool)

(assert (=> b!2490380 (=> (not res!1053912) (not e!1580977))))

(declare-fun nullable!2240 (Regex!7323) Bool)

(declare-fun derivative!18 (Regex!7323 List!29388) Regex!7323)

(assert (=> b!2490380 (= res!1053912 (nullable!2240 (derivative!18 lt!893886 tl!4068)))))

(declare-fun derivativeStep!1892 (Regex!7323 C!14804) Regex!7323)

(assert (=> b!2490380 (= lt!893886 (derivativeStep!1892 r!27340 c!14016))))

(declare-fun b!2490381 () Bool)

(declare-fun tp!797354 () Bool)

(declare-fun tp!797351 () Bool)

(assert (=> b!2490381 (= e!1580978 (and tp!797354 tp!797351))))

(declare-fun b!2490382 () Bool)

(declare-fun tp!797349 () Bool)

(assert (=> b!2490382 (= e!1580978 tp!797349)))

(assert (= (and start!243332 res!1053909) b!2490380))

(assert (= (and b!2490380 res!1053912) b!2490375))

(assert (= (and b!2490375 res!1053911) b!2490376))

(assert (= (and b!2490376 res!1053910) b!2490374))

(assert (= (and start!243332 ((_ is ElementMatch!7323) r!27340)) b!2490379))

(assert (= (and start!243332 ((_ is Concat!12019) r!27340)) b!2490381))

(assert (= (and start!243332 ((_ is Star!7323) r!27340)) b!2490382))

(assert (= (and start!243332 ((_ is Union!7323) r!27340)) b!2490377))

(assert (= (and start!243332 ((_ is Cons!29288) tl!4068)) b!2490378))

(declare-fun m!2857779 () Bool)

(assert (=> b!2490376 m!2857779))

(declare-fun m!2857781 () Bool)

(assert (=> start!243332 m!2857781))

(declare-fun m!2857783 () Bool)

(assert (=> b!2490380 m!2857783))

(assert (=> b!2490380 m!2857783))

(declare-fun m!2857785 () Bool)

(assert (=> b!2490380 m!2857785))

(declare-fun m!2857787 () Bool)

(assert (=> b!2490380 m!2857787))

(check-sat (not b!2490381) (not start!243332) (not b!2490377) tp_is_empty!12501 (not b!2490380) (not b!2490376) (not b!2490378) (not b!2490382))
(check-sat)
(get-model)

(declare-fun d!714359 () Bool)

(declare-fun nullableFct!547 (Regex!7323) Bool)

(assert (=> d!714359 (= (nullable!2240 (derivative!18 lt!893886 tl!4068)) (nullableFct!547 (derivative!18 lt!893886 tl!4068)))))

(declare-fun bs!468351 () Bool)

(assert (= bs!468351 d!714359))

(assert (=> bs!468351 m!2857783))

(declare-fun m!2857797 () Bool)

(assert (=> bs!468351 m!2857797))

(assert (=> b!2490380 d!714359))

(declare-fun d!714365 () Bool)

(declare-fun lt!893894 () Regex!7323)

(assert (=> d!714365 (validRegex!2949 lt!893894)))

(declare-fun e!1581005 () Regex!7323)

(assert (=> d!714365 (= lt!893894 e!1581005)))

(declare-fun c!395861 () Bool)

(assert (=> d!714365 (= c!395861 ((_ is Cons!29288) tl!4068))))

(assert (=> d!714365 (validRegex!2949 lt!893886)))

(assert (=> d!714365 (= (derivative!18 lt!893886 tl!4068) lt!893894)))

(declare-fun b!2490422 () Bool)

(assert (=> b!2490422 (= e!1581005 (derivative!18 (derivativeStep!1892 lt!893886 (h!34708 tl!4068)) (t!211087 tl!4068)))))

(declare-fun b!2490423 () Bool)

(assert (=> b!2490423 (= e!1581005 lt!893886)))

(assert (= (and d!714365 c!395861) b!2490422))

(assert (= (and d!714365 (not c!395861)) b!2490423))

(declare-fun m!2857807 () Bool)

(assert (=> d!714365 m!2857807))

(declare-fun m!2857809 () Bool)

(assert (=> d!714365 m!2857809))

(declare-fun m!2857811 () Bool)

(assert (=> b!2490422 m!2857811))

(assert (=> b!2490422 m!2857811))

(declare-fun m!2857813 () Bool)

(assert (=> b!2490422 m!2857813))

(assert (=> b!2490380 d!714365))

(declare-fun call!153035 () Regex!7323)

(declare-fun c!395890 () Bool)

(declare-fun bm!153030 () Bool)

(assert (=> bm!153030 (= call!153035 (derivativeStep!1892 (ite c!395890 (regTwo!15159 r!27340) (regTwo!15158 r!27340)) c!14016))))

(declare-fun bm!153031 () Bool)

(declare-fun call!153038 () Regex!7323)

(declare-fun call!153036 () Regex!7323)

(assert (=> bm!153031 (= call!153038 call!153036)))

(declare-fun b!2490507 () Bool)

(declare-fun e!1581043 () Regex!7323)

(declare-fun call!153037 () Regex!7323)

(assert (=> b!2490507 (= e!1581043 (Union!7323 (Concat!12019 call!153037 (regTwo!15158 r!27340)) EmptyLang!7323))))

(declare-fun b!2490508 () Bool)

(declare-fun e!1581041 () Regex!7323)

(declare-fun e!1581042 () Regex!7323)

(assert (=> b!2490508 (= e!1581041 e!1581042)))

(declare-fun c!395888 () Bool)

(assert (=> b!2490508 (= c!395888 ((_ is ElementMatch!7323) r!27340))))

(declare-fun b!2490509 () Bool)

(declare-fun e!1581045 () Regex!7323)

(declare-fun e!1581044 () Regex!7323)

(assert (=> b!2490509 (= e!1581045 e!1581044)))

(declare-fun c!395889 () Bool)

(assert (=> b!2490509 (= c!395889 ((_ is Star!7323) r!27340))))

(declare-fun bm!153032 () Bool)

(assert (=> bm!153032 (= call!153037 call!153038)))

(declare-fun b!2490510 () Bool)

(assert (=> b!2490510 (= e!1581045 (Union!7323 call!153036 call!153035))))

(declare-fun b!2490511 () Bool)

(declare-fun c!395887 () Bool)

(assert (=> b!2490511 (= c!395887 (nullable!2240 (regOne!15158 r!27340)))))

(assert (=> b!2490511 (= e!1581044 e!1581043)))

(declare-fun b!2490512 () Bool)

(assert (=> b!2490512 (= e!1581042 (ite (= c!14016 (c!395849 r!27340)) EmptyExpr!7323 EmptyLang!7323))))

(declare-fun b!2490513 () Bool)

(assert (=> b!2490513 (= e!1581041 EmptyLang!7323)))

(declare-fun d!714369 () Bool)

(declare-fun lt!893898 () Regex!7323)

(assert (=> d!714369 (validRegex!2949 lt!893898)))

(assert (=> d!714369 (= lt!893898 e!1581041)))

(declare-fun c!395891 () Bool)

(assert (=> d!714369 (= c!395891 (or ((_ is EmptyExpr!7323) r!27340) ((_ is EmptyLang!7323) r!27340)))))

(assert (=> d!714369 (validRegex!2949 r!27340)))

(assert (=> d!714369 (= (derivativeStep!1892 r!27340 c!14016) lt!893898)))

(declare-fun b!2490514 () Bool)

(assert (=> b!2490514 (= e!1581043 (Union!7323 (Concat!12019 call!153037 (regTwo!15158 r!27340)) call!153035))))

(declare-fun b!2490515 () Bool)

(assert (=> b!2490515 (= c!395890 ((_ is Union!7323) r!27340))))

(assert (=> b!2490515 (= e!1581042 e!1581045)))

(declare-fun bm!153033 () Bool)

(assert (=> bm!153033 (= call!153036 (derivativeStep!1892 (ite c!395890 (regOne!15159 r!27340) (ite c!395889 (reg!7652 r!27340) (regOne!15158 r!27340))) c!14016))))

(declare-fun b!2490516 () Bool)

(assert (=> b!2490516 (= e!1581044 (Concat!12019 call!153038 r!27340))))

(assert (= (and d!714369 c!395891) b!2490513))

(assert (= (and d!714369 (not c!395891)) b!2490508))

(assert (= (and b!2490508 c!395888) b!2490512))

(assert (= (and b!2490508 (not c!395888)) b!2490515))

(assert (= (and b!2490515 c!395890) b!2490510))

(assert (= (and b!2490515 (not c!395890)) b!2490509))

(assert (= (and b!2490509 c!395889) b!2490516))

(assert (= (and b!2490509 (not c!395889)) b!2490511))

(assert (= (and b!2490511 c!395887) b!2490514))

(assert (= (and b!2490511 (not c!395887)) b!2490507))

(assert (= (or b!2490514 b!2490507) bm!153032))

(assert (= (or b!2490516 bm!153032) bm!153031))

(assert (= (or b!2490510 b!2490514) bm!153030))

(assert (= (or b!2490510 bm!153031) bm!153033))

(declare-fun m!2857823 () Bool)

(assert (=> bm!153030 m!2857823))

(declare-fun m!2857825 () Bool)

(assert (=> b!2490511 m!2857825))

(declare-fun m!2857827 () Bool)

(assert (=> d!714369 m!2857827))

(assert (=> d!714369 m!2857781))

(declare-fun m!2857829 () Bool)

(assert (=> bm!153033 m!2857829))

(assert (=> b!2490380 d!714369))

(declare-fun b!2490535 () Bool)

(declare-fun e!1581064 () Bool)

(declare-fun call!153046 () Bool)

(assert (=> b!2490535 (= e!1581064 call!153046)))

(declare-fun bm!153040 () Bool)

(declare-fun call!153047 () Bool)

(assert (=> bm!153040 (= call!153046 call!153047)))

(declare-fun b!2490536 () Bool)

(declare-fun res!1053938 () Bool)

(declare-fun e!1581062 () Bool)

(assert (=> b!2490536 (=> res!1053938 e!1581062)))

(assert (=> b!2490536 (= res!1053938 (not ((_ is Concat!12019) r!27340)))))

(declare-fun e!1581066 () Bool)

(assert (=> b!2490536 (= e!1581066 e!1581062)))

(declare-fun b!2490537 () Bool)

(declare-fun e!1581063 () Bool)

(assert (=> b!2490537 (= e!1581063 e!1581066)))

(declare-fun c!395897 () Bool)

(assert (=> b!2490537 (= c!395897 ((_ is Union!7323) r!27340))))

(declare-fun bm!153041 () Bool)

(declare-fun c!395896 () Bool)

(assert (=> bm!153041 (= call!153047 (validRegex!2949 (ite c!395896 (reg!7652 r!27340) (ite c!395897 (regTwo!15159 r!27340) (regOne!15158 r!27340)))))))

(declare-fun b!2490538 () Bool)

(declare-fun e!1581061 () Bool)

(assert (=> b!2490538 (= e!1581062 e!1581061)))

(declare-fun res!1053939 () Bool)

(assert (=> b!2490538 (=> (not res!1053939) (not e!1581061))))

(assert (=> b!2490538 (= res!1053939 call!153046)))

(declare-fun b!2490540 () Bool)

(declare-fun call!153045 () Bool)

(assert (=> b!2490540 (= e!1581061 call!153045)))

(declare-fun b!2490541 () Bool)

(declare-fun res!1053941 () Bool)

(assert (=> b!2490541 (=> (not res!1053941) (not e!1581064))))

(assert (=> b!2490541 (= res!1053941 call!153045)))

(assert (=> b!2490541 (= e!1581066 e!1581064)))

(declare-fun bm!153042 () Bool)

(assert (=> bm!153042 (= call!153045 (validRegex!2949 (ite c!395897 (regOne!15159 r!27340) (regTwo!15158 r!27340))))))

(declare-fun b!2490542 () Bool)

(declare-fun e!1581060 () Bool)

(assert (=> b!2490542 (= e!1581060 e!1581063)))

(assert (=> b!2490542 (= c!395896 ((_ is Star!7323) r!27340))))

(declare-fun b!2490543 () Bool)

(declare-fun e!1581065 () Bool)

(assert (=> b!2490543 (= e!1581065 call!153047)))

(declare-fun d!714371 () Bool)

(declare-fun res!1053940 () Bool)

(assert (=> d!714371 (=> res!1053940 e!1581060)))

(assert (=> d!714371 (= res!1053940 ((_ is ElementMatch!7323) r!27340))))

(assert (=> d!714371 (= (validRegex!2949 r!27340) e!1581060)))

(declare-fun b!2490539 () Bool)

(assert (=> b!2490539 (= e!1581063 e!1581065)))

(declare-fun res!1053942 () Bool)

(assert (=> b!2490539 (= res!1053942 (not (nullable!2240 (reg!7652 r!27340))))))

(assert (=> b!2490539 (=> (not res!1053942) (not e!1581065))))

(assert (= (and d!714371 (not res!1053940)) b!2490542))

(assert (= (and b!2490542 c!395896) b!2490539))

(assert (= (and b!2490542 (not c!395896)) b!2490537))

(assert (= (and b!2490539 res!1053942) b!2490543))

(assert (= (and b!2490537 c!395897) b!2490541))

(assert (= (and b!2490537 (not c!395897)) b!2490536))

(assert (= (and b!2490541 res!1053941) b!2490535))

(assert (= (and b!2490536 (not res!1053938)) b!2490538))

(assert (= (and b!2490538 res!1053939) b!2490540))

(assert (= (or b!2490541 b!2490540) bm!153042))

(assert (= (or b!2490535 b!2490538) bm!153040))

(assert (= (or b!2490543 bm!153040) bm!153041))

(declare-fun m!2857831 () Bool)

(assert (=> bm!153041 m!2857831))

(declare-fun m!2857833 () Bool)

(assert (=> bm!153042 m!2857833))

(declare-fun m!2857835 () Bool)

(assert (=> b!2490539 m!2857835))

(assert (=> start!243332 d!714371))

(declare-fun d!714373 () Bool)

(assert (=> d!714373 (= (isEmpty!16791 tl!4068) ((_ is Nil!29288) tl!4068))))

(assert (=> b!2490376 d!714373))

(declare-fun b!2490548 () Bool)

(declare-fun e!1581069 () Bool)

(declare-fun tp!797395 () Bool)

(assert (=> b!2490548 (= e!1581069 (and tp_is_empty!12501 tp!797395))))

(assert (=> b!2490378 (= tp!797353 e!1581069)))

(assert (= (and b!2490378 ((_ is Cons!29288) (t!211087 tl!4068))) b!2490548))

(declare-fun b!2490560 () Bool)

(declare-fun e!1581072 () Bool)

(declare-fun tp!797410 () Bool)

(declare-fun tp!797409 () Bool)

(assert (=> b!2490560 (= e!1581072 (and tp!797410 tp!797409))))

(declare-fun b!2490562 () Bool)

(declare-fun tp!797406 () Bool)

(declare-fun tp!797407 () Bool)

(assert (=> b!2490562 (= e!1581072 (and tp!797406 tp!797407))))

(declare-fun b!2490559 () Bool)

(assert (=> b!2490559 (= e!1581072 tp_is_empty!12501)))

(assert (=> b!2490382 (= tp!797349 e!1581072)))

(declare-fun b!2490561 () Bool)

(declare-fun tp!797408 () Bool)

(assert (=> b!2490561 (= e!1581072 tp!797408)))

(assert (= (and b!2490382 ((_ is ElementMatch!7323) (reg!7652 r!27340))) b!2490559))

(assert (= (and b!2490382 ((_ is Concat!12019) (reg!7652 r!27340))) b!2490560))

(assert (= (and b!2490382 ((_ is Star!7323) (reg!7652 r!27340))) b!2490561))

(assert (= (and b!2490382 ((_ is Union!7323) (reg!7652 r!27340))) b!2490562))

(declare-fun b!2490564 () Bool)

(declare-fun e!1581073 () Bool)

(declare-fun tp!797415 () Bool)

(declare-fun tp!797414 () Bool)

(assert (=> b!2490564 (= e!1581073 (and tp!797415 tp!797414))))

(declare-fun b!2490566 () Bool)

(declare-fun tp!797411 () Bool)

(declare-fun tp!797412 () Bool)

(assert (=> b!2490566 (= e!1581073 (and tp!797411 tp!797412))))

(declare-fun b!2490563 () Bool)

(assert (=> b!2490563 (= e!1581073 tp_is_empty!12501)))

(assert (=> b!2490377 (= tp!797352 e!1581073)))

(declare-fun b!2490565 () Bool)

(declare-fun tp!797413 () Bool)

(assert (=> b!2490565 (= e!1581073 tp!797413)))

(assert (= (and b!2490377 ((_ is ElementMatch!7323) (regOne!15159 r!27340))) b!2490563))

(assert (= (and b!2490377 ((_ is Concat!12019) (regOne!15159 r!27340))) b!2490564))

(assert (= (and b!2490377 ((_ is Star!7323) (regOne!15159 r!27340))) b!2490565))

(assert (= (and b!2490377 ((_ is Union!7323) (regOne!15159 r!27340))) b!2490566))

(declare-fun b!2490568 () Bool)

(declare-fun e!1581074 () Bool)

(declare-fun tp!797420 () Bool)

(declare-fun tp!797419 () Bool)

(assert (=> b!2490568 (= e!1581074 (and tp!797420 tp!797419))))

(declare-fun b!2490570 () Bool)

(declare-fun tp!797416 () Bool)

(declare-fun tp!797417 () Bool)

(assert (=> b!2490570 (= e!1581074 (and tp!797416 tp!797417))))

(declare-fun b!2490567 () Bool)

(assert (=> b!2490567 (= e!1581074 tp_is_empty!12501)))

(assert (=> b!2490377 (= tp!797350 e!1581074)))

(declare-fun b!2490569 () Bool)

(declare-fun tp!797418 () Bool)

(assert (=> b!2490569 (= e!1581074 tp!797418)))

(assert (= (and b!2490377 ((_ is ElementMatch!7323) (regTwo!15159 r!27340))) b!2490567))

(assert (= (and b!2490377 ((_ is Concat!12019) (regTwo!15159 r!27340))) b!2490568))

(assert (= (and b!2490377 ((_ is Star!7323) (regTwo!15159 r!27340))) b!2490569))

(assert (= (and b!2490377 ((_ is Union!7323) (regTwo!15159 r!27340))) b!2490570))

(declare-fun b!2490572 () Bool)

(declare-fun e!1581075 () Bool)

(declare-fun tp!797425 () Bool)

(declare-fun tp!797424 () Bool)

(assert (=> b!2490572 (= e!1581075 (and tp!797425 tp!797424))))

(declare-fun b!2490574 () Bool)

(declare-fun tp!797421 () Bool)

(declare-fun tp!797422 () Bool)

(assert (=> b!2490574 (= e!1581075 (and tp!797421 tp!797422))))

(declare-fun b!2490571 () Bool)

(assert (=> b!2490571 (= e!1581075 tp_is_empty!12501)))

(assert (=> b!2490381 (= tp!797354 e!1581075)))

(declare-fun b!2490573 () Bool)

(declare-fun tp!797423 () Bool)

(assert (=> b!2490573 (= e!1581075 tp!797423)))

(assert (= (and b!2490381 ((_ is ElementMatch!7323) (regOne!15158 r!27340))) b!2490571))

(assert (= (and b!2490381 ((_ is Concat!12019) (regOne!15158 r!27340))) b!2490572))

(assert (= (and b!2490381 ((_ is Star!7323) (regOne!15158 r!27340))) b!2490573))

(assert (= (and b!2490381 ((_ is Union!7323) (regOne!15158 r!27340))) b!2490574))

(declare-fun b!2490576 () Bool)

(declare-fun e!1581076 () Bool)

(declare-fun tp!797430 () Bool)

(declare-fun tp!797429 () Bool)

(assert (=> b!2490576 (= e!1581076 (and tp!797430 tp!797429))))

(declare-fun b!2490578 () Bool)

(declare-fun tp!797426 () Bool)

(declare-fun tp!797427 () Bool)

(assert (=> b!2490578 (= e!1581076 (and tp!797426 tp!797427))))

(declare-fun b!2490575 () Bool)

(assert (=> b!2490575 (= e!1581076 tp_is_empty!12501)))

(assert (=> b!2490381 (= tp!797351 e!1581076)))

(declare-fun b!2490577 () Bool)

(declare-fun tp!797428 () Bool)

(assert (=> b!2490577 (= e!1581076 tp!797428)))

(assert (= (and b!2490381 ((_ is ElementMatch!7323) (regTwo!15158 r!27340))) b!2490575))

(assert (= (and b!2490381 ((_ is Concat!12019) (regTwo!15158 r!27340))) b!2490576))

(assert (= (and b!2490381 ((_ is Star!7323) (regTwo!15158 r!27340))) b!2490577))

(assert (= (and b!2490381 ((_ is Union!7323) (regTwo!15158 r!27340))) b!2490578))

(check-sat (not b!2490570) (not b!2490577) (not b!2490539) (not b!2490565) (not b!2490572) (not d!714359) (not bm!153041) (not b!2490511) (not bm!153033) (not d!714365) (not b!2490568) (not d!714369) (not b!2490562) (not bm!153030) (not b!2490578) (not b!2490422) (not b!2490564) (not b!2490576) (not b!2490560) (not bm!153042) (not b!2490574) (not b!2490561) (not b!2490573) (not b!2490569) tp_is_empty!12501 (not b!2490548) (not b!2490566))
(check-sat)
