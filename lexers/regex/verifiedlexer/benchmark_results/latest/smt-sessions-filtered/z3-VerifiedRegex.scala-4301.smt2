; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230408 () Bool)

(assert start!230408)

(declare-fun b!2333282 () Bool)

(declare-fun e!1494485 () Bool)

(declare-datatypes ((C!13840 0))(
  ( (C!13841 (val!8080 Int)) )
))
(declare-datatypes ((Regex!6841 0))(
  ( (ElementMatch!6841 (c!370767 C!13840)) (Concat!11463 (regOne!14194 Regex!6841) (regTwo!14194 Regex!6841)) (EmptyExpr!6841) (Star!6841 (reg!7170 Regex!6841)) (EmptyLang!6841) (Union!6841 (regOne!14195 Regex!6841) (regTwo!14195 Regex!6841)) )
))
(declare-fun r!26197 () Regex!6841)

(declare-fun RegexPrimitiveSize!100 (Regex!6841) Int)

(assert (=> b!2333282 (= e!1494485 (< (RegexPrimitiveSize!100 r!26197) 0))))

(declare-fun res!995723 () Bool)

(assert (=> start!230408 (=> (not res!995723) (not e!1494485))))

(declare-fun validRegex!2586 (Regex!6841) Bool)

(assert (=> start!230408 (= res!995723 (validRegex!2586 r!26197))))

(assert (=> start!230408 e!1494485))

(declare-fun e!1494486 () Bool)

(assert (=> start!230408 e!1494486))

(declare-fun tp_is_empty!10993 () Bool)

(assert (=> start!230408 tp_is_empty!10993))

(declare-fun b!2333283 () Bool)

(declare-fun tp!739631 () Bool)

(assert (=> b!2333283 (= e!1494486 tp!739631)))

(declare-fun b!2333284 () Bool)

(assert (=> b!2333284 (= e!1494486 tp_is_empty!10993)))

(declare-fun b!2333285 () Bool)

(declare-fun tp!739629 () Bool)

(declare-fun tp!739630 () Bool)

(assert (=> b!2333285 (= e!1494486 (and tp!739629 tp!739630))))

(declare-fun b!2333286 () Bool)

(declare-fun res!995724 () Bool)

(assert (=> b!2333286 (=> (not res!995724) (not e!1494485))))

(declare-fun c!13498 () C!13840)

(declare-fun nullable!1920 (Regex!6841) Bool)

(declare-fun derivativeStep!1580 (Regex!6841 C!13840) Regex!6841)

(assert (=> b!2333286 (= res!995724 (nullable!1920 (derivativeStep!1580 r!26197 c!13498)))))

(declare-fun b!2333287 () Bool)

(declare-fun res!995725 () Bool)

(assert (=> b!2333287 (=> (not res!995725) (not e!1494485))))

(assert (=> b!2333287 (= res!995725 (not (nullable!1920 r!26197)))))

(declare-fun b!2333288 () Bool)

(declare-fun tp!739627 () Bool)

(declare-fun tp!739628 () Bool)

(assert (=> b!2333288 (= e!1494486 (and tp!739627 tp!739628))))

(assert (= (and start!230408 res!995723) b!2333287))

(assert (= (and b!2333287 res!995725) b!2333286))

(assert (= (and b!2333286 res!995724) b!2333282))

(get-info :version)

(assert (= (and start!230408 ((_ is ElementMatch!6841) r!26197)) b!2333284))

(assert (= (and start!230408 ((_ is Concat!11463) r!26197)) b!2333288))

(assert (= (and start!230408 ((_ is Star!6841) r!26197)) b!2333283))

(assert (= (and start!230408 ((_ is Union!6841) r!26197)) b!2333285))

(declare-fun m!2761837 () Bool)

(assert (=> b!2333282 m!2761837))

(declare-fun m!2761839 () Bool)

(assert (=> start!230408 m!2761839))

(declare-fun m!2761841 () Bool)

(assert (=> b!2333286 m!2761841))

(assert (=> b!2333286 m!2761841))

(declare-fun m!2761843 () Bool)

(assert (=> b!2333286 m!2761843))

(declare-fun m!2761845 () Bool)

(assert (=> b!2333287 m!2761845))

(check-sat (not start!230408) tp_is_empty!10993 (not b!2333282) (not b!2333288) (not b!2333287) (not b!2333286) (not b!2333285) (not b!2333283))
(check-sat)
(get-model)

(declare-fun d!690238 () Bool)

(declare-fun nullableFct!479 (Regex!6841) Bool)

(assert (=> d!690238 (= (nullable!1920 r!26197) (nullableFct!479 r!26197))))

(declare-fun bs!459868 () Bool)

(assert (= bs!459868 d!690238))

(declare-fun m!2761849 () Bool)

(assert (=> bs!459868 m!2761849))

(assert (=> b!2333287 d!690238))

(declare-fun d!690242 () Bool)

(assert (=> d!690242 (= (nullable!1920 (derivativeStep!1580 r!26197 c!13498)) (nullableFct!479 (derivativeStep!1580 r!26197 c!13498)))))

(declare-fun bs!459869 () Bool)

(assert (= bs!459869 d!690242))

(assert (=> bs!459869 m!2761841))

(declare-fun m!2761851 () Bool)

(assert (=> bs!459869 m!2761851))

(assert (=> b!2333286 d!690242))

(declare-fun bm!139578 () Bool)

(declare-fun call!139584 () Regex!6841)

(declare-fun call!139585 () Regex!6841)

(assert (=> bm!139578 (= call!139584 call!139585)))

(declare-fun b!2333357 () Bool)

(declare-fun e!1494527 () Regex!6841)

(assert (=> b!2333357 (= e!1494527 (Concat!11463 call!139585 r!26197))))

(declare-fun b!2333358 () Bool)

(declare-fun c!370797 () Bool)

(assert (=> b!2333358 (= c!370797 ((_ is Union!6841) r!26197))))

(declare-fun e!1494529 () Regex!6841)

(declare-fun e!1494530 () Regex!6841)

(assert (=> b!2333358 (= e!1494529 e!1494530)))

(declare-fun b!2333359 () Bool)

(declare-fun e!1494528 () Regex!6841)

(assert (=> b!2333359 (= e!1494528 EmptyLang!6841)))

(declare-fun b!2333360 () Bool)

(declare-fun call!139586 () Regex!6841)

(declare-fun e!1494526 () Regex!6841)

(assert (=> b!2333360 (= e!1494526 (Union!6841 (Concat!11463 call!139584 (regTwo!14194 r!26197)) call!139586))))

(declare-fun b!2333361 () Bool)

(assert (=> b!2333361 (= e!1494529 (ite (= c!13498 (c!370767 r!26197)) EmptyExpr!6841 EmptyLang!6841))))

(declare-fun bm!139579 () Bool)

(assert (=> bm!139579 (= call!139586 (derivativeStep!1580 (ite c!370797 (regOne!14195 r!26197) (regTwo!14194 r!26197)) c!13498))))

(declare-fun bm!139580 () Bool)

(declare-fun call!139583 () Regex!6841)

(assert (=> bm!139580 (= call!139585 call!139583)))

(declare-fun d!690244 () Bool)

(declare-fun lt!862357 () Regex!6841)

(assert (=> d!690244 (validRegex!2586 lt!862357)))

(assert (=> d!690244 (= lt!862357 e!1494528)))

(declare-fun c!370799 () Bool)

(assert (=> d!690244 (= c!370799 (or ((_ is EmptyExpr!6841) r!26197) ((_ is EmptyLang!6841) r!26197)))))

(assert (=> d!690244 (validRegex!2586 r!26197)))

(assert (=> d!690244 (= (derivativeStep!1580 r!26197 c!13498) lt!862357)))

(declare-fun c!370801 () Bool)

(declare-fun bm!139581 () Bool)

(assert (=> bm!139581 (= call!139583 (derivativeStep!1580 (ite c!370797 (regTwo!14195 r!26197) (ite c!370801 (reg!7170 r!26197) (regOne!14194 r!26197))) c!13498))))

(declare-fun b!2333362 () Bool)

(assert (=> b!2333362 (= e!1494530 e!1494527)))

(assert (=> b!2333362 (= c!370801 ((_ is Star!6841) r!26197))))

(declare-fun b!2333363 () Bool)

(assert (=> b!2333363 (= e!1494526 (Union!6841 (Concat!11463 call!139584 (regTwo!14194 r!26197)) EmptyLang!6841))))

(declare-fun b!2333364 () Bool)

(assert (=> b!2333364 (= e!1494528 e!1494529)))

(declare-fun c!370798 () Bool)

(assert (=> b!2333364 (= c!370798 ((_ is ElementMatch!6841) r!26197))))

(declare-fun b!2333365 () Bool)

(declare-fun c!370800 () Bool)

(assert (=> b!2333365 (= c!370800 (nullable!1920 (regOne!14194 r!26197)))))

(assert (=> b!2333365 (= e!1494527 e!1494526)))

(declare-fun b!2333366 () Bool)

(assert (=> b!2333366 (= e!1494530 (Union!6841 call!139586 call!139583))))

(assert (= (and d!690244 c!370799) b!2333359))

(assert (= (and d!690244 (not c!370799)) b!2333364))

(assert (= (and b!2333364 c!370798) b!2333361))

(assert (= (and b!2333364 (not c!370798)) b!2333358))

(assert (= (and b!2333358 c!370797) b!2333366))

(assert (= (and b!2333358 (not c!370797)) b!2333362))

(assert (= (and b!2333362 c!370801) b!2333357))

(assert (= (and b!2333362 (not c!370801)) b!2333365))

(assert (= (and b!2333365 c!370800) b!2333360))

(assert (= (and b!2333365 (not c!370800)) b!2333363))

(assert (= (or b!2333360 b!2333363) bm!139578))

(assert (= (or b!2333357 bm!139578) bm!139580))

(assert (= (or b!2333366 bm!139580) bm!139581))

(assert (= (or b!2333366 b!2333360) bm!139579))

(declare-fun m!2761863 () Bool)

(assert (=> bm!139579 m!2761863))

(declare-fun m!2761865 () Bool)

(assert (=> d!690244 m!2761865))

(assert (=> d!690244 m!2761839))

(declare-fun m!2761867 () Bool)

(assert (=> bm!139581 m!2761867))

(declare-fun m!2761869 () Bool)

(assert (=> b!2333365 m!2761869))

(assert (=> b!2333286 d!690244))

(declare-fun b!2333414 () Bool)

(declare-fun e!1494562 () Bool)

(declare-fun e!1494565 () Bool)

(assert (=> b!2333414 (= e!1494562 e!1494565)))

(declare-fun c!370819 () Bool)

(assert (=> b!2333414 (= c!370819 ((_ is Union!6841) r!26197))))

(declare-fun b!2333415 () Bool)

(declare-fun e!1494567 () Bool)

(declare-fun call!139604 () Bool)

(assert (=> b!2333415 (= e!1494567 call!139604)))

(declare-fun b!2333416 () Bool)

(declare-fun e!1494564 () Bool)

(assert (=> b!2333416 (= e!1494564 e!1494567)))

(declare-fun res!995753 () Bool)

(assert (=> b!2333416 (=> (not res!995753) (not e!1494567))))

(declare-fun call!139602 () Bool)

(assert (=> b!2333416 (= res!995753 call!139602)))

(declare-fun bm!139597 () Bool)

(assert (=> bm!139597 (= call!139602 (validRegex!2586 (ite c!370819 (regOne!14195 r!26197) (regOne!14194 r!26197))))))

(declare-fun bm!139598 () Bool)

(declare-fun call!139603 () Bool)

(assert (=> bm!139598 (= call!139604 call!139603)))

(declare-fun b!2333417 () Bool)

(declare-fun res!995755 () Bool)

(assert (=> b!2333417 (=> res!995755 e!1494564)))

(assert (=> b!2333417 (= res!995755 (not ((_ is Concat!11463) r!26197)))))

(assert (=> b!2333417 (= e!1494565 e!1494564)))

(declare-fun b!2333418 () Bool)

(declare-fun e!1494566 () Bool)

(assert (=> b!2333418 (= e!1494566 call!139604)))

(declare-fun d!690250 () Bool)

(declare-fun res!995752 () Bool)

(declare-fun e!1494563 () Bool)

(assert (=> d!690250 (=> res!995752 e!1494563)))

(assert (=> d!690250 (= res!995752 ((_ is ElementMatch!6841) r!26197))))

(assert (=> d!690250 (= (validRegex!2586 r!26197) e!1494563)))

(declare-fun b!2333419 () Bool)

(declare-fun e!1494568 () Bool)

(assert (=> b!2333419 (= e!1494562 e!1494568)))

(declare-fun res!995754 () Bool)

(assert (=> b!2333419 (= res!995754 (not (nullable!1920 (reg!7170 r!26197))))))

(assert (=> b!2333419 (=> (not res!995754) (not e!1494568))))

(declare-fun b!2333420 () Bool)

(assert (=> b!2333420 (= e!1494563 e!1494562)))

(declare-fun c!370818 () Bool)

(assert (=> b!2333420 (= c!370818 ((_ is Star!6841) r!26197))))

(declare-fun b!2333421 () Bool)

(declare-fun res!995751 () Bool)

(assert (=> b!2333421 (=> (not res!995751) (not e!1494566))))

(assert (=> b!2333421 (= res!995751 call!139602)))

(assert (=> b!2333421 (= e!1494565 e!1494566)))

(declare-fun b!2333422 () Bool)

(assert (=> b!2333422 (= e!1494568 call!139603)))

(declare-fun bm!139599 () Bool)

(assert (=> bm!139599 (= call!139603 (validRegex!2586 (ite c!370818 (reg!7170 r!26197) (ite c!370819 (regTwo!14195 r!26197) (regTwo!14194 r!26197)))))))

(assert (= (and d!690250 (not res!995752)) b!2333420))

(assert (= (and b!2333420 c!370818) b!2333419))

(assert (= (and b!2333420 (not c!370818)) b!2333414))

(assert (= (and b!2333419 res!995754) b!2333422))

(assert (= (and b!2333414 c!370819) b!2333421))

(assert (= (and b!2333414 (not c!370819)) b!2333417))

(assert (= (and b!2333421 res!995751) b!2333418))

(assert (= (and b!2333417 (not res!995755)) b!2333416))

(assert (= (and b!2333416 res!995753) b!2333415))

(assert (= (or b!2333418 b!2333415) bm!139598))

(assert (= (or b!2333421 b!2333416) bm!139597))

(assert (= (or b!2333422 bm!139598) bm!139599))

(declare-fun m!2761877 () Bool)

(assert (=> bm!139597 m!2761877))

(declare-fun m!2761879 () Bool)

(assert (=> b!2333419 m!2761879))

(declare-fun m!2761881 () Bool)

(assert (=> bm!139599 m!2761881))

(assert (=> start!230408 d!690250))

(declare-fun b!2333483 () Bool)

(declare-fun e!1494593 () Int)

(declare-fun call!139614 () Int)

(assert (=> b!2333483 (= e!1494593 (+ 1 call!139614))))

(declare-fun b!2333484 () Bool)

(declare-fun c!370835 () Bool)

(assert (=> b!2333484 (= c!370835 ((_ is EmptyLang!6841) r!26197))))

(declare-fun e!1494592 () Int)

(assert (=> b!2333484 (= e!1494593 e!1494592)))

(declare-fun b!2333485 () Bool)

(declare-fun e!1494594 () Int)

(assert (=> b!2333485 (= e!1494594 0)))

(declare-fun b!2333486 () Bool)

(declare-fun call!139616 () Int)

(assert (=> b!2333486 (= e!1494592 (+ 1 call!139616 call!139614))))

(declare-fun d!690254 () Bool)

(declare-fun lt!862363 () Int)

(assert (=> d!690254 (>= lt!862363 0)))

(declare-fun e!1494595 () Int)

(assert (=> d!690254 (= lt!862363 e!1494595)))

(declare-fun c!370839 () Bool)

(assert (=> d!690254 (= c!370839 ((_ is ElementMatch!6841) r!26197))))

(assert (=> d!690254 (= (RegexPrimitiveSize!100 r!26197) lt!862363)))

(declare-fun b!2333487 () Bool)

(assert (=> b!2333487 (= e!1494592 0)))

(declare-fun b!2333488 () Bool)

(assert (=> b!2333488 (= e!1494594 e!1494593)))

(declare-fun c!370836 () Bool)

(assert (=> b!2333488 (= c!370836 ((_ is Star!6841) r!26197))))

(declare-fun b!2333489 () Bool)

(declare-fun e!1494591 () Int)

(assert (=> b!2333489 (= e!1494595 e!1494591)))

(declare-fun c!370837 () Bool)

(assert (=> b!2333489 (= c!370837 ((_ is Concat!11463) r!26197))))

(declare-fun bm!139609 () Bool)

(assert (=> bm!139609 (= call!139616 (RegexPrimitiveSize!100 (ite c!370837 (regOne!14194 r!26197) (regOne!14195 r!26197))))))

(declare-fun bm!139610 () Bool)

(declare-fun call!139615 () Int)

(assert (=> bm!139610 (= call!139614 call!139615)))

(declare-fun b!2333490 () Bool)

(assert (=> b!2333490 (= e!1494595 1)))

(declare-fun b!2333491 () Bool)

(declare-fun c!370838 () Bool)

(assert (=> b!2333491 (= c!370838 ((_ is EmptyExpr!6841) r!26197))))

(assert (=> b!2333491 (= e!1494591 e!1494594)))

(declare-fun bm!139611 () Bool)

(assert (=> bm!139611 (= call!139615 (RegexPrimitiveSize!100 (ite c!370837 (regTwo!14194 r!26197) (ite c!370836 (reg!7170 r!26197) (regTwo!14195 r!26197)))))))

(declare-fun b!2333492 () Bool)

(assert (=> b!2333492 (= e!1494591 (+ 1 call!139616 call!139615))))

(assert (= (and d!690254 c!370839) b!2333490))

(assert (= (and d!690254 (not c!370839)) b!2333489))

(assert (= (and b!2333489 c!370837) b!2333492))

(assert (= (and b!2333489 (not c!370837)) b!2333491))

(assert (= (and b!2333491 c!370838) b!2333485))

(assert (= (and b!2333491 (not c!370838)) b!2333488))

(assert (= (and b!2333488 c!370836) b!2333483))

(assert (= (and b!2333488 (not c!370836)) b!2333484))

(assert (= (and b!2333484 c!370835) b!2333487))

(assert (= (and b!2333484 (not c!370835)) b!2333486))

(assert (= (or b!2333483 b!2333486) bm!139610))

(assert (= (or b!2333492 bm!139610) bm!139611))

(assert (= (or b!2333492 b!2333486) bm!139609))

(declare-fun m!2761887 () Bool)

(assert (=> bm!139609 m!2761887))

(declare-fun m!2761889 () Bool)

(assert (=> bm!139611 m!2761889))

(assert (=> b!2333282 d!690254))

(declare-fun e!1494598 () Bool)

(assert (=> b!2333285 (= tp!739629 e!1494598)))

(declare-fun b!2333504 () Bool)

(declare-fun tp!739679 () Bool)

(declare-fun tp!739681 () Bool)

(assert (=> b!2333504 (= e!1494598 (and tp!739679 tp!739681))))

(declare-fun b!2333506 () Bool)

(declare-fun tp!739678 () Bool)

(declare-fun tp!739680 () Bool)

(assert (=> b!2333506 (= e!1494598 (and tp!739678 tp!739680))))

(declare-fun b!2333505 () Bool)

(declare-fun tp!739677 () Bool)

(assert (=> b!2333505 (= e!1494598 tp!739677)))

(declare-fun b!2333503 () Bool)

(assert (=> b!2333503 (= e!1494598 tp_is_empty!10993)))

(assert (= (and b!2333285 ((_ is ElementMatch!6841) (regOne!14195 r!26197))) b!2333503))

(assert (= (and b!2333285 ((_ is Concat!11463) (regOne!14195 r!26197))) b!2333504))

(assert (= (and b!2333285 ((_ is Star!6841) (regOne!14195 r!26197))) b!2333505))

(assert (= (and b!2333285 ((_ is Union!6841) (regOne!14195 r!26197))) b!2333506))

(declare-fun e!1494599 () Bool)

(assert (=> b!2333285 (= tp!739630 e!1494599)))

(declare-fun b!2333508 () Bool)

(declare-fun tp!739684 () Bool)

(declare-fun tp!739686 () Bool)

(assert (=> b!2333508 (= e!1494599 (and tp!739684 tp!739686))))

(declare-fun b!2333510 () Bool)

(declare-fun tp!739683 () Bool)

(declare-fun tp!739685 () Bool)

(assert (=> b!2333510 (= e!1494599 (and tp!739683 tp!739685))))

(declare-fun b!2333509 () Bool)

(declare-fun tp!739682 () Bool)

(assert (=> b!2333509 (= e!1494599 tp!739682)))

(declare-fun b!2333507 () Bool)

(assert (=> b!2333507 (= e!1494599 tp_is_empty!10993)))

(assert (= (and b!2333285 ((_ is ElementMatch!6841) (regTwo!14195 r!26197))) b!2333507))

(assert (= (and b!2333285 ((_ is Concat!11463) (regTwo!14195 r!26197))) b!2333508))

(assert (= (and b!2333285 ((_ is Star!6841) (regTwo!14195 r!26197))) b!2333509))

(assert (= (and b!2333285 ((_ is Union!6841) (regTwo!14195 r!26197))) b!2333510))

(declare-fun e!1494600 () Bool)

(assert (=> b!2333288 (= tp!739627 e!1494600)))

(declare-fun b!2333512 () Bool)

(declare-fun tp!739689 () Bool)

(declare-fun tp!739691 () Bool)

(assert (=> b!2333512 (= e!1494600 (and tp!739689 tp!739691))))

(declare-fun b!2333514 () Bool)

(declare-fun tp!739688 () Bool)

(declare-fun tp!739690 () Bool)

(assert (=> b!2333514 (= e!1494600 (and tp!739688 tp!739690))))

(declare-fun b!2333513 () Bool)

(declare-fun tp!739687 () Bool)

(assert (=> b!2333513 (= e!1494600 tp!739687)))

(declare-fun b!2333511 () Bool)

(assert (=> b!2333511 (= e!1494600 tp_is_empty!10993)))

(assert (= (and b!2333288 ((_ is ElementMatch!6841) (regOne!14194 r!26197))) b!2333511))

(assert (= (and b!2333288 ((_ is Concat!11463) (regOne!14194 r!26197))) b!2333512))

(assert (= (and b!2333288 ((_ is Star!6841) (regOne!14194 r!26197))) b!2333513))

(assert (= (and b!2333288 ((_ is Union!6841) (regOne!14194 r!26197))) b!2333514))

(declare-fun e!1494601 () Bool)

(assert (=> b!2333288 (= tp!739628 e!1494601)))

(declare-fun b!2333516 () Bool)

(declare-fun tp!739694 () Bool)

(declare-fun tp!739696 () Bool)

(assert (=> b!2333516 (= e!1494601 (and tp!739694 tp!739696))))

(declare-fun b!2333518 () Bool)

(declare-fun tp!739693 () Bool)

(declare-fun tp!739695 () Bool)

(assert (=> b!2333518 (= e!1494601 (and tp!739693 tp!739695))))

(declare-fun b!2333517 () Bool)

(declare-fun tp!739692 () Bool)

(assert (=> b!2333517 (= e!1494601 tp!739692)))

(declare-fun b!2333515 () Bool)

(assert (=> b!2333515 (= e!1494601 tp_is_empty!10993)))

(assert (= (and b!2333288 ((_ is ElementMatch!6841) (regTwo!14194 r!26197))) b!2333515))

(assert (= (and b!2333288 ((_ is Concat!11463) (regTwo!14194 r!26197))) b!2333516))

(assert (= (and b!2333288 ((_ is Star!6841) (regTwo!14194 r!26197))) b!2333517))

(assert (= (and b!2333288 ((_ is Union!6841) (regTwo!14194 r!26197))) b!2333518))

(declare-fun e!1494602 () Bool)

(assert (=> b!2333283 (= tp!739631 e!1494602)))

(declare-fun b!2333520 () Bool)

(declare-fun tp!739699 () Bool)

(declare-fun tp!739701 () Bool)

(assert (=> b!2333520 (= e!1494602 (and tp!739699 tp!739701))))

(declare-fun b!2333522 () Bool)

(declare-fun tp!739698 () Bool)

(declare-fun tp!739700 () Bool)

(assert (=> b!2333522 (= e!1494602 (and tp!739698 tp!739700))))

(declare-fun b!2333521 () Bool)

(declare-fun tp!739697 () Bool)

(assert (=> b!2333521 (= e!1494602 tp!739697)))

(declare-fun b!2333519 () Bool)

(assert (=> b!2333519 (= e!1494602 tp_is_empty!10993)))

(assert (= (and b!2333283 ((_ is ElementMatch!6841) (reg!7170 r!26197))) b!2333519))

(assert (= (and b!2333283 ((_ is Concat!11463) (reg!7170 r!26197))) b!2333520))

(assert (= (and b!2333283 ((_ is Star!6841) (reg!7170 r!26197))) b!2333521))

(assert (= (and b!2333283 ((_ is Union!6841) (reg!7170 r!26197))) b!2333522))

(check-sat (not b!2333504) (not bm!139609) (not bm!139581) (not b!2333520) (not bm!139599) (not b!2333508) (not bm!139611) (not bm!139597) (not b!2333522) (not b!2333518) (not b!2333510) (not b!2333521) (not b!2333517) (not b!2333516) (not b!2333513) tp_is_empty!10993 (not b!2333514) (not b!2333506) (not b!2333419) (not b!2333509) (not d!690242) (not b!2333512) (not d!690238) (not b!2333365) (not b!2333505) (not d!690244) (not bm!139579))
(check-sat)
