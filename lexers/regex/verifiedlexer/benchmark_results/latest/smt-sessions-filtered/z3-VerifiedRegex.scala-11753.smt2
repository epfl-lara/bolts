; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663766 () Bool)

(assert start!663766)

(declare-fun b!6879276 () Bool)

(declare-fun e!4145840 () Bool)

(declare-datatypes ((C!33776 0))(
  ( (C!33777 (val!26590 Int)) )
))
(declare-datatypes ((Regex!16753 0))(
  ( (ElementMatch!16753 (c!1279891 C!33776)) (Concat!25598 (regOne!34018 Regex!16753) (regTwo!34018 Regex!16753)) (EmptyExpr!16753) (Star!16753 (reg!17082 Regex!16753)) (EmptyLang!16753) (Union!16753 (regOne!34019 Regex!16753) (regTwo!34019 Regex!16753)) )
))
(declare-fun lt!2459451 () Regex!16753)

(declare-fun validRegex!8461 (Regex!16753) Bool)

(assert (=> b!6879276 (= e!4145840 (not (validRegex!8461 lt!2459451)))))

(declare-fun lt!2459453 () Regex!16753)

(declare-datatypes ((List!66510 0))(
  ( (Nil!66386) (Cons!66386 (h!72834 C!33776) (t!380253 List!66510)) )
))
(declare-fun s!14361 () List!66510)

(declare-fun matchR!8898 (Regex!16753 List!66510) Bool)

(declare-fun matchRSpec!3816 (Regex!16753 List!66510) Bool)

(assert (=> b!6879276 (= (matchR!8898 lt!2459453 s!14361) (matchRSpec!3816 lt!2459453 s!14361))))

(declare-datatypes ((Unit!160226 0))(
  ( (Unit!160227) )
))
(declare-fun lt!2459452 () Unit!160226)

(declare-fun mainMatchTheorem!3816 (Regex!16753 List!66510) Unit!160226)

(assert (=> b!6879276 (= lt!2459452 (mainMatchTheorem!3816 lt!2459453 s!14361))))

(assert (=> b!6879276 (= (matchR!8898 lt!2459451 s!14361) (matchRSpec!3816 lt!2459451 s!14361))))

(declare-fun lt!2459450 () Unit!160226)

(assert (=> b!6879276 (= lt!2459450 (mainMatchTheorem!3816 lt!2459451 s!14361))))

(declare-fun r1!6342 () Regex!16753)

(declare-fun r3!135 () Regex!16753)

(declare-fun r2!6280 () Regex!16753)

(assert (=> b!6879276 (= lt!2459453 (Concat!25598 r1!6342 (Concat!25598 r2!6280 r3!135)))))

(assert (=> b!6879276 (= lt!2459451 (Concat!25598 (Concat!25598 r1!6342 r2!6280) r3!135))))

(declare-fun b!6879277 () Bool)

(declare-fun res!2804380 () Bool)

(assert (=> b!6879277 (=> (not res!2804380) (not e!4145840))))

(assert (=> b!6879277 (= res!2804380 (validRegex!8461 r3!135))))

(declare-fun b!6879278 () Bool)

(declare-fun e!4145838 () Bool)

(declare-fun tp_is_empty!42731 () Bool)

(assert (=> b!6879278 (= e!4145838 tp_is_empty!42731)))

(declare-fun b!6879279 () Bool)

(declare-fun res!2804381 () Bool)

(assert (=> b!6879279 (=> (not res!2804381) (not e!4145840))))

(assert (=> b!6879279 (= res!2804381 (validRegex!8461 r2!6280))))

(declare-fun b!6879280 () Bool)

(declare-fun e!4145839 () Bool)

(declare-fun tp!1891492 () Bool)

(declare-fun tp!1891481 () Bool)

(assert (=> b!6879280 (= e!4145839 (and tp!1891492 tp!1891481))))

(declare-fun b!6879281 () Bool)

(declare-fun e!4145842 () Bool)

(declare-fun tp!1891484 () Bool)

(assert (=> b!6879281 (= e!4145842 tp!1891484)))

(declare-fun b!6879282 () Bool)

(declare-fun tp!1891483 () Bool)

(declare-fun tp!1891489 () Bool)

(assert (=> b!6879282 (= e!4145842 (and tp!1891483 tp!1891489))))

(declare-fun res!2804382 () Bool)

(assert (=> start!663766 (=> (not res!2804382) (not e!4145840))))

(assert (=> start!663766 (= res!2804382 (validRegex!8461 r1!6342))))

(assert (=> start!663766 e!4145840))

(assert (=> start!663766 e!4145842))

(assert (=> start!663766 e!4145839))

(assert (=> start!663766 e!4145838))

(declare-fun e!4145841 () Bool)

(assert (=> start!663766 e!4145841))

(declare-fun b!6879283 () Bool)

(declare-fun tp!1891486 () Bool)

(declare-fun tp!1891491 () Bool)

(assert (=> b!6879283 (= e!4145839 (and tp!1891486 tp!1891491))))

(declare-fun b!6879284 () Bool)

(declare-fun tp!1891490 () Bool)

(assert (=> b!6879284 (= e!4145841 (and tp_is_empty!42731 tp!1891490))))

(declare-fun b!6879285 () Bool)

(declare-fun tp!1891495 () Bool)

(declare-fun tp!1891482 () Bool)

(assert (=> b!6879285 (= e!4145842 (and tp!1891495 tp!1891482))))

(declare-fun b!6879286 () Bool)

(declare-fun tp!1891493 () Bool)

(declare-fun tp!1891480 () Bool)

(assert (=> b!6879286 (= e!4145838 (and tp!1891493 tp!1891480))))

(declare-fun b!6879287 () Bool)

(assert (=> b!6879287 (= e!4145839 tp_is_empty!42731)))

(declare-fun b!6879288 () Bool)

(declare-fun tp!1891494 () Bool)

(assert (=> b!6879288 (= e!4145838 tp!1891494)))

(declare-fun b!6879289 () Bool)

(declare-fun tp!1891487 () Bool)

(declare-fun tp!1891488 () Bool)

(assert (=> b!6879289 (= e!4145838 (and tp!1891487 tp!1891488))))

(declare-fun b!6879290 () Bool)

(assert (=> b!6879290 (= e!4145842 tp_is_empty!42731)))

(declare-fun b!6879291 () Bool)

(declare-fun tp!1891485 () Bool)

(assert (=> b!6879291 (= e!4145839 tp!1891485)))

(assert (= (and start!663766 res!2804382) b!6879279))

(assert (= (and b!6879279 res!2804381) b!6879277))

(assert (= (and b!6879277 res!2804380) b!6879276))

(get-info :version)

(assert (= (and start!663766 ((_ is ElementMatch!16753) r1!6342)) b!6879290))

(assert (= (and start!663766 ((_ is Concat!25598) r1!6342)) b!6879282))

(assert (= (and start!663766 ((_ is Star!16753) r1!6342)) b!6879281))

(assert (= (and start!663766 ((_ is Union!16753) r1!6342)) b!6879285))

(assert (= (and start!663766 ((_ is ElementMatch!16753) r2!6280)) b!6879287))

(assert (= (and start!663766 ((_ is Concat!25598) r2!6280)) b!6879283))

(assert (= (and start!663766 ((_ is Star!16753) r2!6280)) b!6879291))

(assert (= (and start!663766 ((_ is Union!16753) r2!6280)) b!6879280))

(assert (= (and start!663766 ((_ is ElementMatch!16753) r3!135)) b!6879278))

(assert (= (and start!663766 ((_ is Concat!25598) r3!135)) b!6879286))

(assert (= (and start!663766 ((_ is Star!16753) r3!135)) b!6879288))

(assert (= (and start!663766 ((_ is Union!16753) r3!135)) b!6879289))

(assert (= (and start!663766 ((_ is Cons!66386) s!14361)) b!6879284))

(declare-fun m!7605700 () Bool)

(assert (=> b!6879276 m!7605700))

(declare-fun m!7605702 () Bool)

(assert (=> b!6879276 m!7605702))

(declare-fun m!7605704 () Bool)

(assert (=> b!6879276 m!7605704))

(declare-fun m!7605706 () Bool)

(assert (=> b!6879276 m!7605706))

(declare-fun m!7605708 () Bool)

(assert (=> b!6879276 m!7605708))

(declare-fun m!7605710 () Bool)

(assert (=> b!6879276 m!7605710))

(declare-fun m!7605712 () Bool)

(assert (=> b!6879276 m!7605712))

(declare-fun m!7605714 () Bool)

(assert (=> b!6879277 m!7605714))

(declare-fun m!7605716 () Bool)

(assert (=> b!6879279 m!7605716))

(declare-fun m!7605718 () Bool)

(assert (=> start!663766 m!7605718))

(check-sat (not b!6879283) (not b!6879284) (not b!6879289) (not b!6879286) (not b!6879279) (not b!6879280) (not b!6879282) (not b!6879288) (not b!6879281) (not b!6879285) (not b!6879291) tp_is_empty!42731 (not start!663766) (not b!6879277) (not b!6879276))
(check-sat)
(get-model)

(declare-fun bm!626315 () Bool)

(declare-fun call!626321 () Bool)

(declare-fun call!626322 () Bool)

(assert (=> bm!626315 (= call!626321 call!626322)))

(declare-fun b!6879328 () Bool)

(declare-fun e!4145873 () Bool)

(declare-fun call!626320 () Bool)

(assert (=> b!6879328 (= e!4145873 call!626320)))

(declare-fun c!1279900 () Bool)

(declare-fun c!1279901 () Bool)

(declare-fun bm!626316 () Bool)

(assert (=> bm!626316 (= call!626322 (validRegex!8461 (ite c!1279900 (reg!17082 r3!135) (ite c!1279901 (regTwo!34019 r3!135) (regOne!34018 r3!135)))))))

(declare-fun b!6879329 () Bool)

(declare-fun e!4145875 () Bool)

(declare-fun e!4145874 () Bool)

(assert (=> b!6879329 (= e!4145875 e!4145874)))

(declare-fun res!2804403 () Bool)

(declare-fun nullable!6670 (Regex!16753) Bool)

(assert (=> b!6879329 (= res!2804403 (not (nullable!6670 (reg!17082 r3!135))))))

(assert (=> b!6879329 (=> (not res!2804403) (not e!4145874))))

(declare-fun b!6879330 () Bool)

(declare-fun res!2804407 () Bool)

(declare-fun e!4145877 () Bool)

(assert (=> b!6879330 (=> (not res!2804407) (not e!4145877))))

(assert (=> b!6879330 (= res!2804407 call!626320)))

(declare-fun e!4145872 () Bool)

(assert (=> b!6879330 (= e!4145872 e!4145877)))

(declare-fun d!2159908 () Bool)

(declare-fun res!2804405 () Bool)

(declare-fun e!4145876 () Bool)

(assert (=> d!2159908 (=> res!2804405 e!4145876)))

(assert (=> d!2159908 (= res!2804405 ((_ is ElementMatch!16753) r3!135))))

(assert (=> d!2159908 (= (validRegex!8461 r3!135) e!4145876)))

(declare-fun b!6879331 () Bool)

(declare-fun e!4145871 () Bool)

(assert (=> b!6879331 (= e!4145871 e!4145873)))

(declare-fun res!2804406 () Bool)

(assert (=> b!6879331 (=> (not res!2804406) (not e!4145873))))

(assert (=> b!6879331 (= res!2804406 call!626321)))

(declare-fun b!6879332 () Bool)

(assert (=> b!6879332 (= e!4145877 call!626321)))

(declare-fun b!6879333 () Bool)

(declare-fun res!2804404 () Bool)

(assert (=> b!6879333 (=> res!2804404 e!4145871)))

(assert (=> b!6879333 (= res!2804404 (not ((_ is Concat!25598) r3!135)))))

(assert (=> b!6879333 (= e!4145872 e!4145871)))

(declare-fun b!6879334 () Bool)

(assert (=> b!6879334 (= e!4145875 e!4145872)))

(assert (=> b!6879334 (= c!1279901 ((_ is Union!16753) r3!135))))

(declare-fun bm!626317 () Bool)

(assert (=> bm!626317 (= call!626320 (validRegex!8461 (ite c!1279901 (regOne!34019 r3!135) (regTwo!34018 r3!135))))))

(declare-fun b!6879335 () Bool)

(assert (=> b!6879335 (= e!4145876 e!4145875)))

(assert (=> b!6879335 (= c!1279900 ((_ is Star!16753) r3!135))))

(declare-fun b!6879336 () Bool)

(assert (=> b!6879336 (= e!4145874 call!626322)))

(assert (= (and d!2159908 (not res!2804405)) b!6879335))

(assert (= (and b!6879335 c!1279900) b!6879329))

(assert (= (and b!6879335 (not c!1279900)) b!6879334))

(assert (= (and b!6879329 res!2804403) b!6879336))

(assert (= (and b!6879334 c!1279901) b!6879330))

(assert (= (and b!6879334 (not c!1279901)) b!6879333))

(assert (= (and b!6879330 res!2804407) b!6879332))

(assert (= (and b!6879333 (not res!2804404)) b!6879331))

(assert (= (and b!6879331 res!2804406) b!6879328))

(assert (= (or b!6879330 b!6879328) bm!626317))

(assert (= (or b!6879332 b!6879331) bm!626315))

(assert (= (or b!6879336 bm!626315) bm!626316))

(declare-fun m!7605720 () Bool)

(assert (=> bm!626316 m!7605720))

(declare-fun m!7605722 () Bool)

(assert (=> b!6879329 m!7605722))

(declare-fun m!7605724 () Bool)

(assert (=> bm!626317 m!7605724))

(assert (=> b!6879277 d!2159908))

(declare-fun b!6879551 () Bool)

(assert (=> b!6879551 true))

(assert (=> b!6879551 true))

(declare-fun bs!1837988 () Bool)

(declare-fun b!6879553 () Bool)

(assert (= bs!1837988 (and b!6879553 b!6879551)))

(declare-fun lambda!389384 () Int)

(declare-fun lambda!389383 () Int)

(assert (=> bs!1837988 (not (= lambda!389384 lambda!389383))))

(assert (=> b!6879553 true))

(assert (=> b!6879553 true))

(declare-fun b!6879550 () Bool)

(declare-fun e!4145996 () Bool)

(assert (=> b!6879550 (= e!4145996 (matchRSpec!3816 (regTwo!34019 lt!2459453) s!14361))))

(declare-fun c!1279947 () Bool)

(declare-fun bm!626346 () Bool)

(declare-fun call!626351 () Bool)

(declare-fun Exists!3767 (Int) Bool)

(assert (=> bm!626346 (= call!626351 (Exists!3767 (ite c!1279947 lambda!389383 lambda!389384)))))

(declare-fun e!4145994 () Bool)

(assert (=> b!6879551 (= e!4145994 call!626351)))

(declare-fun b!6879552 () Bool)

(declare-fun e!4145999 () Bool)

(declare-fun e!4145997 () Bool)

(assert (=> b!6879552 (= e!4145999 e!4145997)))

(assert (=> b!6879552 (= c!1279947 ((_ is Star!16753) lt!2459453))))

(assert (=> b!6879553 (= e!4145997 call!626351)))

(declare-fun b!6879554 () Bool)

(assert (=> b!6879554 (= e!4145999 e!4145996)))

(declare-fun res!2804499 () Bool)

(assert (=> b!6879554 (= res!2804499 (matchRSpec!3816 (regOne!34019 lt!2459453) s!14361))))

(assert (=> b!6879554 (=> res!2804499 e!4145996)))

(declare-fun bm!626347 () Bool)

(declare-fun call!626352 () Bool)

(declare-fun isEmpty!38661 (List!66510) Bool)

(assert (=> bm!626347 (= call!626352 (isEmpty!38661 s!14361))))

(declare-fun b!6879555 () Bool)

(declare-fun e!4145992 () Bool)

(assert (=> b!6879555 (= e!4145992 (= s!14361 (Cons!66386 (c!1279891 lt!2459453) Nil!66386)))))

(declare-fun b!6879556 () Bool)

(declare-fun res!2804500 () Bool)

(assert (=> b!6879556 (=> res!2804500 e!4145994)))

(assert (=> b!6879556 (= res!2804500 call!626352)))

(assert (=> b!6879556 (= e!4145997 e!4145994)))

(declare-fun b!6879558 () Bool)

(declare-fun e!4145998 () Bool)

(declare-fun e!4145995 () Bool)

(assert (=> b!6879558 (= e!4145998 e!4145995)))

(declare-fun res!2804498 () Bool)

(assert (=> b!6879558 (= res!2804498 (not ((_ is EmptyLang!16753) lt!2459453)))))

(assert (=> b!6879558 (=> (not res!2804498) (not e!4145995))))

(declare-fun b!6879559 () Bool)

(assert (=> b!6879559 (= e!4145998 call!626352)))

(declare-fun b!6879560 () Bool)

(declare-fun c!1279949 () Bool)

(assert (=> b!6879560 (= c!1279949 ((_ is Union!16753) lt!2459453))))

(assert (=> b!6879560 (= e!4145992 e!4145999)))

(declare-fun d!2159912 () Bool)

(declare-fun c!1279948 () Bool)

(assert (=> d!2159912 (= c!1279948 ((_ is EmptyExpr!16753) lt!2459453))))

(assert (=> d!2159912 (= (matchRSpec!3816 lt!2459453 s!14361) e!4145998)))

(declare-fun b!6879557 () Bool)

(declare-fun c!1279946 () Bool)

(assert (=> b!6879557 (= c!1279946 ((_ is ElementMatch!16753) lt!2459453))))

(assert (=> b!6879557 (= e!4145995 e!4145992)))

(assert (= (and d!2159912 c!1279948) b!6879559))

(assert (= (and d!2159912 (not c!1279948)) b!6879558))

(assert (= (and b!6879558 res!2804498) b!6879557))

(assert (= (and b!6879557 c!1279946) b!6879555))

(assert (= (and b!6879557 (not c!1279946)) b!6879560))

(assert (= (and b!6879560 c!1279949) b!6879554))

(assert (= (and b!6879560 (not c!1279949)) b!6879552))

(assert (= (and b!6879554 (not res!2804499)) b!6879550))

(assert (= (and b!6879552 c!1279947) b!6879556))

(assert (= (and b!6879552 (not c!1279947)) b!6879553))

(assert (= (and b!6879556 (not res!2804500)) b!6879551))

(assert (= (or b!6879551 b!6879553) bm!626346))

(assert (= (or b!6879559 b!6879556) bm!626347))

(declare-fun m!7605788 () Bool)

(assert (=> b!6879550 m!7605788))

(declare-fun m!7605790 () Bool)

(assert (=> bm!626346 m!7605790))

(declare-fun m!7605792 () Bool)

(assert (=> b!6879554 m!7605792))

(declare-fun m!7605794 () Bool)

(assert (=> bm!626347 m!7605794))

(assert (=> b!6879276 d!2159912))

(declare-fun b!6879637 () Bool)

(declare-fun res!2804519 () Bool)

(declare-fun e!4146029 () Bool)

(assert (=> b!6879637 (=> res!2804519 e!4146029)))

(declare-fun e!4146031 () Bool)

(assert (=> b!6879637 (= res!2804519 e!4146031)))

(declare-fun res!2804524 () Bool)

(assert (=> b!6879637 (=> (not res!2804524) (not e!4146031))))

(declare-fun lt!2459464 () Bool)

(assert (=> b!6879637 (= res!2804524 lt!2459464)))

(declare-fun b!6879638 () Bool)

(declare-fun e!4146027 () Bool)

(declare-fun e!4146030 () Bool)

(assert (=> b!6879638 (= e!4146027 e!4146030)))

(declare-fun c!1279958 () Bool)

(assert (=> b!6879638 (= c!1279958 ((_ is EmptyLang!16753) lt!2459453))))

(declare-fun bm!626350 () Bool)

(declare-fun call!626355 () Bool)

(assert (=> bm!626350 (= call!626355 (isEmpty!38661 s!14361))))

(declare-fun b!6879639 () Bool)

(declare-fun e!4146025 () Bool)

(declare-fun derivativeStep!5350 (Regex!16753 C!33776) Regex!16753)

(declare-fun head!13803 (List!66510) C!33776)

(declare-fun tail!12855 (List!66510) List!66510)

(assert (=> b!6879639 (= e!4146025 (matchR!8898 (derivativeStep!5350 lt!2459453 (head!13803 s!14361)) (tail!12855 s!14361)))))

(declare-fun b!6879640 () Bool)

(assert (=> b!6879640 (= e!4146027 (= lt!2459464 call!626355))))

(declare-fun b!6879641 () Bool)

(declare-fun res!2804523 () Bool)

(assert (=> b!6879641 (=> (not res!2804523) (not e!4146031))))

(assert (=> b!6879641 (= res!2804523 (isEmpty!38661 (tail!12855 s!14361)))))

(declare-fun d!2159932 () Bool)

(assert (=> d!2159932 e!4146027))

(declare-fun c!1279957 () Bool)

(assert (=> d!2159932 (= c!1279957 ((_ is EmptyExpr!16753) lt!2459453))))

(assert (=> d!2159932 (= lt!2459464 e!4146025)))

(declare-fun c!1279956 () Bool)

(assert (=> d!2159932 (= c!1279956 (isEmpty!38661 s!14361))))

(assert (=> d!2159932 (validRegex!8461 lt!2459453)))

(assert (=> d!2159932 (= (matchR!8898 lt!2459453 s!14361) lt!2459464)))

(declare-fun b!6879642 () Bool)

(declare-fun e!4146028 () Bool)

(assert (=> b!6879642 (= e!4146028 (not (= (head!13803 s!14361) (c!1279891 lt!2459453))))))

(declare-fun b!6879643 () Bool)

(assert (=> b!6879643 (= e!4146030 (not lt!2459464))))

(declare-fun b!6879644 () Bool)

(assert (=> b!6879644 (= e!4146025 (nullable!6670 lt!2459453))))

(declare-fun b!6879645 () Bool)

(assert (=> b!6879645 (= e!4146031 (= (head!13803 s!14361) (c!1279891 lt!2459453)))))

(declare-fun b!6879646 () Bool)

(declare-fun e!4146026 () Bool)

(assert (=> b!6879646 (= e!4146029 e!4146026)))

(declare-fun res!2804518 () Bool)

(assert (=> b!6879646 (=> (not res!2804518) (not e!4146026))))

(assert (=> b!6879646 (= res!2804518 (not lt!2459464))))

(declare-fun b!6879647 () Bool)

(declare-fun res!2804521 () Bool)

(assert (=> b!6879647 (=> res!2804521 e!4146028)))

(assert (=> b!6879647 (= res!2804521 (not (isEmpty!38661 (tail!12855 s!14361))))))

(declare-fun b!6879648 () Bool)

(assert (=> b!6879648 (= e!4146026 e!4146028)))

(declare-fun res!2804517 () Bool)

(assert (=> b!6879648 (=> res!2804517 e!4146028)))

(assert (=> b!6879648 (= res!2804517 call!626355)))

(declare-fun b!6879649 () Bool)

(declare-fun res!2804522 () Bool)

(assert (=> b!6879649 (=> (not res!2804522) (not e!4146031))))

(assert (=> b!6879649 (= res!2804522 (not call!626355))))

(declare-fun b!6879650 () Bool)

(declare-fun res!2804520 () Bool)

(assert (=> b!6879650 (=> res!2804520 e!4146029)))

(assert (=> b!6879650 (= res!2804520 (not ((_ is ElementMatch!16753) lt!2459453)))))

(assert (=> b!6879650 (= e!4146030 e!4146029)))

(assert (= (and d!2159932 c!1279956) b!6879644))

(assert (= (and d!2159932 (not c!1279956)) b!6879639))

(assert (= (and d!2159932 c!1279957) b!6879640))

(assert (= (and d!2159932 (not c!1279957)) b!6879638))

(assert (= (and b!6879638 c!1279958) b!6879643))

(assert (= (and b!6879638 (not c!1279958)) b!6879650))

(assert (= (and b!6879650 (not res!2804520)) b!6879637))

(assert (= (and b!6879637 res!2804524) b!6879649))

(assert (= (and b!6879649 res!2804522) b!6879641))

(assert (= (and b!6879641 res!2804523) b!6879645))

(assert (= (and b!6879637 (not res!2804519)) b!6879646))

(assert (= (and b!6879646 res!2804518) b!6879648))

(assert (= (and b!6879648 (not res!2804517)) b!6879647))

(assert (= (and b!6879647 (not res!2804521)) b!6879642))

(assert (= (or b!6879640 b!6879648 b!6879649) bm!626350))

(declare-fun m!7605796 () Bool)

(assert (=> b!6879645 m!7605796))

(declare-fun m!7605798 () Bool)

(assert (=> b!6879641 m!7605798))

(assert (=> b!6879641 m!7605798))

(declare-fun m!7605800 () Bool)

(assert (=> b!6879641 m!7605800))

(declare-fun m!7605802 () Bool)

(assert (=> b!6879644 m!7605802))

(assert (=> bm!626350 m!7605794))

(assert (=> b!6879642 m!7605796))

(assert (=> d!2159932 m!7605794))

(declare-fun m!7605804 () Bool)

(assert (=> d!2159932 m!7605804))

(assert (=> b!6879639 m!7605796))

(assert (=> b!6879639 m!7605796))

(declare-fun m!7605806 () Bool)

(assert (=> b!6879639 m!7605806))

(assert (=> b!6879639 m!7605798))

(assert (=> b!6879639 m!7605806))

(assert (=> b!6879639 m!7605798))

(declare-fun m!7605808 () Bool)

(assert (=> b!6879639 m!7605808))

(assert (=> b!6879647 m!7605798))

(assert (=> b!6879647 m!7605798))

(assert (=> b!6879647 m!7605800))

(assert (=> b!6879276 d!2159932))

(declare-fun d!2159934 () Bool)

(assert (=> d!2159934 (= (matchR!8898 lt!2459453 s!14361) (matchRSpec!3816 lt!2459453 s!14361))))

(declare-fun lt!2459467 () Unit!160226)

(declare-fun choose!51236 (Regex!16753 List!66510) Unit!160226)

(assert (=> d!2159934 (= lt!2459467 (choose!51236 lt!2459453 s!14361))))

(assert (=> d!2159934 (validRegex!8461 lt!2459453)))

(assert (=> d!2159934 (= (mainMatchTheorem!3816 lt!2459453 s!14361) lt!2459467)))

(declare-fun bs!1837989 () Bool)

(assert (= bs!1837989 d!2159934))

(assert (=> bs!1837989 m!7605708))

(assert (=> bs!1837989 m!7605706))

(declare-fun m!7605810 () Bool)

(assert (=> bs!1837989 m!7605810))

(assert (=> bs!1837989 m!7605804))

(assert (=> b!6879276 d!2159934))

(declare-fun bm!626351 () Bool)

(declare-fun call!626357 () Bool)

(declare-fun call!626358 () Bool)

(assert (=> bm!626351 (= call!626357 call!626358)))

(declare-fun b!6879651 () Bool)

(declare-fun e!4146034 () Bool)

(declare-fun call!626356 () Bool)

(assert (=> b!6879651 (= e!4146034 call!626356)))

(declare-fun bm!626352 () Bool)

(declare-fun c!1279960 () Bool)

(declare-fun c!1279959 () Bool)

(assert (=> bm!626352 (= call!626358 (validRegex!8461 (ite c!1279959 (reg!17082 lt!2459451) (ite c!1279960 (regTwo!34019 lt!2459451) (regOne!34018 lt!2459451)))))))

(declare-fun b!6879652 () Bool)

(declare-fun e!4146036 () Bool)

(declare-fun e!4146035 () Bool)

(assert (=> b!6879652 (= e!4146036 e!4146035)))

(declare-fun res!2804525 () Bool)

(assert (=> b!6879652 (= res!2804525 (not (nullable!6670 (reg!17082 lt!2459451))))))

(assert (=> b!6879652 (=> (not res!2804525) (not e!4146035))))

(declare-fun b!6879653 () Bool)

(declare-fun res!2804529 () Bool)

(declare-fun e!4146038 () Bool)

(assert (=> b!6879653 (=> (not res!2804529) (not e!4146038))))

(assert (=> b!6879653 (= res!2804529 call!626356)))

(declare-fun e!4146033 () Bool)

(assert (=> b!6879653 (= e!4146033 e!4146038)))

(declare-fun d!2159936 () Bool)

(declare-fun res!2804527 () Bool)

(declare-fun e!4146037 () Bool)

(assert (=> d!2159936 (=> res!2804527 e!4146037)))

(assert (=> d!2159936 (= res!2804527 ((_ is ElementMatch!16753) lt!2459451))))

(assert (=> d!2159936 (= (validRegex!8461 lt!2459451) e!4146037)))

(declare-fun b!6879654 () Bool)

(declare-fun e!4146032 () Bool)

(assert (=> b!6879654 (= e!4146032 e!4146034)))

(declare-fun res!2804528 () Bool)

(assert (=> b!6879654 (=> (not res!2804528) (not e!4146034))))

(assert (=> b!6879654 (= res!2804528 call!626357)))

(declare-fun b!6879655 () Bool)

(assert (=> b!6879655 (= e!4146038 call!626357)))

(declare-fun b!6879656 () Bool)

(declare-fun res!2804526 () Bool)

(assert (=> b!6879656 (=> res!2804526 e!4146032)))

(assert (=> b!6879656 (= res!2804526 (not ((_ is Concat!25598) lt!2459451)))))

(assert (=> b!6879656 (= e!4146033 e!4146032)))

(declare-fun b!6879657 () Bool)

(assert (=> b!6879657 (= e!4146036 e!4146033)))

(assert (=> b!6879657 (= c!1279960 ((_ is Union!16753) lt!2459451))))

(declare-fun bm!626353 () Bool)

(assert (=> bm!626353 (= call!626356 (validRegex!8461 (ite c!1279960 (regOne!34019 lt!2459451) (regTwo!34018 lt!2459451))))))

(declare-fun b!6879658 () Bool)

(assert (=> b!6879658 (= e!4146037 e!4146036)))

(assert (=> b!6879658 (= c!1279959 ((_ is Star!16753) lt!2459451))))

(declare-fun b!6879659 () Bool)

(assert (=> b!6879659 (= e!4146035 call!626358)))

(assert (= (and d!2159936 (not res!2804527)) b!6879658))

(assert (= (and b!6879658 c!1279959) b!6879652))

(assert (= (and b!6879658 (not c!1279959)) b!6879657))

(assert (= (and b!6879652 res!2804525) b!6879659))

(assert (= (and b!6879657 c!1279960) b!6879653))

(assert (= (and b!6879657 (not c!1279960)) b!6879656))

(assert (= (and b!6879653 res!2804529) b!6879655))

(assert (= (and b!6879656 (not res!2804526)) b!6879654))

(assert (= (and b!6879654 res!2804528) b!6879651))

(assert (= (or b!6879653 b!6879651) bm!626353))

(assert (= (or b!6879655 b!6879654) bm!626351))

(assert (= (or b!6879659 bm!626351) bm!626352))

(declare-fun m!7605812 () Bool)

(assert (=> bm!626352 m!7605812))

(declare-fun m!7605814 () Bool)

(assert (=> b!6879652 m!7605814))

(declare-fun m!7605816 () Bool)

(assert (=> bm!626353 m!7605816))

(assert (=> b!6879276 d!2159936))

(declare-fun bs!1837990 () Bool)

(declare-fun b!6879661 () Bool)

(assert (= bs!1837990 (and b!6879661 b!6879551)))

(declare-fun lambda!389385 () Int)

(assert (=> bs!1837990 (= (and (= (reg!17082 lt!2459451) (reg!17082 lt!2459453)) (= lt!2459451 lt!2459453)) (= lambda!389385 lambda!389383))))

(declare-fun bs!1837991 () Bool)

(assert (= bs!1837991 (and b!6879661 b!6879553)))

(assert (=> bs!1837991 (not (= lambda!389385 lambda!389384))))

(assert (=> b!6879661 true))

(assert (=> b!6879661 true))

(declare-fun bs!1837992 () Bool)

(declare-fun b!6879663 () Bool)

(assert (= bs!1837992 (and b!6879663 b!6879551)))

(declare-fun lambda!389386 () Int)

(assert (=> bs!1837992 (not (= lambda!389386 lambda!389383))))

(declare-fun bs!1837993 () Bool)

(assert (= bs!1837993 (and b!6879663 b!6879553)))

(assert (=> bs!1837993 (= (and (= (regOne!34018 lt!2459451) (regOne!34018 lt!2459453)) (= (regTwo!34018 lt!2459451) (regTwo!34018 lt!2459453))) (= lambda!389386 lambda!389384))))

(declare-fun bs!1837994 () Bool)

(assert (= bs!1837994 (and b!6879663 b!6879661)))

(assert (=> bs!1837994 (not (= lambda!389386 lambda!389385))))

(assert (=> b!6879663 true))

(assert (=> b!6879663 true))

(declare-fun b!6879660 () Bool)

(declare-fun e!4146042 () Bool)

(assert (=> b!6879660 (= e!4146042 (matchRSpec!3816 (regTwo!34019 lt!2459451) s!14361))))

(declare-fun call!626359 () Bool)

(declare-fun c!1279962 () Bool)

(declare-fun bm!626354 () Bool)

(assert (=> bm!626354 (= call!626359 (Exists!3767 (ite c!1279962 lambda!389385 lambda!389386)))))

(declare-fun e!4146040 () Bool)

(assert (=> b!6879661 (= e!4146040 call!626359)))

(declare-fun b!6879662 () Bool)

(declare-fun e!4146045 () Bool)

(declare-fun e!4146043 () Bool)

(assert (=> b!6879662 (= e!4146045 e!4146043)))

(assert (=> b!6879662 (= c!1279962 ((_ is Star!16753) lt!2459451))))

(assert (=> b!6879663 (= e!4146043 call!626359)))

(declare-fun b!6879664 () Bool)

(assert (=> b!6879664 (= e!4146045 e!4146042)))

(declare-fun res!2804531 () Bool)

(assert (=> b!6879664 (= res!2804531 (matchRSpec!3816 (regOne!34019 lt!2459451) s!14361))))

(assert (=> b!6879664 (=> res!2804531 e!4146042)))

(declare-fun bm!626355 () Bool)

(declare-fun call!626360 () Bool)

(assert (=> bm!626355 (= call!626360 (isEmpty!38661 s!14361))))

(declare-fun b!6879665 () Bool)

(declare-fun e!4146039 () Bool)

(assert (=> b!6879665 (= e!4146039 (= s!14361 (Cons!66386 (c!1279891 lt!2459451) Nil!66386)))))

(declare-fun b!6879666 () Bool)

(declare-fun res!2804532 () Bool)

(assert (=> b!6879666 (=> res!2804532 e!4146040)))

(assert (=> b!6879666 (= res!2804532 call!626360)))

(assert (=> b!6879666 (= e!4146043 e!4146040)))

(declare-fun b!6879668 () Bool)

(declare-fun e!4146044 () Bool)

(declare-fun e!4146041 () Bool)

(assert (=> b!6879668 (= e!4146044 e!4146041)))

(declare-fun res!2804530 () Bool)

(assert (=> b!6879668 (= res!2804530 (not ((_ is EmptyLang!16753) lt!2459451)))))

(assert (=> b!6879668 (=> (not res!2804530) (not e!4146041))))

(declare-fun b!6879669 () Bool)

(assert (=> b!6879669 (= e!4146044 call!626360)))

(declare-fun b!6879670 () Bool)

(declare-fun c!1279964 () Bool)

(assert (=> b!6879670 (= c!1279964 ((_ is Union!16753) lt!2459451))))

(assert (=> b!6879670 (= e!4146039 e!4146045)))

(declare-fun d!2159938 () Bool)

(declare-fun c!1279963 () Bool)

(assert (=> d!2159938 (= c!1279963 ((_ is EmptyExpr!16753) lt!2459451))))

(assert (=> d!2159938 (= (matchRSpec!3816 lt!2459451 s!14361) e!4146044)))

(declare-fun b!6879667 () Bool)

(declare-fun c!1279961 () Bool)

(assert (=> b!6879667 (= c!1279961 ((_ is ElementMatch!16753) lt!2459451))))

(assert (=> b!6879667 (= e!4146041 e!4146039)))

(assert (= (and d!2159938 c!1279963) b!6879669))

(assert (= (and d!2159938 (not c!1279963)) b!6879668))

(assert (= (and b!6879668 res!2804530) b!6879667))

(assert (= (and b!6879667 c!1279961) b!6879665))

(assert (= (and b!6879667 (not c!1279961)) b!6879670))

(assert (= (and b!6879670 c!1279964) b!6879664))

(assert (= (and b!6879670 (not c!1279964)) b!6879662))

(assert (= (and b!6879664 (not res!2804531)) b!6879660))

(assert (= (and b!6879662 c!1279962) b!6879666))

(assert (= (and b!6879662 (not c!1279962)) b!6879663))

(assert (= (and b!6879666 (not res!2804532)) b!6879661))

(assert (= (or b!6879661 b!6879663) bm!626354))

(assert (= (or b!6879669 b!6879666) bm!626355))

(declare-fun m!7605818 () Bool)

(assert (=> b!6879660 m!7605818))

(declare-fun m!7605820 () Bool)

(assert (=> bm!626354 m!7605820))

(declare-fun m!7605822 () Bool)

(assert (=> b!6879664 m!7605822))

(assert (=> bm!626355 m!7605794))

(assert (=> b!6879276 d!2159938))

(declare-fun d!2159940 () Bool)

(assert (=> d!2159940 (= (matchR!8898 lt!2459451 s!14361) (matchRSpec!3816 lt!2459451 s!14361))))

(declare-fun lt!2459468 () Unit!160226)

(assert (=> d!2159940 (= lt!2459468 (choose!51236 lt!2459451 s!14361))))

(assert (=> d!2159940 (validRegex!8461 lt!2459451)))

(assert (=> d!2159940 (= (mainMatchTheorem!3816 lt!2459451 s!14361) lt!2459468)))

(declare-fun bs!1837995 () Bool)

(assert (= bs!1837995 d!2159940))

(assert (=> bs!1837995 m!7605702))

(assert (=> bs!1837995 m!7605710))

(declare-fun m!7605824 () Bool)

(assert (=> bs!1837995 m!7605824))

(assert (=> bs!1837995 m!7605704))

(assert (=> b!6879276 d!2159940))

(declare-fun b!6879671 () Bool)

(declare-fun res!2804535 () Bool)

(declare-fun e!4146050 () Bool)

(assert (=> b!6879671 (=> res!2804535 e!4146050)))

(declare-fun e!4146052 () Bool)

(assert (=> b!6879671 (= res!2804535 e!4146052)))

(declare-fun res!2804540 () Bool)

(assert (=> b!6879671 (=> (not res!2804540) (not e!4146052))))

(declare-fun lt!2459469 () Bool)

(assert (=> b!6879671 (= res!2804540 lt!2459469)))

(declare-fun b!6879672 () Bool)

(declare-fun e!4146048 () Bool)

(declare-fun e!4146051 () Bool)

(assert (=> b!6879672 (= e!4146048 e!4146051)))

(declare-fun c!1279967 () Bool)

(assert (=> b!6879672 (= c!1279967 ((_ is EmptyLang!16753) lt!2459451))))

(declare-fun bm!626356 () Bool)

(declare-fun call!626361 () Bool)

(assert (=> bm!626356 (= call!626361 (isEmpty!38661 s!14361))))

(declare-fun b!6879673 () Bool)

(declare-fun e!4146046 () Bool)

(assert (=> b!6879673 (= e!4146046 (matchR!8898 (derivativeStep!5350 lt!2459451 (head!13803 s!14361)) (tail!12855 s!14361)))))

(declare-fun b!6879674 () Bool)

(assert (=> b!6879674 (= e!4146048 (= lt!2459469 call!626361))))

(declare-fun b!6879675 () Bool)

(declare-fun res!2804539 () Bool)

(assert (=> b!6879675 (=> (not res!2804539) (not e!4146052))))

(assert (=> b!6879675 (= res!2804539 (isEmpty!38661 (tail!12855 s!14361)))))

(declare-fun d!2159942 () Bool)

(assert (=> d!2159942 e!4146048))

(declare-fun c!1279966 () Bool)

(assert (=> d!2159942 (= c!1279966 ((_ is EmptyExpr!16753) lt!2459451))))

(assert (=> d!2159942 (= lt!2459469 e!4146046)))

(declare-fun c!1279965 () Bool)

(assert (=> d!2159942 (= c!1279965 (isEmpty!38661 s!14361))))

(assert (=> d!2159942 (validRegex!8461 lt!2459451)))

(assert (=> d!2159942 (= (matchR!8898 lt!2459451 s!14361) lt!2459469)))

(declare-fun b!6879676 () Bool)

(declare-fun e!4146049 () Bool)

(assert (=> b!6879676 (= e!4146049 (not (= (head!13803 s!14361) (c!1279891 lt!2459451))))))

(declare-fun b!6879677 () Bool)

(assert (=> b!6879677 (= e!4146051 (not lt!2459469))))

(declare-fun b!6879678 () Bool)

(assert (=> b!6879678 (= e!4146046 (nullable!6670 lt!2459451))))

(declare-fun b!6879679 () Bool)

(assert (=> b!6879679 (= e!4146052 (= (head!13803 s!14361) (c!1279891 lt!2459451)))))

(declare-fun b!6879680 () Bool)

(declare-fun e!4146047 () Bool)

(assert (=> b!6879680 (= e!4146050 e!4146047)))

(declare-fun res!2804534 () Bool)

(assert (=> b!6879680 (=> (not res!2804534) (not e!4146047))))

(assert (=> b!6879680 (= res!2804534 (not lt!2459469))))

(declare-fun b!6879681 () Bool)

(declare-fun res!2804537 () Bool)

(assert (=> b!6879681 (=> res!2804537 e!4146049)))

(assert (=> b!6879681 (= res!2804537 (not (isEmpty!38661 (tail!12855 s!14361))))))

(declare-fun b!6879682 () Bool)

(assert (=> b!6879682 (= e!4146047 e!4146049)))

(declare-fun res!2804533 () Bool)

(assert (=> b!6879682 (=> res!2804533 e!4146049)))

(assert (=> b!6879682 (= res!2804533 call!626361)))

(declare-fun b!6879683 () Bool)

(declare-fun res!2804538 () Bool)

(assert (=> b!6879683 (=> (not res!2804538) (not e!4146052))))

(assert (=> b!6879683 (= res!2804538 (not call!626361))))

(declare-fun b!6879684 () Bool)

(declare-fun res!2804536 () Bool)

(assert (=> b!6879684 (=> res!2804536 e!4146050)))

(assert (=> b!6879684 (= res!2804536 (not ((_ is ElementMatch!16753) lt!2459451)))))

(assert (=> b!6879684 (= e!4146051 e!4146050)))

(assert (= (and d!2159942 c!1279965) b!6879678))

(assert (= (and d!2159942 (not c!1279965)) b!6879673))

(assert (= (and d!2159942 c!1279966) b!6879674))

(assert (= (and d!2159942 (not c!1279966)) b!6879672))

(assert (= (and b!6879672 c!1279967) b!6879677))

(assert (= (and b!6879672 (not c!1279967)) b!6879684))

(assert (= (and b!6879684 (not res!2804536)) b!6879671))

(assert (= (and b!6879671 res!2804540) b!6879683))

(assert (= (and b!6879683 res!2804538) b!6879675))

(assert (= (and b!6879675 res!2804539) b!6879679))

(assert (= (and b!6879671 (not res!2804535)) b!6879680))

(assert (= (and b!6879680 res!2804534) b!6879682))

(assert (= (and b!6879682 (not res!2804533)) b!6879681))

(assert (= (and b!6879681 (not res!2804537)) b!6879676))

(assert (= (or b!6879674 b!6879682 b!6879683) bm!626356))

(assert (=> b!6879679 m!7605796))

(assert (=> b!6879675 m!7605798))

(assert (=> b!6879675 m!7605798))

(assert (=> b!6879675 m!7605800))

(declare-fun m!7605826 () Bool)

(assert (=> b!6879678 m!7605826))

(assert (=> bm!626356 m!7605794))

(assert (=> b!6879676 m!7605796))

(assert (=> d!2159942 m!7605794))

(assert (=> d!2159942 m!7605704))

(assert (=> b!6879673 m!7605796))

(assert (=> b!6879673 m!7605796))

(declare-fun m!7605828 () Bool)

(assert (=> b!6879673 m!7605828))

(assert (=> b!6879673 m!7605798))

(assert (=> b!6879673 m!7605828))

(assert (=> b!6879673 m!7605798))

(declare-fun m!7605830 () Bool)

(assert (=> b!6879673 m!7605830))

(assert (=> b!6879681 m!7605798))

(assert (=> b!6879681 m!7605798))

(assert (=> b!6879681 m!7605800))

(assert (=> b!6879276 d!2159942))

(declare-fun bm!626357 () Bool)

(declare-fun call!626363 () Bool)

(declare-fun call!626364 () Bool)

(assert (=> bm!626357 (= call!626363 call!626364)))

(declare-fun b!6879685 () Bool)

(declare-fun e!4146055 () Bool)

(declare-fun call!626362 () Bool)

(assert (=> b!6879685 (= e!4146055 call!626362)))

(declare-fun bm!626358 () Bool)

(declare-fun c!1279968 () Bool)

(declare-fun c!1279969 () Bool)

(assert (=> bm!626358 (= call!626364 (validRegex!8461 (ite c!1279968 (reg!17082 r1!6342) (ite c!1279969 (regTwo!34019 r1!6342) (regOne!34018 r1!6342)))))))

(declare-fun b!6879686 () Bool)

(declare-fun e!4146057 () Bool)

(declare-fun e!4146056 () Bool)

(assert (=> b!6879686 (= e!4146057 e!4146056)))

(declare-fun res!2804541 () Bool)

(assert (=> b!6879686 (= res!2804541 (not (nullable!6670 (reg!17082 r1!6342))))))

(assert (=> b!6879686 (=> (not res!2804541) (not e!4146056))))

(declare-fun b!6879687 () Bool)

(declare-fun res!2804545 () Bool)

(declare-fun e!4146059 () Bool)

(assert (=> b!6879687 (=> (not res!2804545) (not e!4146059))))

(assert (=> b!6879687 (= res!2804545 call!626362)))

(declare-fun e!4146054 () Bool)

(assert (=> b!6879687 (= e!4146054 e!4146059)))

(declare-fun d!2159944 () Bool)

(declare-fun res!2804543 () Bool)

(declare-fun e!4146058 () Bool)

(assert (=> d!2159944 (=> res!2804543 e!4146058)))

(assert (=> d!2159944 (= res!2804543 ((_ is ElementMatch!16753) r1!6342))))

(assert (=> d!2159944 (= (validRegex!8461 r1!6342) e!4146058)))

(declare-fun b!6879688 () Bool)

(declare-fun e!4146053 () Bool)

(assert (=> b!6879688 (= e!4146053 e!4146055)))

(declare-fun res!2804544 () Bool)

(assert (=> b!6879688 (=> (not res!2804544) (not e!4146055))))

(assert (=> b!6879688 (= res!2804544 call!626363)))

(declare-fun b!6879689 () Bool)

(assert (=> b!6879689 (= e!4146059 call!626363)))

(declare-fun b!6879690 () Bool)

(declare-fun res!2804542 () Bool)

(assert (=> b!6879690 (=> res!2804542 e!4146053)))

(assert (=> b!6879690 (= res!2804542 (not ((_ is Concat!25598) r1!6342)))))

(assert (=> b!6879690 (= e!4146054 e!4146053)))

(declare-fun b!6879691 () Bool)

(assert (=> b!6879691 (= e!4146057 e!4146054)))

(assert (=> b!6879691 (= c!1279969 ((_ is Union!16753) r1!6342))))

(declare-fun bm!626359 () Bool)

(assert (=> bm!626359 (= call!626362 (validRegex!8461 (ite c!1279969 (regOne!34019 r1!6342) (regTwo!34018 r1!6342))))))

(declare-fun b!6879692 () Bool)

(assert (=> b!6879692 (= e!4146058 e!4146057)))

(assert (=> b!6879692 (= c!1279968 ((_ is Star!16753) r1!6342))))

(declare-fun b!6879693 () Bool)

(assert (=> b!6879693 (= e!4146056 call!626364)))

(assert (= (and d!2159944 (not res!2804543)) b!6879692))

(assert (= (and b!6879692 c!1279968) b!6879686))

(assert (= (and b!6879692 (not c!1279968)) b!6879691))

(assert (= (and b!6879686 res!2804541) b!6879693))

(assert (= (and b!6879691 c!1279969) b!6879687))

(assert (= (and b!6879691 (not c!1279969)) b!6879690))

(assert (= (and b!6879687 res!2804545) b!6879689))

(assert (= (and b!6879690 (not res!2804542)) b!6879688))

(assert (= (and b!6879688 res!2804544) b!6879685))

(assert (= (or b!6879687 b!6879685) bm!626359))

(assert (= (or b!6879689 b!6879688) bm!626357))

(assert (= (or b!6879693 bm!626357) bm!626358))

(declare-fun m!7605832 () Bool)

(assert (=> bm!626358 m!7605832))

(declare-fun m!7605834 () Bool)

(assert (=> b!6879686 m!7605834))

(declare-fun m!7605836 () Bool)

(assert (=> bm!626359 m!7605836))

(assert (=> start!663766 d!2159944))

(declare-fun bm!626360 () Bool)

(declare-fun call!626366 () Bool)

(declare-fun call!626367 () Bool)

(assert (=> bm!626360 (= call!626366 call!626367)))

(declare-fun b!6879694 () Bool)

(declare-fun e!4146062 () Bool)

(declare-fun call!626365 () Bool)

(assert (=> b!6879694 (= e!4146062 call!626365)))

(declare-fun bm!626361 () Bool)

(declare-fun c!1279971 () Bool)

(declare-fun c!1279970 () Bool)

(assert (=> bm!626361 (= call!626367 (validRegex!8461 (ite c!1279970 (reg!17082 r2!6280) (ite c!1279971 (regTwo!34019 r2!6280) (regOne!34018 r2!6280)))))))

(declare-fun b!6879695 () Bool)

(declare-fun e!4146064 () Bool)

(declare-fun e!4146063 () Bool)

(assert (=> b!6879695 (= e!4146064 e!4146063)))

(declare-fun res!2804546 () Bool)

(assert (=> b!6879695 (= res!2804546 (not (nullable!6670 (reg!17082 r2!6280))))))

(assert (=> b!6879695 (=> (not res!2804546) (not e!4146063))))

(declare-fun b!6879696 () Bool)

(declare-fun res!2804550 () Bool)

(declare-fun e!4146066 () Bool)

(assert (=> b!6879696 (=> (not res!2804550) (not e!4146066))))

(assert (=> b!6879696 (= res!2804550 call!626365)))

(declare-fun e!4146061 () Bool)

(assert (=> b!6879696 (= e!4146061 e!4146066)))

(declare-fun d!2159946 () Bool)

(declare-fun res!2804548 () Bool)

(declare-fun e!4146065 () Bool)

(assert (=> d!2159946 (=> res!2804548 e!4146065)))

(assert (=> d!2159946 (= res!2804548 ((_ is ElementMatch!16753) r2!6280))))

(assert (=> d!2159946 (= (validRegex!8461 r2!6280) e!4146065)))

(declare-fun b!6879697 () Bool)

(declare-fun e!4146060 () Bool)

(assert (=> b!6879697 (= e!4146060 e!4146062)))

(declare-fun res!2804549 () Bool)

(assert (=> b!6879697 (=> (not res!2804549) (not e!4146062))))

(assert (=> b!6879697 (= res!2804549 call!626366)))

(declare-fun b!6879698 () Bool)

(assert (=> b!6879698 (= e!4146066 call!626366)))

(declare-fun b!6879699 () Bool)

(declare-fun res!2804547 () Bool)

(assert (=> b!6879699 (=> res!2804547 e!4146060)))

(assert (=> b!6879699 (= res!2804547 (not ((_ is Concat!25598) r2!6280)))))

(assert (=> b!6879699 (= e!4146061 e!4146060)))

(declare-fun b!6879700 () Bool)

(assert (=> b!6879700 (= e!4146064 e!4146061)))

(assert (=> b!6879700 (= c!1279971 ((_ is Union!16753) r2!6280))))

(declare-fun bm!626362 () Bool)

(assert (=> bm!626362 (= call!626365 (validRegex!8461 (ite c!1279971 (regOne!34019 r2!6280) (regTwo!34018 r2!6280))))))

(declare-fun b!6879701 () Bool)

(assert (=> b!6879701 (= e!4146065 e!4146064)))

(assert (=> b!6879701 (= c!1279970 ((_ is Star!16753) r2!6280))))

(declare-fun b!6879702 () Bool)

(assert (=> b!6879702 (= e!4146063 call!626367)))

(assert (= (and d!2159946 (not res!2804548)) b!6879701))

(assert (= (and b!6879701 c!1279970) b!6879695))

(assert (= (and b!6879701 (not c!1279970)) b!6879700))

(assert (= (and b!6879695 res!2804546) b!6879702))

(assert (= (and b!6879700 c!1279971) b!6879696))

(assert (= (and b!6879700 (not c!1279971)) b!6879699))

(assert (= (and b!6879696 res!2804550) b!6879698))

(assert (= (and b!6879699 (not res!2804547)) b!6879697))

(assert (= (and b!6879697 res!2804549) b!6879694))

(assert (= (or b!6879696 b!6879694) bm!626362))

(assert (= (or b!6879698 b!6879697) bm!626360))

(assert (= (or b!6879702 bm!626360) bm!626361))

(declare-fun m!7605838 () Bool)

(assert (=> bm!626361 m!7605838))

(declare-fun m!7605840 () Bool)

(assert (=> b!6879695 m!7605840))

(declare-fun m!7605842 () Bool)

(assert (=> bm!626362 m!7605842))

(assert (=> b!6879279 d!2159946))

(declare-fun b!6879714 () Bool)

(declare-fun e!4146069 () Bool)

(declare-fun tp!1891598 () Bool)

(declare-fun tp!1891597 () Bool)

(assert (=> b!6879714 (= e!4146069 (and tp!1891598 tp!1891597))))

(assert (=> b!6879288 (= tp!1891494 e!4146069)))

(declare-fun b!6879713 () Bool)

(assert (=> b!6879713 (= e!4146069 tp_is_empty!42731)))

(declare-fun b!6879715 () Bool)

(declare-fun tp!1891595 () Bool)

(assert (=> b!6879715 (= e!4146069 tp!1891595)))

(declare-fun b!6879716 () Bool)

(declare-fun tp!1891594 () Bool)

(declare-fun tp!1891596 () Bool)

(assert (=> b!6879716 (= e!4146069 (and tp!1891594 tp!1891596))))

(assert (= (and b!6879288 ((_ is ElementMatch!16753) (reg!17082 r3!135))) b!6879713))

(assert (= (and b!6879288 ((_ is Concat!25598) (reg!17082 r3!135))) b!6879714))

(assert (= (and b!6879288 ((_ is Star!16753) (reg!17082 r3!135))) b!6879715))

(assert (= (and b!6879288 ((_ is Union!16753) (reg!17082 r3!135))) b!6879716))

(declare-fun b!6879718 () Bool)

(declare-fun e!4146070 () Bool)

(declare-fun tp!1891603 () Bool)

(declare-fun tp!1891602 () Bool)

(assert (=> b!6879718 (= e!4146070 (and tp!1891603 tp!1891602))))

(assert (=> b!6879282 (= tp!1891483 e!4146070)))

(declare-fun b!6879717 () Bool)

(assert (=> b!6879717 (= e!4146070 tp_is_empty!42731)))

(declare-fun b!6879719 () Bool)

(declare-fun tp!1891600 () Bool)

(assert (=> b!6879719 (= e!4146070 tp!1891600)))

(declare-fun b!6879720 () Bool)

(declare-fun tp!1891599 () Bool)

(declare-fun tp!1891601 () Bool)

(assert (=> b!6879720 (= e!4146070 (and tp!1891599 tp!1891601))))

(assert (= (and b!6879282 ((_ is ElementMatch!16753) (regOne!34018 r1!6342))) b!6879717))

(assert (= (and b!6879282 ((_ is Concat!25598) (regOne!34018 r1!6342))) b!6879718))

(assert (= (and b!6879282 ((_ is Star!16753) (regOne!34018 r1!6342))) b!6879719))

(assert (= (and b!6879282 ((_ is Union!16753) (regOne!34018 r1!6342))) b!6879720))

(declare-fun b!6879722 () Bool)

(declare-fun e!4146071 () Bool)

(declare-fun tp!1891608 () Bool)

(declare-fun tp!1891607 () Bool)

(assert (=> b!6879722 (= e!4146071 (and tp!1891608 tp!1891607))))

(assert (=> b!6879282 (= tp!1891489 e!4146071)))

(declare-fun b!6879721 () Bool)

(assert (=> b!6879721 (= e!4146071 tp_is_empty!42731)))

(declare-fun b!6879723 () Bool)

(declare-fun tp!1891605 () Bool)

(assert (=> b!6879723 (= e!4146071 tp!1891605)))

(declare-fun b!6879724 () Bool)

(declare-fun tp!1891604 () Bool)

(declare-fun tp!1891606 () Bool)

(assert (=> b!6879724 (= e!4146071 (and tp!1891604 tp!1891606))))

(assert (= (and b!6879282 ((_ is ElementMatch!16753) (regTwo!34018 r1!6342))) b!6879721))

(assert (= (and b!6879282 ((_ is Concat!25598) (regTwo!34018 r1!6342))) b!6879722))

(assert (= (and b!6879282 ((_ is Star!16753) (regTwo!34018 r1!6342))) b!6879723))

(assert (= (and b!6879282 ((_ is Union!16753) (regTwo!34018 r1!6342))) b!6879724))

(declare-fun b!6879726 () Bool)

(declare-fun e!4146072 () Bool)

(declare-fun tp!1891613 () Bool)

(declare-fun tp!1891612 () Bool)

(assert (=> b!6879726 (= e!4146072 (and tp!1891613 tp!1891612))))

(assert (=> b!6879281 (= tp!1891484 e!4146072)))

(declare-fun b!6879725 () Bool)

(assert (=> b!6879725 (= e!4146072 tp_is_empty!42731)))

(declare-fun b!6879727 () Bool)

(declare-fun tp!1891610 () Bool)

(assert (=> b!6879727 (= e!4146072 tp!1891610)))

(declare-fun b!6879728 () Bool)

(declare-fun tp!1891609 () Bool)

(declare-fun tp!1891611 () Bool)

(assert (=> b!6879728 (= e!4146072 (and tp!1891609 tp!1891611))))

(assert (= (and b!6879281 ((_ is ElementMatch!16753) (reg!17082 r1!6342))) b!6879725))

(assert (= (and b!6879281 ((_ is Concat!25598) (reg!17082 r1!6342))) b!6879726))

(assert (= (and b!6879281 ((_ is Star!16753) (reg!17082 r1!6342))) b!6879727))

(assert (= (and b!6879281 ((_ is Union!16753) (reg!17082 r1!6342))) b!6879728))

(declare-fun b!6879730 () Bool)

(declare-fun e!4146073 () Bool)

(declare-fun tp!1891618 () Bool)

(declare-fun tp!1891617 () Bool)

(assert (=> b!6879730 (= e!4146073 (and tp!1891618 tp!1891617))))

(assert (=> b!6879286 (= tp!1891493 e!4146073)))

(declare-fun b!6879729 () Bool)

(assert (=> b!6879729 (= e!4146073 tp_is_empty!42731)))

(declare-fun b!6879731 () Bool)

(declare-fun tp!1891615 () Bool)

(assert (=> b!6879731 (= e!4146073 tp!1891615)))

(declare-fun b!6879732 () Bool)

(declare-fun tp!1891614 () Bool)

(declare-fun tp!1891616 () Bool)

(assert (=> b!6879732 (= e!4146073 (and tp!1891614 tp!1891616))))

(assert (= (and b!6879286 ((_ is ElementMatch!16753) (regOne!34018 r3!135))) b!6879729))

(assert (= (and b!6879286 ((_ is Concat!25598) (regOne!34018 r3!135))) b!6879730))

(assert (= (and b!6879286 ((_ is Star!16753) (regOne!34018 r3!135))) b!6879731))

(assert (= (and b!6879286 ((_ is Union!16753) (regOne!34018 r3!135))) b!6879732))

(declare-fun b!6879734 () Bool)

(declare-fun e!4146074 () Bool)

(declare-fun tp!1891623 () Bool)

(declare-fun tp!1891622 () Bool)

(assert (=> b!6879734 (= e!4146074 (and tp!1891623 tp!1891622))))

(assert (=> b!6879286 (= tp!1891480 e!4146074)))

(declare-fun b!6879733 () Bool)

(assert (=> b!6879733 (= e!4146074 tp_is_empty!42731)))

(declare-fun b!6879735 () Bool)

(declare-fun tp!1891620 () Bool)

(assert (=> b!6879735 (= e!4146074 tp!1891620)))

(declare-fun b!6879736 () Bool)

(declare-fun tp!1891619 () Bool)

(declare-fun tp!1891621 () Bool)

(assert (=> b!6879736 (= e!4146074 (and tp!1891619 tp!1891621))))

(assert (= (and b!6879286 ((_ is ElementMatch!16753) (regTwo!34018 r3!135))) b!6879733))

(assert (= (and b!6879286 ((_ is Concat!25598) (regTwo!34018 r3!135))) b!6879734))

(assert (= (and b!6879286 ((_ is Star!16753) (regTwo!34018 r3!135))) b!6879735))

(assert (= (and b!6879286 ((_ is Union!16753) (regTwo!34018 r3!135))) b!6879736))

(declare-fun b!6879738 () Bool)

(declare-fun e!4146075 () Bool)

(declare-fun tp!1891628 () Bool)

(declare-fun tp!1891627 () Bool)

(assert (=> b!6879738 (= e!4146075 (and tp!1891628 tp!1891627))))

(assert (=> b!6879291 (= tp!1891485 e!4146075)))

(declare-fun b!6879737 () Bool)

(assert (=> b!6879737 (= e!4146075 tp_is_empty!42731)))

(declare-fun b!6879739 () Bool)

(declare-fun tp!1891625 () Bool)

(assert (=> b!6879739 (= e!4146075 tp!1891625)))

(declare-fun b!6879740 () Bool)

(declare-fun tp!1891624 () Bool)

(declare-fun tp!1891626 () Bool)

(assert (=> b!6879740 (= e!4146075 (and tp!1891624 tp!1891626))))

(assert (= (and b!6879291 ((_ is ElementMatch!16753) (reg!17082 r2!6280))) b!6879737))

(assert (= (and b!6879291 ((_ is Concat!25598) (reg!17082 r2!6280))) b!6879738))

(assert (= (and b!6879291 ((_ is Star!16753) (reg!17082 r2!6280))) b!6879739))

(assert (= (and b!6879291 ((_ is Union!16753) (reg!17082 r2!6280))) b!6879740))

(declare-fun b!6879742 () Bool)

(declare-fun e!4146076 () Bool)

(declare-fun tp!1891633 () Bool)

(declare-fun tp!1891632 () Bool)

(assert (=> b!6879742 (= e!4146076 (and tp!1891633 tp!1891632))))

(assert (=> b!6879280 (= tp!1891492 e!4146076)))

(declare-fun b!6879741 () Bool)

(assert (=> b!6879741 (= e!4146076 tp_is_empty!42731)))

(declare-fun b!6879743 () Bool)

(declare-fun tp!1891630 () Bool)

(assert (=> b!6879743 (= e!4146076 tp!1891630)))

(declare-fun b!6879744 () Bool)

(declare-fun tp!1891629 () Bool)

(declare-fun tp!1891631 () Bool)

(assert (=> b!6879744 (= e!4146076 (and tp!1891629 tp!1891631))))

(assert (= (and b!6879280 ((_ is ElementMatch!16753) (regOne!34019 r2!6280))) b!6879741))

(assert (= (and b!6879280 ((_ is Concat!25598) (regOne!34019 r2!6280))) b!6879742))

(assert (= (and b!6879280 ((_ is Star!16753) (regOne!34019 r2!6280))) b!6879743))

(assert (= (and b!6879280 ((_ is Union!16753) (regOne!34019 r2!6280))) b!6879744))

(declare-fun b!6879746 () Bool)

(declare-fun e!4146077 () Bool)

(declare-fun tp!1891638 () Bool)

(declare-fun tp!1891637 () Bool)

(assert (=> b!6879746 (= e!4146077 (and tp!1891638 tp!1891637))))

(assert (=> b!6879280 (= tp!1891481 e!4146077)))

(declare-fun b!6879745 () Bool)

(assert (=> b!6879745 (= e!4146077 tp_is_empty!42731)))

(declare-fun b!6879747 () Bool)

(declare-fun tp!1891635 () Bool)

(assert (=> b!6879747 (= e!4146077 tp!1891635)))

(declare-fun b!6879748 () Bool)

(declare-fun tp!1891634 () Bool)

(declare-fun tp!1891636 () Bool)

(assert (=> b!6879748 (= e!4146077 (and tp!1891634 tp!1891636))))

(assert (= (and b!6879280 ((_ is ElementMatch!16753) (regTwo!34019 r2!6280))) b!6879745))

(assert (= (and b!6879280 ((_ is Concat!25598) (regTwo!34019 r2!6280))) b!6879746))

(assert (= (and b!6879280 ((_ is Star!16753) (regTwo!34019 r2!6280))) b!6879747))

(assert (= (and b!6879280 ((_ is Union!16753) (regTwo!34019 r2!6280))) b!6879748))

(declare-fun b!6879750 () Bool)

(declare-fun e!4146078 () Bool)

(declare-fun tp!1891643 () Bool)

(declare-fun tp!1891642 () Bool)

(assert (=> b!6879750 (= e!4146078 (and tp!1891643 tp!1891642))))

(assert (=> b!6879285 (= tp!1891495 e!4146078)))

(declare-fun b!6879749 () Bool)

(assert (=> b!6879749 (= e!4146078 tp_is_empty!42731)))

(declare-fun b!6879751 () Bool)

(declare-fun tp!1891640 () Bool)

(assert (=> b!6879751 (= e!4146078 tp!1891640)))

(declare-fun b!6879752 () Bool)

(declare-fun tp!1891639 () Bool)

(declare-fun tp!1891641 () Bool)

(assert (=> b!6879752 (= e!4146078 (and tp!1891639 tp!1891641))))

(assert (= (and b!6879285 ((_ is ElementMatch!16753) (regOne!34019 r1!6342))) b!6879749))

(assert (= (and b!6879285 ((_ is Concat!25598) (regOne!34019 r1!6342))) b!6879750))

(assert (= (and b!6879285 ((_ is Star!16753) (regOne!34019 r1!6342))) b!6879751))

(assert (= (and b!6879285 ((_ is Union!16753) (regOne!34019 r1!6342))) b!6879752))

(declare-fun b!6879754 () Bool)

(declare-fun e!4146079 () Bool)

(declare-fun tp!1891648 () Bool)

(declare-fun tp!1891647 () Bool)

(assert (=> b!6879754 (= e!4146079 (and tp!1891648 tp!1891647))))

(assert (=> b!6879285 (= tp!1891482 e!4146079)))

(declare-fun b!6879753 () Bool)

(assert (=> b!6879753 (= e!4146079 tp_is_empty!42731)))

(declare-fun b!6879755 () Bool)

(declare-fun tp!1891645 () Bool)

(assert (=> b!6879755 (= e!4146079 tp!1891645)))

(declare-fun b!6879756 () Bool)

(declare-fun tp!1891644 () Bool)

(declare-fun tp!1891646 () Bool)

(assert (=> b!6879756 (= e!4146079 (and tp!1891644 tp!1891646))))

(assert (= (and b!6879285 ((_ is ElementMatch!16753) (regTwo!34019 r1!6342))) b!6879753))

(assert (= (and b!6879285 ((_ is Concat!25598) (regTwo!34019 r1!6342))) b!6879754))

(assert (= (and b!6879285 ((_ is Star!16753) (regTwo!34019 r1!6342))) b!6879755))

(assert (= (and b!6879285 ((_ is Union!16753) (regTwo!34019 r1!6342))) b!6879756))

(declare-fun b!6879761 () Bool)

(declare-fun e!4146082 () Bool)

(declare-fun tp!1891651 () Bool)

(assert (=> b!6879761 (= e!4146082 (and tp_is_empty!42731 tp!1891651))))

(assert (=> b!6879284 (= tp!1891490 e!4146082)))

(assert (= (and b!6879284 ((_ is Cons!66386) (t!380253 s!14361))) b!6879761))

(declare-fun b!6879763 () Bool)

(declare-fun e!4146083 () Bool)

(declare-fun tp!1891656 () Bool)

(declare-fun tp!1891655 () Bool)

(assert (=> b!6879763 (= e!4146083 (and tp!1891656 tp!1891655))))

(assert (=> b!6879289 (= tp!1891487 e!4146083)))

(declare-fun b!6879762 () Bool)

(assert (=> b!6879762 (= e!4146083 tp_is_empty!42731)))

(declare-fun b!6879764 () Bool)

(declare-fun tp!1891653 () Bool)

(assert (=> b!6879764 (= e!4146083 tp!1891653)))

(declare-fun b!6879765 () Bool)

(declare-fun tp!1891652 () Bool)

(declare-fun tp!1891654 () Bool)

(assert (=> b!6879765 (= e!4146083 (and tp!1891652 tp!1891654))))

(assert (= (and b!6879289 ((_ is ElementMatch!16753) (regOne!34019 r3!135))) b!6879762))

(assert (= (and b!6879289 ((_ is Concat!25598) (regOne!34019 r3!135))) b!6879763))

(assert (= (and b!6879289 ((_ is Star!16753) (regOne!34019 r3!135))) b!6879764))

(assert (= (and b!6879289 ((_ is Union!16753) (regOne!34019 r3!135))) b!6879765))

(declare-fun b!6879767 () Bool)

(declare-fun e!4146084 () Bool)

(declare-fun tp!1891661 () Bool)

(declare-fun tp!1891660 () Bool)

(assert (=> b!6879767 (= e!4146084 (and tp!1891661 tp!1891660))))

(assert (=> b!6879289 (= tp!1891488 e!4146084)))

(declare-fun b!6879766 () Bool)

(assert (=> b!6879766 (= e!4146084 tp_is_empty!42731)))

(declare-fun b!6879768 () Bool)

(declare-fun tp!1891658 () Bool)

(assert (=> b!6879768 (= e!4146084 tp!1891658)))

(declare-fun b!6879769 () Bool)

(declare-fun tp!1891657 () Bool)

(declare-fun tp!1891659 () Bool)

(assert (=> b!6879769 (= e!4146084 (and tp!1891657 tp!1891659))))

(assert (= (and b!6879289 ((_ is ElementMatch!16753) (regTwo!34019 r3!135))) b!6879766))

(assert (= (and b!6879289 ((_ is Concat!25598) (regTwo!34019 r3!135))) b!6879767))

(assert (= (and b!6879289 ((_ is Star!16753) (regTwo!34019 r3!135))) b!6879768))

(assert (= (and b!6879289 ((_ is Union!16753) (regTwo!34019 r3!135))) b!6879769))

(declare-fun b!6879771 () Bool)

(declare-fun e!4146085 () Bool)

(declare-fun tp!1891666 () Bool)

(declare-fun tp!1891665 () Bool)

(assert (=> b!6879771 (= e!4146085 (and tp!1891666 tp!1891665))))

(assert (=> b!6879283 (= tp!1891486 e!4146085)))

(declare-fun b!6879770 () Bool)

(assert (=> b!6879770 (= e!4146085 tp_is_empty!42731)))

(declare-fun b!6879772 () Bool)

(declare-fun tp!1891663 () Bool)

(assert (=> b!6879772 (= e!4146085 tp!1891663)))

(declare-fun b!6879773 () Bool)

(declare-fun tp!1891662 () Bool)

(declare-fun tp!1891664 () Bool)

(assert (=> b!6879773 (= e!4146085 (and tp!1891662 tp!1891664))))

(assert (= (and b!6879283 ((_ is ElementMatch!16753) (regOne!34018 r2!6280))) b!6879770))

(assert (= (and b!6879283 ((_ is Concat!25598) (regOne!34018 r2!6280))) b!6879771))

(assert (= (and b!6879283 ((_ is Star!16753) (regOne!34018 r2!6280))) b!6879772))

(assert (= (and b!6879283 ((_ is Union!16753) (regOne!34018 r2!6280))) b!6879773))

(declare-fun b!6879775 () Bool)

(declare-fun e!4146086 () Bool)

(declare-fun tp!1891671 () Bool)

(declare-fun tp!1891670 () Bool)

(assert (=> b!6879775 (= e!4146086 (and tp!1891671 tp!1891670))))

(assert (=> b!6879283 (= tp!1891491 e!4146086)))

(declare-fun b!6879774 () Bool)

(assert (=> b!6879774 (= e!4146086 tp_is_empty!42731)))

(declare-fun b!6879776 () Bool)

(declare-fun tp!1891668 () Bool)

(assert (=> b!6879776 (= e!4146086 tp!1891668)))

(declare-fun b!6879777 () Bool)

(declare-fun tp!1891667 () Bool)

(declare-fun tp!1891669 () Bool)

(assert (=> b!6879777 (= e!4146086 (and tp!1891667 tp!1891669))))

(assert (= (and b!6879283 ((_ is ElementMatch!16753) (regTwo!34018 r2!6280))) b!6879774))

(assert (= (and b!6879283 ((_ is Concat!25598) (regTwo!34018 r2!6280))) b!6879775))

(assert (= (and b!6879283 ((_ is Star!16753) (regTwo!34018 r2!6280))) b!6879776))

(assert (= (and b!6879283 ((_ is Union!16753) (regTwo!34018 r2!6280))) b!6879777))

(check-sat (not b!6879642) (not b!6879746) (not b!6879686) (not b!6879676) (not b!6879743) (not b!6879748) (not b!6879755) (not b!6879550) (not b!6879715) (not b!6879678) (not b!6879772) (not b!6879554) (not b!6879730) (not b!6879647) (not b!6879723) (not b!6879764) (not b!6879752) (not b!6879776) (not b!6879695) (not bm!626356) (not b!6879724) (not b!6879641) (not bm!626350) (not bm!626352) (not b!6879751) (not bm!626358) (not d!2159940) (not b!6879773) (not bm!626346) (not b!6879718) (not b!6879777) (not bm!626361) (not d!2159942) (not b!6879765) (not b!6879679) (not b!6879673) (not bm!626353) (not b!6879732) (not b!6879735) (not b!6879738) tp_is_empty!42731 (not b!6879726) (not b!6879744) (not b!6879739) (not b!6879768) (not b!6879731) (not b!6879775) (not b!6879747) (not bm!626359) (not b!6879767) (not b!6879722) (not b!6879675) (not b!6879329) (not b!6879740) (not b!6879734) (not b!6879727) (not b!6879716) (not b!6879736) (not d!2159934) (not b!6879728) (not d!2159932) (not bm!626354) (not b!6879756) (not b!6879652) (not bm!626317) (not b!6879645) (not b!6879714) (not b!6879750) (not b!6879771) (not bm!626362) (not b!6879681) (not b!6879742) (not b!6879719) (not bm!626316) (not b!6879769) (not b!6879720) (not b!6879660) (not b!6879763) (not b!6879761) (not b!6879644) (not b!6879664) (not b!6879639) (not bm!626355) (not bm!626347) (not b!6879754))
(check-sat)
