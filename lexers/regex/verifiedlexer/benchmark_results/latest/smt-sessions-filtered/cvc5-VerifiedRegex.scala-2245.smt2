; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110456 () Bool)

(assert start!110456)

(declare-fun b!1253304 () Bool)

(declare-fun e!797821 () Bool)

(declare-datatypes ((C!7246 0))(
  ( (C!7247 (val!4153 Int)) )
))
(declare-datatypes ((Regex!3464 0))(
  ( (ElementMatch!3464 (c!207989 C!7246)) (Concat!5694 (regOne!7440 Regex!3464) (regTwo!7440 Regex!3464)) (EmptyExpr!3464) (Star!3464 (reg!3793 Regex!3464)) (EmptyLang!3464) (Union!3464 (regOne!7441 Regex!3464) (regTwo!7441 Regex!3464)) )
))
(declare-fun r!15719 () Regex!3464)

(declare-fun regexDepth!59 (Regex!3464) Int)

(assert (=> b!1253304 (= e!797821 (>= (regexDepth!59 (regTwo!7441 r!15719)) (regexDepth!59 r!15719)))))

(declare-fun lt!420264 () Regex!3464)

(declare-fun removeUselessConcat!515 (Regex!3464) Regex!3464)

(assert (=> b!1253304 (= lt!420264 (removeUselessConcat!515 (regOne!7441 r!15719)))))

(declare-fun b!1253305 () Bool)

(declare-fun e!797822 () Bool)

(declare-fun tp!369311 () Bool)

(assert (=> b!1253305 (= e!797822 tp!369311)))

(declare-fun res!555445 () Bool)

(assert (=> start!110456 (=> (not res!555445) (not e!797821))))

(declare-fun validRegex!1500 (Regex!3464) Bool)

(assert (=> start!110456 (= res!555445 (validRegex!1500 r!15719))))

(assert (=> start!110456 e!797821))

(assert (=> start!110456 e!797822))

(declare-fun b!1253306 () Bool)

(declare-fun tp!369312 () Bool)

(declare-fun tp!369314 () Bool)

(assert (=> b!1253306 (= e!797822 (and tp!369312 tp!369314))))

(declare-fun b!1253307 () Bool)

(declare-fun res!555446 () Bool)

(assert (=> b!1253307 (=> (not res!555446) (not e!797821))))

(assert (=> b!1253307 (= res!555446 (and (or (not (is-Concat!5694 r!15719)) (not (is-EmptyExpr!3464 (regOne!7440 r!15719)))) (or (not (is-Concat!5694 r!15719)) (not (is-EmptyExpr!3464 (regTwo!7440 r!15719)))) (not (is-Concat!5694 r!15719)) (is-Union!3464 r!15719)))))

(declare-fun b!1253308 () Bool)

(declare-fun tp_is_empty!6449 () Bool)

(assert (=> b!1253308 (= e!797822 tp_is_empty!6449)))

(declare-fun b!1253309 () Bool)

(declare-fun tp!369310 () Bool)

(declare-fun tp!369313 () Bool)

(assert (=> b!1253309 (= e!797822 (and tp!369310 tp!369313))))

(assert (= (and start!110456 res!555445) b!1253307))

(assert (= (and b!1253307 res!555446) b!1253304))

(assert (= (and start!110456 (is-ElementMatch!3464 r!15719)) b!1253308))

(assert (= (and start!110456 (is-Concat!5694 r!15719)) b!1253309))

(assert (= (and start!110456 (is-Star!3464 r!15719)) b!1253305))

(assert (= (and start!110456 (is-Union!3464 r!15719)) b!1253306))

(declare-fun m!1412943 () Bool)

(assert (=> b!1253304 m!1412943))

(declare-fun m!1412945 () Bool)

(assert (=> b!1253304 m!1412945))

(declare-fun m!1412947 () Bool)

(assert (=> b!1253304 m!1412947))

(declare-fun m!1412949 () Bool)

(assert (=> start!110456 m!1412949))

(push 1)

(assert tp_is_empty!6449)

(assert (not b!1253304))

(assert (not start!110456))

(assert (not b!1253306))

(assert (not b!1253305))

(assert (not b!1253309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!87597 () Bool)

(declare-fun call!87603 () Bool)

(declare-fun c!207995 () Bool)

(assert (=> bm!87597 (= call!87603 (validRegex!1500 (ite c!207995 (regOne!7441 r!15719) (regOne!7440 r!15719))))))

(declare-fun b!1253346 () Bool)

(declare-fun e!797844 () Bool)

(declare-fun call!87604 () Bool)

(assert (=> b!1253346 (= e!797844 call!87604)))

(declare-fun b!1253347 () Bool)

(declare-fun e!797849 () Bool)

(declare-fun e!797847 () Bool)

(assert (=> b!1253347 (= e!797849 e!797847)))

(declare-fun res!555466 () Bool)

(assert (=> b!1253347 (=> (not res!555466) (not e!797847))))

(assert (=> b!1253347 (= res!555466 call!87603)))

(declare-fun b!1253348 () Bool)

(declare-fun res!555464 () Bool)

(assert (=> b!1253348 (=> (not res!555464) (not e!797844))))

(assert (=> b!1253348 (= res!555464 call!87603)))

(declare-fun e!797846 () Bool)

(assert (=> b!1253348 (= e!797846 e!797844)))

(declare-fun b!1253349 () Bool)

(declare-fun res!555463 () Bool)

(assert (=> b!1253349 (=> res!555463 e!797849)))

(assert (=> b!1253349 (= res!555463 (not (is-Concat!5694 r!15719)))))

(assert (=> b!1253349 (= e!797846 e!797849)))

(declare-fun d!354584 () Bool)

(declare-fun res!555465 () Bool)

(declare-fun e!797845 () Bool)

(assert (=> d!354584 (=> res!555465 e!797845)))

(assert (=> d!354584 (= res!555465 (is-ElementMatch!3464 r!15719))))

(assert (=> d!354584 (= (validRegex!1500 r!15719) e!797845)))

(declare-fun b!1253350 () Bool)

(declare-fun e!797843 () Bool)

(assert (=> b!1253350 (= e!797845 e!797843)))

(declare-fun c!207996 () Bool)

(assert (=> b!1253350 (= c!207996 (is-Star!3464 r!15719))))

(declare-fun bm!87598 () Bool)

(declare-fun call!87602 () Bool)

(assert (=> bm!87598 (= call!87604 call!87602)))

(declare-fun b!1253351 () Bool)

(assert (=> b!1253351 (= e!797843 e!797846)))

(assert (=> b!1253351 (= c!207995 (is-Union!3464 r!15719))))

(declare-fun b!1253352 () Bool)

(assert (=> b!1253352 (= e!797847 call!87604)))

(declare-fun b!1253353 () Bool)

(declare-fun e!797848 () Bool)

(assert (=> b!1253353 (= e!797843 e!797848)))

(declare-fun res!555467 () Bool)

(declare-fun nullable!1102 (Regex!3464) Bool)

(assert (=> b!1253353 (= res!555467 (not (nullable!1102 (reg!3793 r!15719))))))

(assert (=> b!1253353 (=> (not res!555467) (not e!797848))))

(declare-fun bm!87599 () Bool)

(assert (=> bm!87599 (= call!87602 (validRegex!1500 (ite c!207996 (reg!3793 r!15719) (ite c!207995 (regTwo!7441 r!15719) (regTwo!7440 r!15719)))))))

(declare-fun b!1253354 () Bool)

(assert (=> b!1253354 (= e!797848 call!87602)))

(assert (= (and d!354584 (not res!555465)) b!1253350))

(assert (= (and b!1253350 c!207996) b!1253353))

(assert (= (and b!1253350 (not c!207996)) b!1253351))

(assert (= (and b!1253353 res!555467) b!1253354))

(assert (= (and b!1253351 c!207995) b!1253348))

(assert (= (and b!1253351 (not c!207995)) b!1253349))

(assert (= (and b!1253348 res!555464) b!1253346))

(assert (= (and b!1253349 (not res!555463)) b!1253347))

(assert (= (and b!1253347 res!555466) b!1253352))

(assert (= (or b!1253346 b!1253352) bm!87598))

(assert (= (or b!1253348 b!1253347) bm!87597))

(assert (= (or b!1253354 bm!87598) bm!87599))

(declare-fun m!1412959 () Bool)

(assert (=> bm!87597 m!1412959))

(declare-fun m!1412961 () Bool)

(assert (=> b!1253353 m!1412961))

(declare-fun m!1412963 () Bool)

(assert (=> bm!87599 m!1412963))

(assert (=> start!110456 d!354584))

(declare-fun c!208027 () Bool)

(declare-fun c!208030 () Bool)

(declare-fun call!87631 () Int)

(declare-fun bm!87624 () Bool)

(assert (=> bm!87624 (= call!87631 (regexDepth!59 (ite c!208030 (reg!3793 (regTwo!7441 r!15719)) (ite c!208027 (regTwo!7441 (regTwo!7441 r!15719)) (regTwo!7440 (regTwo!7441 r!15719))))))))

(declare-fun c!208031 () Bool)

(declare-fun c!208029 () Bool)

(declare-fun bm!87625 () Bool)

(declare-fun call!87630 () Int)

(assert (=> bm!87625 (= call!87630 (regexDepth!59 (ite c!208031 (regTwo!7441 (regTwo!7441 r!15719)) (ite c!208029 (regOne!7440 (regTwo!7441 r!15719)) (reg!3793 (regTwo!7441 r!15719))))))))

(declare-fun b!1253423 () Bool)

(declare-fun e!797895 () Int)

(declare-fun call!87635 () Int)

(assert (=> b!1253423 (= e!797895 (+ 1 call!87635))))

(declare-fun b!1253424 () Bool)

(declare-fun e!797896 () Int)

(assert (=> b!1253424 (= e!797895 e!797896)))

(declare-fun c!208026 () Bool)

(assert (=> b!1253424 (= c!208026 (is-Concat!5694 (regTwo!7441 r!15719)))))

(declare-fun b!1253425 () Bool)

(declare-fun c!208028 () Bool)

(assert (=> b!1253425 (= c!208028 (is-Star!3464 (regTwo!7441 r!15719)))))

(declare-fun e!797892 () Bool)

(declare-fun e!797891 () Bool)

(assert (=> b!1253425 (= e!797892 e!797891)))

(declare-fun b!1253426 () Bool)

(declare-fun res!555482 () Bool)

(declare-fun e!797894 () Bool)

(assert (=> b!1253426 (=> (not res!555482) (not e!797894))))

(declare-fun lt!420272 () Int)

(declare-fun call!87629 () Int)

(assert (=> b!1253426 (= res!555482 (> lt!420272 call!87629))))

(assert (=> b!1253426 (= e!797892 e!797894)))

(declare-fun bm!87626 () Bool)

(declare-fun call!87634 () Int)

(assert (=> bm!87626 (= call!87634 call!87631)))

(declare-fun b!1253427 () Bool)

(declare-fun e!797899 () Bool)

(declare-fun e!797893 () Bool)

(assert (=> b!1253427 (= e!797899 e!797893)))

(assert (=> b!1253427 (= c!208031 (is-Union!3464 (regTwo!7441 r!15719)))))

(declare-fun b!1253428 () Bool)

(assert (=> b!1253428 (= e!797896 (+ 1 call!87635))))

(declare-fun bm!87627 () Bool)

(declare-fun call!87632 () Int)

(assert (=> bm!87627 (= call!87632 (regexDepth!59 (ite c!208031 (regOne!7441 (regTwo!7441 r!15719)) (regTwo!7440 (regTwo!7441 r!15719)))))))

(declare-fun bm!87628 () Bool)

(declare-fun call!87633 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!87628 (= call!87635 (maxBigInt!0 call!87633 call!87634))))

(declare-fun b!1253429 () Bool)

(assert (=> b!1253429 (= e!797891 (= lt!420272 1))))

(declare-fun b!1253430 () Bool)

(assert (=> b!1253430 (= c!208027 (is-Union!3464 (regTwo!7441 r!15719)))))

(declare-fun e!797897 () Int)

(assert (=> b!1253430 (= e!797897 e!797895)))

(declare-fun b!1253431 () Bool)

(assert (=> b!1253431 (= e!797891 (> lt!420272 call!87629))))

(declare-fun b!1253432 () Bool)

(declare-fun e!797890 () Int)

(assert (=> b!1253432 (= e!797890 e!797897)))

(assert (=> b!1253432 (= c!208030 (is-Star!3464 (regTwo!7441 r!15719)))))

(declare-fun b!1253433 () Bool)

(declare-fun e!797898 () Bool)

(assert (=> b!1253433 (= e!797893 e!797898)))

(declare-fun res!555481 () Bool)

(assert (=> b!1253433 (= res!555481 (> lt!420272 call!87632))))

(assert (=> b!1253433 (=> (not res!555481) (not e!797898))))

(declare-fun b!1253434 () Bool)

(assert (=> b!1253434 (= e!797896 1)))

(declare-fun b!1253435 () Bool)

(assert (=> b!1253435 (= e!797890 1)))

(declare-fun b!1253436 () Bool)

(assert (=> b!1253436 (= e!797894 (> lt!420272 call!87632))))

(declare-fun b!1253437 () Bool)

(assert (=> b!1253437 (= e!797898 (> lt!420272 call!87630))))

(declare-fun bm!87630 () Bool)

(assert (=> bm!87630 (= call!87633 (regexDepth!59 (ite c!208027 (regOne!7441 (regTwo!7441 r!15719)) (regOne!7440 (regTwo!7441 r!15719)))))))

(declare-fun bm!87629 () Bool)

(assert (=> bm!87629 (= call!87629 call!87630)))

(declare-fun d!354588 () Bool)

(assert (=> d!354588 e!797899))

(declare-fun res!555480 () Bool)

(assert (=> d!354588 (=> (not res!555480) (not e!797899))))

(assert (=> d!354588 (= res!555480 (> lt!420272 0))))

(assert (=> d!354588 (= lt!420272 e!797890)))

(declare-fun c!208025 () Bool)

(assert (=> d!354588 (= c!208025 (is-ElementMatch!3464 (regTwo!7441 r!15719)))))

(assert (=> d!354588 (= (regexDepth!59 (regTwo!7441 r!15719)) lt!420272)))

(declare-fun b!1253438 () Bool)

(assert (=> b!1253438 (= e!797897 (+ 1 call!87631))))

(declare-fun b!1253439 () Bool)

(assert (=> b!1253439 (= e!797893 e!797892)))

(assert (=> b!1253439 (= c!208029 (is-Concat!5694 (regTwo!7441 r!15719)))))

(assert (= (and d!354588 c!208025) b!1253435))

(assert (= (and d!354588 (not c!208025)) b!1253432))

(assert (= (and b!1253432 c!208030) b!1253438))

(assert (= (and b!1253432 (not c!208030)) b!1253430))

(assert (= (and b!1253430 c!208027) b!1253423))

(assert (= (and b!1253430 (not c!208027)) b!1253424))

(assert (= (and b!1253424 c!208026) b!1253428))

(assert (= (and b!1253424 (not c!208026)) b!1253434))

(assert (= (or b!1253423 b!1253428) bm!87630))

(assert (= (or b!1253423 b!1253428) bm!87626))

(assert (= (or b!1253423 b!1253428) bm!87628))

(assert (= (or b!1253438 bm!87626) bm!87624))

(assert (= (and d!354588 res!555480) b!1253427))

(assert (= (and b!1253427 c!208031) b!1253433))

(assert (= (and b!1253427 (not c!208031)) b!1253439))

(assert (= (and b!1253433 res!555481) b!1253437))

(assert (= (and b!1253439 c!208029) b!1253426))

(assert (= (and b!1253439 (not c!208029)) b!1253425))

(assert (= (and b!1253426 res!555482) b!1253436))

(assert (= (and b!1253425 c!208028) b!1253431))

(assert (= (and b!1253425 (not c!208028)) b!1253429))

(assert (= (or b!1253426 b!1253431) bm!87629))

(assert (= (or b!1253433 b!1253436) bm!87627))

(assert (= (or b!1253437 bm!87629) bm!87625))

(declare-fun m!1412965 () Bool)

(assert (=> bm!87624 m!1412965))

(declare-fun m!1412967 () Bool)

(assert (=> bm!87625 m!1412967))

(declare-fun m!1412969 () Bool)

(assert (=> bm!87627 m!1412969))

(declare-fun m!1412971 () Bool)

(assert (=> bm!87630 m!1412971))

(declare-fun m!1412973 () Bool)

(assert (=> bm!87628 m!1412973))

(assert (=> b!1253304 d!354588))

(declare-fun call!87642 () Int)

(declare-fun c!208037 () Bool)

(declare-fun c!208034 () Bool)

(declare-fun bm!87633 () Bool)

(assert (=> bm!87633 (= call!87642 (regexDepth!59 (ite c!208037 (reg!3793 r!15719) (ite c!208034 (regTwo!7441 r!15719) (regTwo!7440 r!15719)))))))

(declare-fun bm!87634 () Bool)

(declare-fun c!208036 () Bool)

(declare-fun c!208038 () Bool)

(declare-fun call!87641 () Int)

(assert (=> bm!87634 (= call!87641 (regexDepth!59 (ite c!208038 (regTwo!7441 r!15719) (ite c!208036 (regOne!7440 r!15719) (reg!3793 r!15719)))))))

(declare-fun b!1253440 () Bool)

(declare-fun e!797905 () Int)

(declare-fun call!87646 () Int)

(assert (=> b!1253440 (= e!797905 (+ 1 call!87646))))

(declare-fun b!1253441 () Bool)

(declare-fun e!797906 () Int)

(assert (=> b!1253441 (= e!797905 e!797906)))

(declare-fun c!208033 () Bool)

(assert (=> b!1253441 (= c!208033 (is-Concat!5694 r!15719))))

(declare-fun b!1253442 () Bool)

(declare-fun c!208035 () Bool)

(assert (=> b!1253442 (= c!208035 (is-Star!3464 r!15719))))

(declare-fun e!797902 () Bool)

(declare-fun e!797901 () Bool)

(assert (=> b!1253442 (= e!797902 e!797901)))

(declare-fun b!1253443 () Bool)

(declare-fun res!555485 () Bool)

(declare-fun e!797904 () Bool)

(assert (=> b!1253443 (=> (not res!555485) (not e!797904))))

(declare-fun lt!420273 () Int)

(declare-fun call!87640 () Int)

(assert (=> b!1253443 (= res!555485 (> lt!420273 call!87640))))

(assert (=> b!1253443 (= e!797902 e!797904)))

(declare-fun bm!87635 () Bool)

(declare-fun call!87645 () Int)

(assert (=> bm!87635 (= call!87645 call!87642)))

(declare-fun b!1253444 () Bool)

(declare-fun e!797909 () Bool)

(declare-fun e!797903 () Bool)

(assert (=> b!1253444 (= e!797909 e!797903)))

(assert (=> b!1253444 (= c!208038 (is-Union!3464 r!15719))))

(declare-fun b!1253445 () Bool)

(assert (=> b!1253445 (= e!797906 (+ 1 call!87646))))

(declare-fun bm!87636 () Bool)

(declare-fun call!87643 () Int)

(assert (=> bm!87636 (= call!87643 (regexDepth!59 (ite c!208038 (regOne!7441 r!15719) (regTwo!7440 r!15719))))))

(declare-fun bm!87637 () Bool)

(declare-fun call!87644 () Int)

(assert (=> bm!87637 (= call!87646 (maxBigInt!0 call!87644 call!87645))))

(declare-fun b!1253446 () Bool)

(assert (=> b!1253446 (= e!797901 (= lt!420273 1))))

(declare-fun b!1253447 () Bool)

(assert (=> b!1253447 (= c!208034 (is-Union!3464 r!15719))))

(declare-fun e!797907 () Int)

(assert (=> b!1253447 (= e!797907 e!797905)))

(declare-fun b!1253448 () Bool)

(assert (=> b!1253448 (= e!797901 (> lt!420273 call!87640))))

(declare-fun b!1253449 () Bool)

(declare-fun e!797900 () Int)

(assert (=> b!1253449 (= e!797900 e!797907)))

(assert (=> b!1253449 (= c!208037 (is-Star!3464 r!15719))))

(declare-fun b!1253450 () Bool)

(declare-fun e!797908 () Bool)

(assert (=> b!1253450 (= e!797903 e!797908)))

(declare-fun res!555484 () Bool)

(assert (=> b!1253450 (= res!555484 (> lt!420273 call!87643))))

(assert (=> b!1253450 (=> (not res!555484) (not e!797908))))

(declare-fun b!1253451 () Bool)

(assert (=> b!1253451 (= e!797906 1)))

(declare-fun b!1253452 () Bool)

(assert (=> b!1253452 (= e!797900 1)))

(declare-fun b!1253453 () Bool)

(assert (=> b!1253453 (= e!797904 (> lt!420273 call!87643))))

(declare-fun b!1253454 () Bool)

(assert (=> b!1253454 (= e!797908 (> lt!420273 call!87641))))

(declare-fun bm!87639 () Bool)

(assert (=> bm!87639 (= call!87644 (regexDepth!59 (ite c!208034 (regOne!7441 r!15719) (regOne!7440 r!15719))))))

(declare-fun bm!87638 () Bool)

(assert (=> bm!87638 (= call!87640 call!87641)))

(declare-fun d!354590 () Bool)

(assert (=> d!354590 e!797909))

(declare-fun res!555483 () Bool)

(assert (=> d!354590 (=> (not res!555483) (not e!797909))))

(assert (=> d!354590 (= res!555483 (> lt!420273 0))))

(assert (=> d!354590 (= lt!420273 e!797900)))

(declare-fun c!208032 () Bool)

(assert (=> d!354590 (= c!208032 (is-ElementMatch!3464 r!15719))))

(assert (=> d!354590 (= (regexDepth!59 r!15719) lt!420273)))

(declare-fun b!1253455 () Bool)

(assert (=> b!1253455 (= e!797907 (+ 1 call!87642))))

(declare-fun b!1253456 () Bool)

(assert (=> b!1253456 (= e!797903 e!797902)))

(assert (=> b!1253456 (= c!208036 (is-Concat!5694 r!15719))))

(assert (= (and d!354590 c!208032) b!1253452))

(assert (= (and d!354590 (not c!208032)) b!1253449))

(assert (= (and b!1253449 c!208037) b!1253455))

(assert (= (and b!1253449 (not c!208037)) b!1253447))

(assert (= (and b!1253447 c!208034) b!1253440))

(assert (= (and b!1253447 (not c!208034)) b!1253441))

(assert (= (and b!1253441 c!208033) b!1253445))

(assert (= (and b!1253441 (not c!208033)) b!1253451))

(assert (= (or b!1253440 b!1253445) bm!87639))

(assert (= (or b!1253440 b!1253445) bm!87635))

(assert (= (or b!1253440 b!1253445) bm!87637))

(assert (= (or b!1253455 bm!87635) bm!87633))

(assert (= (and d!354590 res!555483) b!1253444))

(assert (= (and b!1253444 c!208038) b!1253450))

(assert (= (and b!1253444 (not c!208038)) b!1253456))

(assert (= (and b!1253450 res!555484) b!1253454))

(assert (= (and b!1253456 c!208036) b!1253443))

(assert (= (and b!1253456 (not c!208036)) b!1253442))

(assert (= (and b!1253443 res!555485) b!1253453))

(assert (= (and b!1253442 c!208035) b!1253448))

(assert (= (and b!1253442 (not c!208035)) b!1253446))

(assert (= (or b!1253443 b!1253448) bm!87638))

(assert (= (or b!1253450 b!1253453) bm!87636))

(assert (= (or b!1253454 bm!87638) bm!87634))

(declare-fun m!1412975 () Bool)

(assert (=> bm!87633 m!1412975))

(declare-fun m!1412977 () Bool)

(assert (=> bm!87634 m!1412977))

(declare-fun m!1412979 () Bool)

(assert (=> bm!87636 m!1412979))

(declare-fun m!1412981 () Bool)

(assert (=> bm!87639 m!1412981))

(declare-fun m!1412983 () Bool)

(assert (=> bm!87637 m!1412983))

(assert (=> b!1253304 d!354590))

(declare-fun c!208057 () Bool)

(declare-fun call!87666 () Regex!3464)

(declare-fun c!208058 () Bool)

(declare-fun bm!87657 () Bool)

(assert (=> bm!87657 (= call!87666 (removeUselessConcat!515 (ite c!208057 (regTwo!7440 (regOne!7441 r!15719)) (ite c!208058 (regOne!7441 (regOne!7441 r!15719)) (reg!3793 (regOne!7441 r!15719))))))))

(declare-fun b!1253494 () Bool)

(declare-fun e!797936 () Regex!3464)

(declare-fun call!87668 () Regex!3464)

(assert (=> b!1253494 (= e!797936 (Concat!5694 call!87668 call!87666))))

(declare-fun b!1253496 () Bool)

(declare-fun e!797935 () Regex!3464)

(declare-fun call!87667 () Regex!3464)

(assert (=> b!1253496 (= e!797935 call!87667)))

(declare-fun b!1253499 () Bool)

(declare-fun e!797932 () Regex!3464)

(assert (=> b!1253499 (= e!797935 e!797932)))

(declare-fun c!208056 () Bool)

(assert (=> b!1253499 (= c!208056 (and (is-Concat!5694 (regOne!7441 r!15719)) (is-EmptyExpr!3464 (regTwo!7440 (regOne!7441 r!15719)))))))

(declare-fun c!208060 () Bool)

(declare-fun bm!87659 () Bool)

(assert (=> bm!87659 (= call!87667 (removeUselessConcat!515 (ite c!208060 (regTwo!7440 (regOne!7441 r!15719)) (ite (or c!208056 c!208057) (regOne!7440 (regOne!7441 r!15719)) (regTwo!7441 (regOne!7441 r!15719))))))))

(declare-fun b!1253500 () Bool)

(declare-fun e!797934 () Regex!3464)

(assert (=> b!1253500 (= e!797934 (regOne!7441 r!15719))))

(declare-fun b!1253501 () Bool)

(declare-fun c!208059 () Bool)

(assert (=> b!1253501 (= c!208059 (is-Star!3464 (regOne!7441 r!15719)))))

(declare-fun e!797933 () Regex!3464)

(assert (=> b!1253501 (= e!797933 e!797934)))

(declare-fun bm!87661 () Bool)

(declare-fun call!87664 () Regex!3464)

(assert (=> bm!87661 (= call!87664 call!87667)))

(declare-fun b!1253502 () Bool)

(declare-fun e!797937 () Bool)

(declare-fun lt!420277 () Regex!3464)

(assert (=> b!1253502 (= e!797937 (= (nullable!1102 lt!420277) (nullable!1102 (regOne!7441 r!15719))))))

(declare-fun bm!87662 () Bool)

(assert (=> bm!87662 (= call!87668 call!87664)))

(declare-fun bm!87663 () Bool)

(declare-fun call!87665 () Regex!3464)

(assert (=> bm!87663 (= call!87665 call!87666)))

(declare-fun b!1253498 () Bool)

(assert (=> b!1253498 (= e!797933 (Union!3464 call!87665 call!87668))))

(declare-fun d!354592 () Bool)

(assert (=> d!354592 e!797937))

(declare-fun res!555491 () Bool)

(assert (=> d!354592 (=> (not res!555491) (not e!797937))))

(assert (=> d!354592 (= res!555491 (validRegex!1500 lt!420277))))

(assert (=> d!354592 (= lt!420277 e!797935)))

(assert (=> d!354592 (= c!208060 (and (is-Concat!5694 (regOne!7441 r!15719)) (is-EmptyExpr!3464 (regOne!7440 (regOne!7441 r!15719)))))))

(assert (=> d!354592 (validRegex!1500 (regOne!7441 r!15719))))

(assert (=> d!354592 (= (removeUselessConcat!515 (regOne!7441 r!15719)) lt!420277)))

(declare-fun b!1253503 () Bool)

(assert (=> b!1253503 (= c!208057 (is-Concat!5694 (regOne!7441 r!15719)))))

(assert (=> b!1253503 (= e!797932 e!797936)))

(declare-fun b!1253504 () Bool)

(assert (=> b!1253504 (= e!797932 call!87664)))

(declare-fun b!1253505 () Bool)

(assert (=> b!1253505 (= e!797934 (Star!3464 call!87665))))

(declare-fun b!1253506 () Bool)

(assert (=> b!1253506 (= e!797936 e!797933)))

(assert (=> b!1253506 (= c!208058 (is-Union!3464 (regOne!7441 r!15719)))))

(assert (= (and d!354592 c!208060) b!1253496))

(assert (= (and d!354592 (not c!208060)) b!1253499))

(assert (= (and b!1253499 c!208056) b!1253504))

(assert (= (and b!1253499 (not c!208056)) b!1253503))

(assert (= (and b!1253503 c!208057) b!1253494))

(assert (= (and b!1253503 (not c!208057)) b!1253506))

(assert (= (and b!1253506 c!208058) b!1253498))

(assert (= (and b!1253506 (not c!208058)) b!1253501))

(assert (= (and b!1253501 c!208059) b!1253505))

(assert (= (and b!1253501 (not c!208059)) b!1253500))

(assert (= (or b!1253498 b!1253505) bm!87663))

(assert (= (or b!1253494 b!1253498) bm!87662))

(assert (= (or b!1253494 bm!87663) bm!87657))

(assert (= (or b!1253504 bm!87662) bm!87661))

(assert (= (or b!1253496 bm!87661) bm!87659))

(assert (= (and d!354592 res!555491) b!1253502))

(declare-fun m!1412985 () Bool)

(assert (=> bm!87657 m!1412985))

(declare-fun m!1412987 () Bool)

(assert (=> bm!87659 m!1412987))

(declare-fun m!1412989 () Bool)

(assert (=> b!1253502 m!1412989))

(declare-fun m!1412991 () Bool)

(assert (=> b!1253502 m!1412991))

(declare-fun m!1412993 () Bool)

(assert (=> d!354592 m!1412993))

(declare-fun m!1412995 () Bool)

(assert (=> d!354592 m!1412995))

(assert (=> b!1253304 d!354592))

(declare-fun e!797940 () Bool)

(assert (=> b!1253306 (= tp!369312 e!797940)))

(declare-fun b!1253519 () Bool)

(declare-fun tp!369342 () Bool)

(assert (=> b!1253519 (= e!797940 tp!369342)))

(declare-fun b!1253520 () Bool)

(declare-fun tp!369344 () Bool)

(declare-fun tp!369340 () Bool)

(assert (=> b!1253520 (= e!797940 (and tp!369344 tp!369340))))

(declare-fun b!1253518 () Bool)

(declare-fun tp!369343 () Bool)

(declare-fun tp!369341 () Bool)

(assert (=> b!1253518 (= e!797940 (and tp!369343 tp!369341))))

(declare-fun b!1253517 () Bool)

(assert (=> b!1253517 (= e!797940 tp_is_empty!6449)))

(assert (= (and b!1253306 (is-ElementMatch!3464 (regOne!7441 r!15719))) b!1253517))

(assert (= (and b!1253306 (is-Concat!5694 (regOne!7441 r!15719))) b!1253518))

(assert (= (and b!1253306 (is-Star!3464 (regOne!7441 r!15719))) b!1253519))

(assert (= (and b!1253306 (is-Union!3464 (regOne!7441 r!15719))) b!1253520))

(declare-fun e!797941 () Bool)

(assert (=> b!1253306 (= tp!369314 e!797941)))

(declare-fun b!1253523 () Bool)

(declare-fun tp!369347 () Bool)

(assert (=> b!1253523 (= e!797941 tp!369347)))

(declare-fun b!1253524 () Bool)

(declare-fun tp!369349 () Bool)

(declare-fun tp!369345 () Bool)

(assert (=> b!1253524 (= e!797941 (and tp!369349 tp!369345))))

(declare-fun b!1253522 () Bool)

(declare-fun tp!369348 () Bool)

(declare-fun tp!369346 () Bool)

(assert (=> b!1253522 (= e!797941 (and tp!369348 tp!369346))))

(declare-fun b!1253521 () Bool)

(assert (=> b!1253521 (= e!797941 tp_is_empty!6449)))

(assert (= (and b!1253306 (is-ElementMatch!3464 (regTwo!7441 r!15719))) b!1253521))

(assert (= (and b!1253306 (is-Concat!5694 (regTwo!7441 r!15719))) b!1253522))

(assert (= (and b!1253306 (is-Star!3464 (regTwo!7441 r!15719))) b!1253523))

(assert (= (and b!1253306 (is-Union!3464 (regTwo!7441 r!15719))) b!1253524))

(declare-fun e!797942 () Bool)

(assert (=> b!1253305 (= tp!369311 e!797942)))

(declare-fun b!1253527 () Bool)

(declare-fun tp!369352 () Bool)

(assert (=> b!1253527 (= e!797942 tp!369352)))

(declare-fun b!1253528 () Bool)

(declare-fun tp!369354 () Bool)

(declare-fun tp!369350 () Bool)

(assert (=> b!1253528 (= e!797942 (and tp!369354 tp!369350))))

(declare-fun b!1253526 () Bool)

(declare-fun tp!369353 () Bool)

(declare-fun tp!369351 () Bool)

(assert (=> b!1253526 (= e!797942 (and tp!369353 tp!369351))))

(declare-fun b!1253525 () Bool)

(assert (=> b!1253525 (= e!797942 tp_is_empty!6449)))

(assert (= (and b!1253305 (is-ElementMatch!3464 (reg!3793 r!15719))) b!1253525))

(assert (= (and b!1253305 (is-Concat!5694 (reg!3793 r!15719))) b!1253526))

(assert (= (and b!1253305 (is-Star!3464 (reg!3793 r!15719))) b!1253527))

(assert (= (and b!1253305 (is-Union!3464 (reg!3793 r!15719))) b!1253528))

(declare-fun e!797943 () Bool)

(assert (=> b!1253309 (= tp!369310 e!797943)))

(declare-fun b!1253531 () Bool)

(declare-fun tp!369357 () Bool)

(assert (=> b!1253531 (= e!797943 tp!369357)))

(declare-fun b!1253532 () Bool)

(declare-fun tp!369359 () Bool)

(declare-fun tp!369355 () Bool)

(assert (=> b!1253532 (= e!797943 (and tp!369359 tp!369355))))

(declare-fun b!1253530 () Bool)

(declare-fun tp!369358 () Bool)

(declare-fun tp!369356 () Bool)

(assert (=> b!1253530 (= e!797943 (and tp!369358 tp!369356))))

(declare-fun b!1253529 () Bool)

(assert (=> b!1253529 (= e!797943 tp_is_empty!6449)))

(assert (= (and b!1253309 (is-ElementMatch!3464 (regOne!7440 r!15719))) b!1253529))

(assert (= (and b!1253309 (is-Concat!5694 (regOne!7440 r!15719))) b!1253530))

(assert (= (and b!1253309 (is-Star!3464 (regOne!7440 r!15719))) b!1253531))

(assert (= (and b!1253309 (is-Union!3464 (regOne!7440 r!15719))) b!1253532))

(declare-fun e!797952 () Bool)

(assert (=> b!1253309 (= tp!369313 e!797952)))

(declare-fun b!1253535 () Bool)

(declare-fun tp!369362 () Bool)

(assert (=> b!1253535 (= e!797952 tp!369362)))

(declare-fun b!1253536 () Bool)

(declare-fun tp!369364 () Bool)

(declare-fun tp!369360 () Bool)

(assert (=> b!1253536 (= e!797952 (and tp!369364 tp!369360))))

(declare-fun b!1253534 () Bool)

(declare-fun tp!369363 () Bool)

(declare-fun tp!369361 () Bool)

(assert (=> b!1253534 (= e!797952 (and tp!369363 tp!369361))))

(declare-fun b!1253533 () Bool)

(assert (=> b!1253533 (= e!797952 tp_is_empty!6449)))

(assert (= (and b!1253309 (is-ElementMatch!3464 (regTwo!7440 r!15719))) b!1253533))

(assert (= (and b!1253309 (is-Concat!5694 (regTwo!7440 r!15719))) b!1253534))

(assert (= (and b!1253309 (is-Star!3464 (regTwo!7440 r!15719))) b!1253535))

(assert (= (and b!1253309 (is-Union!3464 (regTwo!7440 r!15719))) b!1253536))

(push 1)

(assert (not bm!87633))

(assert (not bm!87630))

(assert (not b!1253518))

(assert (not b!1253519))

(assert (not b!1253523))

(assert (not bm!87659))

(assert (not bm!87599))

(assert (not b!1253534))

(assert (not bm!87597))

(assert (not b!1253531))

(assert (not bm!87628))

(assert (not b!1253532))

(assert (not bm!87636))

(assert (not bm!87624))

(assert (not b!1253502))

(assert (not d!354592))

(assert (not b!1253530))

(assert (not b!1253520))

(assert (not b!1253535))

(assert tp_is_empty!6449)

(assert (not b!1253522))

(assert (not bm!87634))

(assert (not b!1253524))

(assert (not bm!87627))

(assert (not b!1253527))

(assert (not bm!87639))

(assert (not bm!87625))

(assert (not b!1253528))

(assert (not bm!87637))

(assert (not bm!87657))

(assert (not b!1253353))

(assert (not b!1253536))

(assert (not b!1253526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

