; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244744 () Bool)

(assert start!244744)

(declare-fun b!2509073 () Bool)

(declare-fun e!1590376 () Bool)

(declare-fun tp!802616 () Bool)

(declare-fun tp!802614 () Bool)

(assert (=> b!2509073 (= e!1590376 (and tp!802616 tp!802614))))

(declare-fun b!2509074 () Bool)

(declare-fun res!1060744 () Bool)

(declare-fun e!1590374 () Bool)

(assert (=> b!2509074 (=> (not res!1060744) (not e!1590374))))

(declare-datatypes ((C!15068 0))(
  ( (C!15069 (val!9186 Int)) )
))
(declare-datatypes ((List!29520 0))(
  ( (Nil!29420) (Cons!29420 (h!34840 C!15068) (t!211219 List!29520)) )
))
(declare-fun tl!4068 () List!29520)

(declare-datatypes ((Regex!7455 0))(
  ( (ElementMatch!7455 (c!399593 C!15068)) (Concat!12151 (regOne!15422 Regex!7455) (regTwo!15422 Regex!7455)) (EmptyExpr!7455) (Star!7455 (reg!7784 Regex!7455)) (EmptyLang!7455) (Union!7455 (regOne!15423 Regex!7455) (regTwo!15423 Regex!7455)) )
))
(declare-fun r!27340 () Regex!7455)

(declare-fun c!14016 () C!15068)

(declare-fun nullable!2372 (Regex!7455) Bool)

(declare-fun derivative!150 (Regex!7455 List!29520) Regex!7455)

(declare-fun derivativeStep!2024 (Regex!7455 C!15068) Regex!7455)

(assert (=> b!2509074 (= res!1060744 (nullable!2372 (derivative!150 (derivativeStep!2024 r!27340 c!14016) tl!4068)))))

(declare-fun b!2509075 () Bool)

(declare-fun res!1060748 () Bool)

(assert (=> b!2509075 (=> (not res!1060748) (not e!1590374))))

(assert (=> b!2509075 (= res!1060748 (not (nullable!2372 (regOne!15422 r!27340))))))

(declare-fun b!2509076 () Bool)

(declare-fun tp_is_empty!12765 () Bool)

(assert (=> b!2509076 (= e!1590376 tp_is_empty!12765)))

(declare-fun res!1060747 () Bool)

(assert (=> start!244744 (=> (not res!1060747) (not e!1590374))))

(declare-fun validRegex!3081 (Regex!7455) Bool)

(assert (=> start!244744 (= res!1060747 (validRegex!3081 r!27340))))

(assert (=> start!244744 e!1590374))

(assert (=> start!244744 e!1590376))

(assert (=> start!244744 tp_is_empty!12765))

(declare-fun e!1590373 () Bool)

(assert (=> start!244744 e!1590373))

(declare-fun b!2509077 () Bool)

(declare-fun e!1590375 () Bool)

(declare-fun matchR!3454 (Regex!7455 List!29520) Bool)

(assert (=> b!2509077 (= e!1590375 (matchR!3454 EmptyLang!7455 tl!4068))))

(declare-fun b!2509078 () Bool)

(assert (=> b!2509078 (= e!1590374 (not (validRegex!3081 (regOne!15422 r!27340))))))

(assert (=> b!2509078 (= (derivative!150 EmptyLang!7455 tl!4068) EmptyLang!7455)))

(declare-datatypes ((Unit!43159 0))(
  ( (Unit!43160) )
))
(declare-fun lt!897356 () Unit!43159)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!2 (Regex!7455 List!29520) Unit!43159)

(assert (=> b!2509078 (= lt!897356 (lemmaEmptyLangDerivativeIsAFixPoint!2 EmptyLang!7455 tl!4068))))

(assert (=> b!2509078 e!1590375))

(declare-fun res!1060746 () Bool)

(assert (=> b!2509078 (=> res!1060746 e!1590375)))

(declare-fun lt!897355 () Regex!7455)

(assert (=> b!2509078 (= res!1060746 (matchR!3454 lt!897355 tl!4068))))

(declare-fun lt!897358 () Unit!43159)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!142 (Regex!7455 Regex!7455 List!29520) Unit!43159)

(assert (=> b!2509078 (= lt!897358 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!142 lt!897355 EmptyLang!7455 tl!4068))))

(declare-fun lt!897357 () Regex!7455)

(assert (=> b!2509078 (= (matchR!3454 lt!897357 tl!4068) (matchR!3454 (derivative!150 lt!897357 tl!4068) Nil!29420))))

(declare-fun lt!897354 () Unit!43159)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!100 (Regex!7455 List!29520) Unit!43159)

(assert (=> b!2509078 (= lt!897354 (lemmaMatchRIsSameAsWholeDerivativeAndNil!100 lt!897357 tl!4068))))

(assert (=> b!2509078 (= lt!897357 (Union!7455 lt!897355 EmptyLang!7455))))

(assert (=> b!2509078 (= lt!897355 (Concat!12151 (derivativeStep!2024 (regOne!15422 r!27340) c!14016) (regTwo!15422 r!27340)))))

(declare-fun b!2509079 () Bool)

(declare-fun tp!802618 () Bool)

(assert (=> b!2509079 (= e!1590373 (and tp_is_empty!12765 tp!802618))))

(declare-fun b!2509080 () Bool)

(declare-fun tp!802613 () Bool)

(assert (=> b!2509080 (= e!1590376 tp!802613)))

(declare-fun b!2509081 () Bool)

(declare-fun tp!802615 () Bool)

(declare-fun tp!802617 () Bool)

(assert (=> b!2509081 (= e!1590376 (and tp!802615 tp!802617))))

(declare-fun b!2509082 () Bool)

(declare-fun res!1060745 () Bool)

(assert (=> b!2509082 (=> (not res!1060745) (not e!1590374))))

(get-info :version)

(assert (=> b!2509082 (= res!1060745 (and (not ((_ is EmptyExpr!7455) r!27340)) (not ((_ is EmptyLang!7455) r!27340)) (not ((_ is ElementMatch!7455) r!27340)) (not ((_ is Union!7455) r!27340)) (not ((_ is Star!7455) r!27340))))))

(assert (= (and start!244744 res!1060747) b!2509074))

(assert (= (and b!2509074 res!1060744) b!2509082))

(assert (= (and b!2509082 res!1060745) b!2509075))

(assert (= (and b!2509075 res!1060748) b!2509078))

(assert (= (and b!2509078 (not res!1060746)) b!2509077))

(assert (= (and start!244744 ((_ is ElementMatch!7455) r!27340)) b!2509076))

(assert (= (and start!244744 ((_ is Concat!12151) r!27340)) b!2509073))

(assert (= (and start!244744 ((_ is Star!7455) r!27340)) b!2509080))

(assert (= (and start!244744 ((_ is Union!7455) r!27340)) b!2509081))

(assert (= (and start!244744 ((_ is Cons!29420) tl!4068)) b!2509079))

(declare-fun m!2868565 () Bool)

(assert (=> b!2509074 m!2868565))

(assert (=> b!2509074 m!2868565))

(declare-fun m!2868567 () Bool)

(assert (=> b!2509074 m!2868567))

(assert (=> b!2509074 m!2868567))

(declare-fun m!2868569 () Bool)

(assert (=> b!2509074 m!2868569))

(declare-fun m!2868571 () Bool)

(assert (=> b!2509078 m!2868571))

(declare-fun m!2868573 () Bool)

(assert (=> b!2509078 m!2868573))

(declare-fun m!2868575 () Bool)

(assert (=> b!2509078 m!2868575))

(assert (=> b!2509078 m!2868571))

(declare-fun m!2868577 () Bool)

(assert (=> b!2509078 m!2868577))

(declare-fun m!2868579 () Bool)

(assert (=> b!2509078 m!2868579))

(declare-fun m!2868581 () Bool)

(assert (=> b!2509078 m!2868581))

(declare-fun m!2868583 () Bool)

(assert (=> b!2509078 m!2868583))

(declare-fun m!2868585 () Bool)

(assert (=> b!2509078 m!2868585))

(declare-fun m!2868587 () Bool)

(assert (=> b!2509078 m!2868587))

(declare-fun m!2868589 () Bool)

(assert (=> b!2509078 m!2868589))

(declare-fun m!2868591 () Bool)

(assert (=> b!2509075 m!2868591))

(declare-fun m!2868593 () Bool)

(assert (=> start!244744 m!2868593))

(declare-fun m!2868595 () Bool)

(assert (=> b!2509077 m!2868595))

(check-sat tp_is_empty!12765 (not b!2509077) (not b!2509075) (not b!2509079) (not b!2509081) (not b!2509073) (not b!2509080) (not start!244744) (not b!2509078) (not b!2509074))
(check-sat)
(get-model)

(declare-fun bm!155501 () Bool)

(declare-fun call!155507 () Bool)

(declare-fun call!155506 () Bool)

(assert (=> bm!155501 (= call!155507 call!155506)))

(declare-fun b!2509113 () Bool)

(declare-fun e!1590402 () Bool)

(declare-fun e!1590398 () Bool)

(assert (=> b!2509113 (= e!1590402 e!1590398)))

(declare-fun res!1060759 () Bool)

(assert (=> b!2509113 (= res!1060759 (not (nullable!2372 (reg!7784 r!27340))))))

(assert (=> b!2509113 (=> (not res!1060759) (not e!1590398))))

(declare-fun b!2509114 () Bool)

(declare-fun e!1590401 () Bool)

(assert (=> b!2509114 (= e!1590402 e!1590401)))

(declare-fun c!399605 () Bool)

(assert (=> b!2509114 (= c!399605 ((_ is Union!7455) r!27340))))

(declare-fun bm!155502 () Bool)

(declare-fun c!399604 () Bool)

(assert (=> bm!155502 (= call!155506 (validRegex!3081 (ite c!399604 (reg!7784 r!27340) (ite c!399605 (regOne!15423 r!27340) (regTwo!15422 r!27340)))))))

(declare-fun b!2509115 () Bool)

(declare-fun e!1590397 () Bool)

(declare-fun e!1590400 () Bool)

(assert (=> b!2509115 (= e!1590397 e!1590400)))

(declare-fun res!1060761 () Bool)

(assert (=> b!2509115 (=> (not res!1060761) (not e!1590400))))

(declare-fun call!155508 () Bool)

(assert (=> b!2509115 (= res!1060761 call!155508)))

(declare-fun d!716405 () Bool)

(declare-fun res!1060762 () Bool)

(declare-fun e!1590399 () Bool)

(assert (=> d!716405 (=> res!1060762 e!1590399)))

(assert (=> d!716405 (= res!1060762 ((_ is ElementMatch!7455) r!27340))))

(assert (=> d!716405 (= (validRegex!3081 r!27340) e!1590399)))

(declare-fun b!2509116 () Bool)

(declare-fun res!1060760 () Bool)

(assert (=> b!2509116 (=> res!1060760 e!1590397)))

(assert (=> b!2509116 (= res!1060760 (not ((_ is Concat!12151) r!27340)))))

(assert (=> b!2509116 (= e!1590401 e!1590397)))

(declare-fun b!2509117 () Bool)

(assert (=> b!2509117 (= e!1590398 call!155506)))

(declare-fun b!2509118 () Bool)

(declare-fun e!1590403 () Bool)

(assert (=> b!2509118 (= e!1590403 call!155508)))

(declare-fun b!2509119 () Bool)

(assert (=> b!2509119 (= e!1590399 e!1590402)))

(assert (=> b!2509119 (= c!399604 ((_ is Star!7455) r!27340))))

(declare-fun b!2509120 () Bool)

(declare-fun res!1060763 () Bool)

(assert (=> b!2509120 (=> (not res!1060763) (not e!1590403))))

(assert (=> b!2509120 (= res!1060763 call!155507)))

(assert (=> b!2509120 (= e!1590401 e!1590403)))

(declare-fun bm!155503 () Bool)

(assert (=> bm!155503 (= call!155508 (validRegex!3081 (ite c!399605 (regTwo!15423 r!27340) (regOne!15422 r!27340))))))

(declare-fun b!2509121 () Bool)

(assert (=> b!2509121 (= e!1590400 call!155507)))

(assert (= (and d!716405 (not res!1060762)) b!2509119))

(assert (= (and b!2509119 c!399604) b!2509113))

(assert (= (and b!2509119 (not c!399604)) b!2509114))

(assert (= (and b!2509113 res!1060759) b!2509117))

(assert (= (and b!2509114 c!399605) b!2509120))

(assert (= (and b!2509114 (not c!399605)) b!2509116))

(assert (= (and b!2509120 res!1060763) b!2509118))

(assert (= (and b!2509116 (not res!1060760)) b!2509115))

(assert (= (and b!2509115 res!1060761) b!2509121))

(assert (= (or b!2509120 b!2509121) bm!155501))

(assert (= (or b!2509118 b!2509115) bm!155503))

(assert (= (or b!2509117 bm!155501) bm!155502))

(declare-fun m!2868597 () Bool)

(assert (=> b!2509113 m!2868597))

(declare-fun m!2868599 () Bool)

(assert (=> bm!155502 m!2868599))

(declare-fun m!2868601 () Bool)

(assert (=> bm!155503 m!2868601))

(assert (=> start!244744 d!716405))

(declare-fun d!716409 () Bool)

(declare-fun nullableFct!622 (Regex!7455) Bool)

(assert (=> d!716409 (= (nullable!2372 (derivative!150 (derivativeStep!2024 r!27340 c!14016) tl!4068)) (nullableFct!622 (derivative!150 (derivativeStep!2024 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468732 () Bool)

(assert (= bs!468732 d!716409))

(assert (=> bs!468732 m!2868567))

(declare-fun m!2868603 () Bool)

(assert (=> bs!468732 m!2868603))

(assert (=> b!2509074 d!716409))

(declare-fun d!716411 () Bool)

(declare-fun lt!897363 () Regex!7455)

(assert (=> d!716411 (validRegex!3081 lt!897363)))

(declare-fun e!1590414 () Regex!7455)

(assert (=> d!716411 (= lt!897363 e!1590414)))

(declare-fun c!399608 () Bool)

(assert (=> d!716411 (= c!399608 ((_ is Cons!29420) tl!4068))))

(assert (=> d!716411 (validRegex!3081 (derivativeStep!2024 r!27340 c!14016))))

(assert (=> d!716411 (= (derivative!150 (derivativeStep!2024 r!27340 c!14016) tl!4068) lt!897363)))

(declare-fun b!2509142 () Bool)

(assert (=> b!2509142 (= e!1590414 (derivative!150 (derivativeStep!2024 (derivativeStep!2024 r!27340 c!14016) (h!34840 tl!4068)) (t!211219 tl!4068)))))

(declare-fun b!2509143 () Bool)

(assert (=> b!2509143 (= e!1590414 (derivativeStep!2024 r!27340 c!14016))))

(assert (= (and d!716411 c!399608) b!2509142))

(assert (= (and d!716411 (not c!399608)) b!2509143))

(declare-fun m!2868605 () Bool)

(assert (=> d!716411 m!2868605))

(assert (=> d!716411 m!2868565))

(declare-fun m!2868607 () Bool)

(assert (=> d!716411 m!2868607))

(assert (=> b!2509142 m!2868565))

(declare-fun m!2868609 () Bool)

(assert (=> b!2509142 m!2868609))

(assert (=> b!2509142 m!2868609))

(declare-fun m!2868611 () Bool)

(assert (=> b!2509142 m!2868611))

(assert (=> b!2509074 d!716411))

(declare-fun b!2509204 () Bool)

(declare-fun e!1590445 () Regex!7455)

(assert (=> b!2509204 (= e!1590445 EmptyLang!7455)))

(declare-fun b!2509205 () Bool)

(declare-fun e!1590446 () Regex!7455)

(assert (=> b!2509205 (= e!1590445 e!1590446)))

(declare-fun c!399638 () Bool)

(assert (=> b!2509205 (= c!399638 ((_ is ElementMatch!7455) r!27340))))

(declare-fun b!2509206 () Bool)

(declare-fun e!1590447 () Regex!7455)

(declare-fun call!155521 () Regex!7455)

(assert (=> b!2509206 (= e!1590447 (Concat!12151 call!155521 r!27340))))

(declare-fun b!2509207 () Bool)

(assert (=> b!2509207 (= e!1590446 (ite (= c!14016 (c!399593 r!27340)) EmptyExpr!7455 EmptyLang!7455))))

(declare-fun b!2509208 () Bool)

(declare-fun e!1590448 () Regex!7455)

(assert (=> b!2509208 (= e!1590448 e!1590447)))

(declare-fun c!399636 () Bool)

(assert (=> b!2509208 (= c!399636 ((_ is Star!7455) r!27340))))

(declare-fun b!2509209 () Bool)

(declare-fun c!399635 () Bool)

(assert (=> b!2509209 (= c!399635 ((_ is Union!7455) r!27340))))

(assert (=> b!2509209 (= e!1590446 e!1590448)))

(declare-fun call!155522 () Regex!7455)

(declare-fun b!2509210 () Bool)

(declare-fun e!1590449 () Regex!7455)

(declare-fun call!155523 () Regex!7455)

(assert (=> b!2509210 (= e!1590449 (Union!7455 (Concat!12151 call!155522 (regTwo!15422 r!27340)) call!155523))))

(declare-fun bm!155515 () Bool)

(declare-fun call!155520 () Regex!7455)

(assert (=> bm!155515 (= call!155521 call!155520)))

(declare-fun b!2509211 () Bool)

(assert (=> b!2509211 (= e!1590449 (Union!7455 (Concat!12151 call!155522 (regTwo!15422 r!27340)) EmptyLang!7455))))

(declare-fun bm!155516 () Bool)

(assert (=> bm!155516 (= call!155522 call!155521)))

(declare-fun d!716413 () Bool)

(declare-fun lt!897372 () Regex!7455)

(assert (=> d!716413 (validRegex!3081 lt!897372)))

(assert (=> d!716413 (= lt!897372 e!1590445)))

(declare-fun c!399637 () Bool)

(assert (=> d!716413 (= c!399637 (or ((_ is EmptyExpr!7455) r!27340) ((_ is EmptyLang!7455) r!27340)))))

(assert (=> d!716413 (validRegex!3081 r!27340)))

(assert (=> d!716413 (= (derivativeStep!2024 r!27340 c!14016) lt!897372)))

(declare-fun bm!155517 () Bool)

(assert (=> bm!155517 (= call!155523 (derivativeStep!2024 (ite c!399635 (regOne!15423 r!27340) (regTwo!15422 r!27340)) c!14016))))

(declare-fun b!2509212 () Bool)

(declare-fun c!399639 () Bool)

(assert (=> b!2509212 (= c!399639 (nullable!2372 (regOne!15422 r!27340)))))

(assert (=> b!2509212 (= e!1590447 e!1590449)))

(declare-fun b!2509213 () Bool)

(assert (=> b!2509213 (= e!1590448 (Union!7455 call!155523 call!155520))))

(declare-fun bm!155518 () Bool)

(assert (=> bm!155518 (= call!155520 (derivativeStep!2024 (ite c!399635 (regTwo!15423 r!27340) (ite c!399636 (reg!7784 r!27340) (regOne!15422 r!27340))) c!14016))))

(assert (= (and d!716413 c!399637) b!2509204))

(assert (= (and d!716413 (not c!399637)) b!2509205))

(assert (= (and b!2509205 c!399638) b!2509207))

(assert (= (and b!2509205 (not c!399638)) b!2509209))

(assert (= (and b!2509209 c!399635) b!2509213))

(assert (= (and b!2509209 (not c!399635)) b!2509208))

(assert (= (and b!2509208 c!399636) b!2509206))

(assert (= (and b!2509208 (not c!399636)) b!2509212))

(assert (= (and b!2509212 c!399639) b!2509210))

(assert (= (and b!2509212 (not c!399639)) b!2509211))

(assert (= (or b!2509210 b!2509211) bm!155516))

(assert (= (or b!2509206 bm!155516) bm!155515))

(assert (= (or b!2509213 bm!155515) bm!155518))

(assert (= (or b!2509213 b!2509210) bm!155517))

(declare-fun m!2868639 () Bool)

(assert (=> d!716413 m!2868639))

(assert (=> d!716413 m!2868593))

(declare-fun m!2868641 () Bool)

(assert (=> bm!155517 m!2868641))

(assert (=> b!2509212 m!2868591))

(declare-fun m!2868643 () Bool)

(assert (=> bm!155518 m!2868643))

(assert (=> b!2509074 d!716413))

(declare-fun d!716421 () Bool)

(assert (=> d!716421 (= (nullable!2372 (regOne!15422 r!27340)) (nullableFct!622 (regOne!15422 r!27340)))))

(declare-fun bs!468734 () Bool)

(assert (= bs!468734 d!716421))

(declare-fun m!2868645 () Bool)

(assert (=> bs!468734 m!2868645))

(assert (=> b!2509075 d!716421))

(declare-fun b!2509214 () Bool)

(declare-fun e!1590450 () Regex!7455)

(assert (=> b!2509214 (= e!1590450 EmptyLang!7455)))

(declare-fun b!2509215 () Bool)

(declare-fun e!1590451 () Regex!7455)

(assert (=> b!2509215 (= e!1590450 e!1590451)))

(declare-fun c!399643 () Bool)

(assert (=> b!2509215 (= c!399643 ((_ is ElementMatch!7455) (regOne!15422 r!27340)))))

(declare-fun b!2509216 () Bool)

(declare-fun e!1590452 () Regex!7455)

(declare-fun call!155529 () Regex!7455)

(assert (=> b!2509216 (= e!1590452 (Concat!12151 call!155529 (regOne!15422 r!27340)))))

(declare-fun b!2509217 () Bool)

(assert (=> b!2509217 (= e!1590451 (ite (= c!14016 (c!399593 (regOne!15422 r!27340))) EmptyExpr!7455 EmptyLang!7455))))

(declare-fun b!2509218 () Bool)

(declare-fun e!1590453 () Regex!7455)

(assert (=> b!2509218 (= e!1590453 e!1590452)))

(declare-fun c!399641 () Bool)

(assert (=> b!2509218 (= c!399641 ((_ is Star!7455) (regOne!15422 r!27340)))))

(declare-fun b!2509219 () Bool)

(declare-fun c!399640 () Bool)

(assert (=> b!2509219 (= c!399640 ((_ is Union!7455) (regOne!15422 r!27340)))))

(assert (=> b!2509219 (= e!1590451 e!1590453)))

(declare-fun call!155531 () Regex!7455)

(declare-fun call!155530 () Regex!7455)

(declare-fun b!2509220 () Bool)

(declare-fun e!1590454 () Regex!7455)

(assert (=> b!2509220 (= e!1590454 (Union!7455 (Concat!12151 call!155530 (regTwo!15422 (regOne!15422 r!27340))) call!155531))))

(declare-fun bm!155523 () Bool)

(declare-fun call!155528 () Regex!7455)

(assert (=> bm!155523 (= call!155529 call!155528)))

(declare-fun b!2509221 () Bool)

(assert (=> b!2509221 (= e!1590454 (Union!7455 (Concat!12151 call!155530 (regTwo!15422 (regOne!15422 r!27340))) EmptyLang!7455))))

(declare-fun bm!155524 () Bool)

(assert (=> bm!155524 (= call!155530 call!155529)))

(declare-fun d!716423 () Bool)

(declare-fun lt!897373 () Regex!7455)

(assert (=> d!716423 (validRegex!3081 lt!897373)))

(assert (=> d!716423 (= lt!897373 e!1590450)))

(declare-fun c!399642 () Bool)

(assert (=> d!716423 (= c!399642 (or ((_ is EmptyExpr!7455) (regOne!15422 r!27340)) ((_ is EmptyLang!7455) (regOne!15422 r!27340))))))

(assert (=> d!716423 (validRegex!3081 (regOne!15422 r!27340))))

(assert (=> d!716423 (= (derivativeStep!2024 (regOne!15422 r!27340) c!14016) lt!897373)))

(declare-fun bm!155525 () Bool)

(assert (=> bm!155525 (= call!155531 (derivativeStep!2024 (ite c!399640 (regOne!15423 (regOne!15422 r!27340)) (regTwo!15422 (regOne!15422 r!27340))) c!14016))))

(declare-fun b!2509222 () Bool)

(declare-fun c!399644 () Bool)

(assert (=> b!2509222 (= c!399644 (nullable!2372 (regOne!15422 (regOne!15422 r!27340))))))

(assert (=> b!2509222 (= e!1590452 e!1590454)))

(declare-fun b!2509223 () Bool)

(assert (=> b!2509223 (= e!1590453 (Union!7455 call!155531 call!155528))))

(declare-fun bm!155526 () Bool)

(assert (=> bm!155526 (= call!155528 (derivativeStep!2024 (ite c!399640 (regTwo!15423 (regOne!15422 r!27340)) (ite c!399641 (reg!7784 (regOne!15422 r!27340)) (regOne!15422 (regOne!15422 r!27340)))) c!14016))))

(assert (= (and d!716423 c!399642) b!2509214))

(assert (= (and d!716423 (not c!399642)) b!2509215))

(assert (= (and b!2509215 c!399643) b!2509217))

(assert (= (and b!2509215 (not c!399643)) b!2509219))

(assert (= (and b!2509219 c!399640) b!2509223))

(assert (= (and b!2509219 (not c!399640)) b!2509218))

(assert (= (and b!2509218 c!399641) b!2509216))

(assert (= (and b!2509218 (not c!399641)) b!2509222))

(assert (= (and b!2509222 c!399644) b!2509220))

(assert (= (and b!2509222 (not c!399644)) b!2509221))

(assert (= (or b!2509220 b!2509221) bm!155524))

(assert (= (or b!2509216 bm!155524) bm!155523))

(assert (= (or b!2509223 bm!155523) bm!155526))

(assert (= (or b!2509223 b!2509220) bm!155525))

(declare-fun m!2868647 () Bool)

(assert (=> d!716423 m!2868647))

(assert (=> d!716423 m!2868577))

(declare-fun m!2868649 () Bool)

(assert (=> bm!155525 m!2868649))

(declare-fun m!2868651 () Bool)

(assert (=> b!2509222 m!2868651))

(declare-fun m!2868653 () Bool)

(assert (=> bm!155526 m!2868653))

(assert (=> b!2509078 d!716423))

(declare-fun d!716425 () Bool)

(declare-fun lt!897374 () Regex!7455)

(assert (=> d!716425 (validRegex!3081 lt!897374)))

(declare-fun e!1590455 () Regex!7455)

(assert (=> d!716425 (= lt!897374 e!1590455)))

(declare-fun c!399645 () Bool)

(assert (=> d!716425 (= c!399645 ((_ is Cons!29420) tl!4068))))

(assert (=> d!716425 (validRegex!3081 lt!897357)))

(assert (=> d!716425 (= (derivative!150 lt!897357 tl!4068) lt!897374)))

(declare-fun b!2509224 () Bool)

(assert (=> b!2509224 (= e!1590455 (derivative!150 (derivativeStep!2024 lt!897357 (h!34840 tl!4068)) (t!211219 tl!4068)))))

(declare-fun b!2509225 () Bool)

(assert (=> b!2509225 (= e!1590455 lt!897357)))

(assert (= (and d!716425 c!399645) b!2509224))

(assert (= (and d!716425 (not c!399645)) b!2509225))

(declare-fun m!2868655 () Bool)

(assert (=> d!716425 m!2868655))

(declare-fun m!2868657 () Bool)

(assert (=> d!716425 m!2868657))

(declare-fun m!2868659 () Bool)

(assert (=> b!2509224 m!2868659))

(assert (=> b!2509224 m!2868659))

(declare-fun m!2868661 () Bool)

(assert (=> b!2509224 m!2868661))

(assert (=> b!2509078 d!716425))

(declare-fun b!2509319 () Bool)

(declare-fun res!1060829 () Bool)

(declare-fun e!1590516 () Bool)

(assert (=> b!2509319 (=> res!1060829 e!1590516)))

(declare-fun isEmpty!16878 (List!29520) Bool)

(declare-fun tail!4001 (List!29520) List!29520)

(assert (=> b!2509319 (= res!1060829 (not (isEmpty!16878 (tail!4001 Nil!29420))))))

(declare-fun b!2509320 () Bool)

(declare-fun e!1590513 () Bool)

(declare-fun head!5724 (List!29520) C!15068)

(assert (=> b!2509320 (= e!1590513 (= (head!5724 Nil!29420) (c!399593 (derivative!150 lt!897357 tl!4068))))))

(declare-fun b!2509321 () Bool)

(declare-fun e!1590510 () Bool)

(declare-fun lt!897382 () Bool)

(assert (=> b!2509321 (= e!1590510 (not lt!897382))))

(declare-fun b!2509322 () Bool)

(declare-fun e!1590514 () Bool)

(declare-fun call!155556 () Bool)

(assert (=> b!2509322 (= e!1590514 (= lt!897382 call!155556))))

(declare-fun b!2509323 () Bool)

(declare-fun res!1060833 () Bool)

(assert (=> b!2509323 (=> (not res!1060833) (not e!1590513))))

(assert (=> b!2509323 (= res!1060833 (isEmpty!16878 (tail!4001 Nil!29420)))))

(declare-fun b!2509324 () Bool)

(declare-fun res!1060834 () Bool)

(declare-fun e!1590515 () Bool)

(assert (=> b!2509324 (=> res!1060834 e!1590515)))

(assert (=> b!2509324 (= res!1060834 e!1590513)))

(declare-fun res!1060828 () Bool)

(assert (=> b!2509324 (=> (not res!1060828) (not e!1590513))))

(assert (=> b!2509324 (= res!1060828 lt!897382)))

(declare-fun b!2509325 () Bool)

(assert (=> b!2509325 (= e!1590516 (not (= (head!5724 Nil!29420) (c!399593 (derivative!150 lt!897357 tl!4068)))))))

(declare-fun b!2509327 () Bool)

(declare-fun res!1060827 () Bool)

(assert (=> b!2509327 (=> (not res!1060827) (not e!1590513))))

(assert (=> b!2509327 (= res!1060827 (not call!155556))))

(declare-fun b!2509328 () Bool)

(declare-fun e!1590511 () Bool)

(assert (=> b!2509328 (= e!1590511 e!1590516)))

(declare-fun res!1060831 () Bool)

(assert (=> b!2509328 (=> res!1060831 e!1590516)))

(assert (=> b!2509328 (= res!1060831 call!155556)))

(declare-fun bm!155551 () Bool)

(assert (=> bm!155551 (= call!155556 (isEmpty!16878 Nil!29420))))

(declare-fun b!2509329 () Bool)

(assert (=> b!2509329 (= e!1590515 e!1590511)))

(declare-fun res!1060832 () Bool)

(assert (=> b!2509329 (=> (not res!1060832) (not e!1590511))))

(assert (=> b!2509329 (= res!1060832 (not lt!897382))))

(declare-fun b!2509330 () Bool)

(declare-fun res!1060830 () Bool)

(assert (=> b!2509330 (=> res!1060830 e!1590515)))

(assert (=> b!2509330 (= res!1060830 (not ((_ is ElementMatch!7455) (derivative!150 lt!897357 tl!4068))))))

(assert (=> b!2509330 (= e!1590510 e!1590515)))

(declare-fun b!2509331 () Bool)

(declare-fun e!1590512 () Bool)

(assert (=> b!2509331 (= e!1590512 (matchR!3454 (derivativeStep!2024 (derivative!150 lt!897357 tl!4068) (head!5724 Nil!29420)) (tail!4001 Nil!29420)))))

(declare-fun b!2509332 () Bool)

(assert (=> b!2509332 (= e!1590514 e!1590510)))

(declare-fun c!399674 () Bool)

(assert (=> b!2509332 (= c!399674 ((_ is EmptyLang!7455) (derivative!150 lt!897357 tl!4068)))))

(declare-fun d!716427 () Bool)

(assert (=> d!716427 e!1590514))

(declare-fun c!399673 () Bool)

(assert (=> d!716427 (= c!399673 ((_ is EmptyExpr!7455) (derivative!150 lt!897357 tl!4068)))))

(assert (=> d!716427 (= lt!897382 e!1590512)))

(declare-fun c!399675 () Bool)

(assert (=> d!716427 (= c!399675 (isEmpty!16878 Nil!29420))))

(assert (=> d!716427 (validRegex!3081 (derivative!150 lt!897357 tl!4068))))

(assert (=> d!716427 (= (matchR!3454 (derivative!150 lt!897357 tl!4068) Nil!29420) lt!897382)))

(declare-fun b!2509326 () Bool)

(assert (=> b!2509326 (= e!1590512 (nullable!2372 (derivative!150 lt!897357 tl!4068)))))

(assert (= (and d!716427 c!399675) b!2509326))

(assert (= (and d!716427 (not c!399675)) b!2509331))

(assert (= (and d!716427 c!399673) b!2509322))

(assert (= (and d!716427 (not c!399673)) b!2509332))

(assert (= (and b!2509332 c!399674) b!2509321))

(assert (= (and b!2509332 (not c!399674)) b!2509330))

(assert (= (and b!2509330 (not res!1060830)) b!2509324))

(assert (= (and b!2509324 res!1060828) b!2509327))

(assert (= (and b!2509327 res!1060827) b!2509323))

(assert (= (and b!2509323 res!1060833) b!2509320))

(assert (= (and b!2509324 (not res!1060834)) b!2509329))

(assert (= (and b!2509329 res!1060832) b!2509328))

(assert (= (and b!2509328 (not res!1060831)) b!2509319))

(assert (= (and b!2509319 (not res!1060829)) b!2509325))

(assert (= (or b!2509322 b!2509327 b!2509328) bm!155551))

(assert (=> b!2509326 m!2868571))

(declare-fun m!2868707 () Bool)

(assert (=> b!2509326 m!2868707))

(declare-fun m!2868709 () Bool)

(assert (=> b!2509319 m!2868709))

(assert (=> b!2509319 m!2868709))

(declare-fun m!2868711 () Bool)

(assert (=> b!2509319 m!2868711))

(declare-fun m!2868713 () Bool)

(assert (=> bm!155551 m!2868713))

(declare-fun m!2868715 () Bool)

(assert (=> b!2509325 m!2868715))

(assert (=> b!2509331 m!2868715))

(assert (=> b!2509331 m!2868571))

(assert (=> b!2509331 m!2868715))

(declare-fun m!2868717 () Bool)

(assert (=> b!2509331 m!2868717))

(assert (=> b!2509331 m!2868709))

(assert (=> b!2509331 m!2868717))

(assert (=> b!2509331 m!2868709))

(declare-fun m!2868719 () Bool)

(assert (=> b!2509331 m!2868719))

(assert (=> b!2509320 m!2868715))

(assert (=> b!2509323 m!2868709))

(assert (=> b!2509323 m!2868709))

(assert (=> b!2509323 m!2868711))

(assert (=> d!716427 m!2868713))

(assert (=> d!716427 m!2868571))

(declare-fun m!2868721 () Bool)

(assert (=> d!716427 m!2868721))

(assert (=> b!2509078 d!716427))

(declare-fun b!2509333 () Bool)

(declare-fun res!1060837 () Bool)

(declare-fun e!1590523 () Bool)

(assert (=> b!2509333 (=> res!1060837 e!1590523)))

(assert (=> b!2509333 (= res!1060837 (not (isEmpty!16878 (tail!4001 tl!4068))))))

(declare-fun b!2509334 () Bool)

(declare-fun e!1590520 () Bool)

(assert (=> b!2509334 (= e!1590520 (= (head!5724 tl!4068) (c!399593 lt!897357)))))

(declare-fun b!2509335 () Bool)

(declare-fun e!1590517 () Bool)

(declare-fun lt!897383 () Bool)

(assert (=> b!2509335 (= e!1590517 (not lt!897383))))

(declare-fun b!2509336 () Bool)

(declare-fun e!1590521 () Bool)

(declare-fun call!155557 () Bool)

(assert (=> b!2509336 (= e!1590521 (= lt!897383 call!155557))))

(declare-fun b!2509337 () Bool)

(declare-fun res!1060841 () Bool)

(assert (=> b!2509337 (=> (not res!1060841) (not e!1590520))))

(assert (=> b!2509337 (= res!1060841 (isEmpty!16878 (tail!4001 tl!4068)))))

(declare-fun b!2509338 () Bool)

(declare-fun res!1060842 () Bool)

(declare-fun e!1590522 () Bool)

(assert (=> b!2509338 (=> res!1060842 e!1590522)))

(assert (=> b!2509338 (= res!1060842 e!1590520)))

(declare-fun res!1060836 () Bool)

(assert (=> b!2509338 (=> (not res!1060836) (not e!1590520))))

(assert (=> b!2509338 (= res!1060836 lt!897383)))

(declare-fun b!2509339 () Bool)

(assert (=> b!2509339 (= e!1590523 (not (= (head!5724 tl!4068) (c!399593 lt!897357))))))

(declare-fun b!2509341 () Bool)

(declare-fun res!1060835 () Bool)

(assert (=> b!2509341 (=> (not res!1060835) (not e!1590520))))

(assert (=> b!2509341 (= res!1060835 (not call!155557))))

(declare-fun b!2509342 () Bool)

(declare-fun e!1590518 () Bool)

(assert (=> b!2509342 (= e!1590518 e!1590523)))

(declare-fun res!1060839 () Bool)

(assert (=> b!2509342 (=> res!1060839 e!1590523)))

(assert (=> b!2509342 (= res!1060839 call!155557)))

(declare-fun bm!155552 () Bool)

(assert (=> bm!155552 (= call!155557 (isEmpty!16878 tl!4068))))

(declare-fun b!2509343 () Bool)

(assert (=> b!2509343 (= e!1590522 e!1590518)))

(declare-fun res!1060840 () Bool)

(assert (=> b!2509343 (=> (not res!1060840) (not e!1590518))))

(assert (=> b!2509343 (= res!1060840 (not lt!897383))))

(declare-fun b!2509344 () Bool)

(declare-fun res!1060838 () Bool)

(assert (=> b!2509344 (=> res!1060838 e!1590522)))

(assert (=> b!2509344 (= res!1060838 (not ((_ is ElementMatch!7455) lt!897357)))))

(assert (=> b!2509344 (= e!1590517 e!1590522)))

(declare-fun b!2509345 () Bool)

(declare-fun e!1590519 () Bool)

(assert (=> b!2509345 (= e!1590519 (matchR!3454 (derivativeStep!2024 lt!897357 (head!5724 tl!4068)) (tail!4001 tl!4068)))))

(declare-fun b!2509346 () Bool)

(assert (=> b!2509346 (= e!1590521 e!1590517)))

(declare-fun c!399677 () Bool)

(assert (=> b!2509346 (= c!399677 ((_ is EmptyLang!7455) lt!897357))))

(declare-fun d!716443 () Bool)

(assert (=> d!716443 e!1590521))

(declare-fun c!399676 () Bool)

(assert (=> d!716443 (= c!399676 ((_ is EmptyExpr!7455) lt!897357))))

(assert (=> d!716443 (= lt!897383 e!1590519)))

(declare-fun c!399678 () Bool)

(assert (=> d!716443 (= c!399678 (isEmpty!16878 tl!4068))))

(assert (=> d!716443 (validRegex!3081 lt!897357)))

(assert (=> d!716443 (= (matchR!3454 lt!897357 tl!4068) lt!897383)))

(declare-fun b!2509340 () Bool)

(assert (=> b!2509340 (= e!1590519 (nullable!2372 lt!897357))))

(assert (= (and d!716443 c!399678) b!2509340))

(assert (= (and d!716443 (not c!399678)) b!2509345))

(assert (= (and d!716443 c!399676) b!2509336))

(assert (= (and d!716443 (not c!399676)) b!2509346))

(assert (= (and b!2509346 c!399677) b!2509335))

(assert (= (and b!2509346 (not c!399677)) b!2509344))

(assert (= (and b!2509344 (not res!1060838)) b!2509338))

(assert (= (and b!2509338 res!1060836) b!2509341))

(assert (= (and b!2509341 res!1060835) b!2509337))

(assert (= (and b!2509337 res!1060841) b!2509334))

(assert (= (and b!2509338 (not res!1060842)) b!2509343))

(assert (= (and b!2509343 res!1060840) b!2509342))

(assert (= (and b!2509342 (not res!1060839)) b!2509333))

(assert (= (and b!2509333 (not res!1060837)) b!2509339))

(assert (= (or b!2509336 b!2509341 b!2509342) bm!155552))

(declare-fun m!2868723 () Bool)

(assert (=> b!2509340 m!2868723))

(declare-fun m!2868725 () Bool)

(assert (=> b!2509333 m!2868725))

(assert (=> b!2509333 m!2868725))

(declare-fun m!2868727 () Bool)

(assert (=> b!2509333 m!2868727))

(declare-fun m!2868729 () Bool)

(assert (=> bm!155552 m!2868729))

(declare-fun m!2868731 () Bool)

(assert (=> b!2509339 m!2868731))

(assert (=> b!2509345 m!2868731))

(assert (=> b!2509345 m!2868731))

(declare-fun m!2868733 () Bool)

(assert (=> b!2509345 m!2868733))

(assert (=> b!2509345 m!2868725))

(assert (=> b!2509345 m!2868733))

(assert (=> b!2509345 m!2868725))

(declare-fun m!2868735 () Bool)

(assert (=> b!2509345 m!2868735))

(assert (=> b!2509334 m!2868731))

(assert (=> b!2509337 m!2868725))

(assert (=> b!2509337 m!2868725))

(assert (=> b!2509337 m!2868727))

(assert (=> d!716443 m!2868729))

(assert (=> d!716443 m!2868657))

(assert (=> b!2509078 d!716443))

(declare-fun d!716445 () Bool)

(assert (=> d!716445 (= (derivative!150 EmptyLang!7455 tl!4068) EmptyLang!7455)))

(declare-fun lt!897390 () Unit!43159)

(declare-fun choose!14834 (Regex!7455 List!29520) Unit!43159)

(assert (=> d!716445 (= lt!897390 (choose!14834 EmptyLang!7455 tl!4068))))

(assert (=> d!716445 (= EmptyLang!7455 EmptyLang!7455)))

(assert (=> d!716445 (= (lemmaEmptyLangDerivativeIsAFixPoint!2 EmptyLang!7455 tl!4068) lt!897390)))

(declare-fun bs!468737 () Bool)

(assert (= bs!468737 d!716445))

(assert (=> bs!468737 m!2868575))

(declare-fun m!2868755 () Bool)

(assert (=> bs!468737 m!2868755))

(assert (=> b!2509078 d!716445))

(declare-fun b!2509361 () Bool)

(declare-fun res!1060853 () Bool)

(declare-fun e!1590537 () Bool)

(assert (=> b!2509361 (=> res!1060853 e!1590537)))

(assert (=> b!2509361 (= res!1060853 (not (isEmpty!16878 (tail!4001 tl!4068))))))

(declare-fun b!2509362 () Bool)

(declare-fun e!1590534 () Bool)

(assert (=> b!2509362 (= e!1590534 (= (head!5724 tl!4068) (c!399593 lt!897355)))))

(declare-fun b!2509363 () Bool)

(declare-fun e!1590531 () Bool)

(declare-fun lt!897391 () Bool)

(assert (=> b!2509363 (= e!1590531 (not lt!897391))))

(declare-fun b!2509364 () Bool)

(declare-fun e!1590535 () Bool)

(declare-fun call!155559 () Bool)

(assert (=> b!2509364 (= e!1590535 (= lt!897391 call!155559))))

(declare-fun b!2509365 () Bool)

(declare-fun res!1060857 () Bool)

(assert (=> b!2509365 (=> (not res!1060857) (not e!1590534))))

(assert (=> b!2509365 (= res!1060857 (isEmpty!16878 (tail!4001 tl!4068)))))

(declare-fun b!2509366 () Bool)

(declare-fun res!1060858 () Bool)

(declare-fun e!1590536 () Bool)

(assert (=> b!2509366 (=> res!1060858 e!1590536)))

(assert (=> b!2509366 (= res!1060858 e!1590534)))

(declare-fun res!1060852 () Bool)

(assert (=> b!2509366 (=> (not res!1060852) (not e!1590534))))

(assert (=> b!2509366 (= res!1060852 lt!897391)))

(declare-fun b!2509367 () Bool)

(assert (=> b!2509367 (= e!1590537 (not (= (head!5724 tl!4068) (c!399593 lt!897355))))))

(declare-fun b!2509369 () Bool)

(declare-fun res!1060851 () Bool)

(assert (=> b!2509369 (=> (not res!1060851) (not e!1590534))))

(assert (=> b!2509369 (= res!1060851 (not call!155559))))

(declare-fun b!2509370 () Bool)

(declare-fun e!1590532 () Bool)

(assert (=> b!2509370 (= e!1590532 e!1590537)))

(declare-fun res!1060855 () Bool)

(assert (=> b!2509370 (=> res!1060855 e!1590537)))

(assert (=> b!2509370 (= res!1060855 call!155559)))

(declare-fun bm!155554 () Bool)

(assert (=> bm!155554 (= call!155559 (isEmpty!16878 tl!4068))))

(declare-fun b!2509371 () Bool)

(assert (=> b!2509371 (= e!1590536 e!1590532)))

(declare-fun res!1060856 () Bool)

(assert (=> b!2509371 (=> (not res!1060856) (not e!1590532))))

(assert (=> b!2509371 (= res!1060856 (not lt!897391))))

(declare-fun b!2509372 () Bool)

(declare-fun res!1060854 () Bool)

(assert (=> b!2509372 (=> res!1060854 e!1590536)))

(assert (=> b!2509372 (= res!1060854 (not ((_ is ElementMatch!7455) lt!897355)))))

(assert (=> b!2509372 (= e!1590531 e!1590536)))

(declare-fun b!2509373 () Bool)

(declare-fun e!1590533 () Bool)

(assert (=> b!2509373 (= e!1590533 (matchR!3454 (derivativeStep!2024 lt!897355 (head!5724 tl!4068)) (tail!4001 tl!4068)))))

(declare-fun b!2509374 () Bool)

(assert (=> b!2509374 (= e!1590535 e!1590531)))

(declare-fun c!399683 () Bool)

(assert (=> b!2509374 (= c!399683 ((_ is EmptyLang!7455) lt!897355))))

(declare-fun d!716451 () Bool)

(assert (=> d!716451 e!1590535))

(declare-fun c!399682 () Bool)

(assert (=> d!716451 (= c!399682 ((_ is EmptyExpr!7455) lt!897355))))

(assert (=> d!716451 (= lt!897391 e!1590533)))

(declare-fun c!399684 () Bool)

(assert (=> d!716451 (= c!399684 (isEmpty!16878 tl!4068))))

(assert (=> d!716451 (validRegex!3081 lt!897355)))

(assert (=> d!716451 (= (matchR!3454 lt!897355 tl!4068) lt!897391)))

(declare-fun b!2509368 () Bool)

(assert (=> b!2509368 (= e!1590533 (nullable!2372 lt!897355))))

(assert (= (and d!716451 c!399684) b!2509368))

(assert (= (and d!716451 (not c!399684)) b!2509373))

(assert (= (and d!716451 c!399682) b!2509364))

(assert (= (and d!716451 (not c!399682)) b!2509374))

(assert (= (and b!2509374 c!399683) b!2509363))

(assert (= (and b!2509374 (not c!399683)) b!2509372))

(assert (= (and b!2509372 (not res!1060854)) b!2509366))

(assert (= (and b!2509366 res!1060852) b!2509369))

(assert (= (and b!2509369 res!1060851) b!2509365))

(assert (= (and b!2509365 res!1060857) b!2509362))

(assert (= (and b!2509366 (not res!1060858)) b!2509371))

(assert (= (and b!2509371 res!1060856) b!2509370))

(assert (= (and b!2509370 (not res!1060855)) b!2509361))

(assert (= (and b!2509361 (not res!1060853)) b!2509367))

(assert (= (or b!2509364 b!2509369 b!2509370) bm!155554))

(declare-fun m!2868757 () Bool)

(assert (=> b!2509368 m!2868757))

(assert (=> b!2509361 m!2868725))

(assert (=> b!2509361 m!2868725))

(assert (=> b!2509361 m!2868727))

(assert (=> bm!155554 m!2868729))

(assert (=> b!2509367 m!2868731))

(assert (=> b!2509373 m!2868731))

(assert (=> b!2509373 m!2868731))

(declare-fun m!2868759 () Bool)

(assert (=> b!2509373 m!2868759))

(assert (=> b!2509373 m!2868725))

(assert (=> b!2509373 m!2868759))

(assert (=> b!2509373 m!2868725))

(declare-fun m!2868761 () Bool)

(assert (=> b!2509373 m!2868761))

(assert (=> b!2509362 m!2868731))

(assert (=> b!2509365 m!2868725))

(assert (=> b!2509365 m!2868725))

(assert (=> b!2509365 m!2868727))

(assert (=> d!716451 m!2868729))

(declare-fun m!2868763 () Bool)

(assert (=> d!716451 m!2868763))

(assert (=> b!2509078 d!716451))

(declare-fun bm!155555 () Bool)

(declare-fun call!155561 () Bool)

(declare-fun call!155560 () Bool)

(assert (=> bm!155555 (= call!155561 call!155560)))

(declare-fun b!2509375 () Bool)

(declare-fun e!1590543 () Bool)

(declare-fun e!1590539 () Bool)

(assert (=> b!2509375 (= e!1590543 e!1590539)))

(declare-fun res!1060859 () Bool)

(assert (=> b!2509375 (= res!1060859 (not (nullable!2372 (reg!7784 (regOne!15422 r!27340)))))))

(assert (=> b!2509375 (=> (not res!1060859) (not e!1590539))))

(declare-fun b!2509376 () Bool)

(declare-fun e!1590542 () Bool)

(assert (=> b!2509376 (= e!1590543 e!1590542)))

(declare-fun c!399686 () Bool)

(assert (=> b!2509376 (= c!399686 ((_ is Union!7455) (regOne!15422 r!27340)))))

(declare-fun c!399685 () Bool)

(declare-fun bm!155556 () Bool)

(assert (=> bm!155556 (= call!155560 (validRegex!3081 (ite c!399685 (reg!7784 (regOne!15422 r!27340)) (ite c!399686 (regOne!15423 (regOne!15422 r!27340)) (regTwo!15422 (regOne!15422 r!27340))))))))

(declare-fun b!2509377 () Bool)

(declare-fun e!1590538 () Bool)

(declare-fun e!1590541 () Bool)

(assert (=> b!2509377 (= e!1590538 e!1590541)))

(declare-fun res!1060861 () Bool)

(assert (=> b!2509377 (=> (not res!1060861) (not e!1590541))))

(declare-fun call!155562 () Bool)

(assert (=> b!2509377 (= res!1060861 call!155562)))

(declare-fun d!716453 () Bool)

(declare-fun res!1060862 () Bool)

(declare-fun e!1590540 () Bool)

(assert (=> d!716453 (=> res!1060862 e!1590540)))

(assert (=> d!716453 (= res!1060862 ((_ is ElementMatch!7455) (regOne!15422 r!27340)))))

(assert (=> d!716453 (= (validRegex!3081 (regOne!15422 r!27340)) e!1590540)))

(declare-fun b!2509378 () Bool)

(declare-fun res!1060860 () Bool)

(assert (=> b!2509378 (=> res!1060860 e!1590538)))

(assert (=> b!2509378 (= res!1060860 (not ((_ is Concat!12151) (regOne!15422 r!27340))))))

(assert (=> b!2509378 (= e!1590542 e!1590538)))

(declare-fun b!2509379 () Bool)

(assert (=> b!2509379 (= e!1590539 call!155560)))

(declare-fun b!2509380 () Bool)

(declare-fun e!1590544 () Bool)

(assert (=> b!2509380 (= e!1590544 call!155562)))

(declare-fun b!2509381 () Bool)

(assert (=> b!2509381 (= e!1590540 e!1590543)))

(assert (=> b!2509381 (= c!399685 ((_ is Star!7455) (regOne!15422 r!27340)))))

(declare-fun b!2509382 () Bool)

(declare-fun res!1060863 () Bool)

(assert (=> b!2509382 (=> (not res!1060863) (not e!1590544))))

(assert (=> b!2509382 (= res!1060863 call!155561)))

(assert (=> b!2509382 (= e!1590542 e!1590544)))

(declare-fun bm!155557 () Bool)

(assert (=> bm!155557 (= call!155562 (validRegex!3081 (ite c!399686 (regTwo!15423 (regOne!15422 r!27340)) (regOne!15422 (regOne!15422 r!27340)))))))

(declare-fun b!2509383 () Bool)

(assert (=> b!2509383 (= e!1590541 call!155561)))

(assert (= (and d!716453 (not res!1060862)) b!2509381))

(assert (= (and b!2509381 c!399685) b!2509375))

(assert (= (and b!2509381 (not c!399685)) b!2509376))

(assert (= (and b!2509375 res!1060859) b!2509379))

(assert (= (and b!2509376 c!399686) b!2509382))

(assert (= (and b!2509376 (not c!399686)) b!2509378))

(assert (= (and b!2509382 res!1060863) b!2509380))

(assert (= (and b!2509378 (not res!1060860)) b!2509377))

(assert (= (and b!2509377 res!1060861) b!2509383))

(assert (= (or b!2509382 b!2509383) bm!155555))

(assert (= (or b!2509380 b!2509377) bm!155557))

(assert (= (or b!2509379 bm!155555) bm!155556))

(declare-fun m!2868767 () Bool)

(assert (=> b!2509375 m!2868767))

(declare-fun m!2868769 () Bool)

(assert (=> bm!155556 m!2868769))

(declare-fun m!2868771 () Bool)

(assert (=> bm!155557 m!2868771))

(assert (=> b!2509078 d!716453))

(declare-fun d!716457 () Bool)

(declare-fun e!1590568 () Bool)

(assert (=> d!716457 e!1590568))

(declare-fun res!1060886 () Bool)

(assert (=> d!716457 (=> res!1060886 e!1590568)))

(assert (=> d!716457 (= res!1060886 (matchR!3454 lt!897355 tl!4068))))

(declare-fun lt!897400 () Unit!43159)

(declare-fun choose!14836 (Regex!7455 Regex!7455 List!29520) Unit!43159)

(assert (=> d!716457 (= lt!897400 (choose!14836 lt!897355 EmptyLang!7455 tl!4068))))

(declare-fun e!1590567 () Bool)

(assert (=> d!716457 e!1590567))

(declare-fun res!1060885 () Bool)

(assert (=> d!716457 (=> (not res!1060885) (not e!1590567))))

(assert (=> d!716457 (= res!1060885 (validRegex!3081 lt!897355))))

(assert (=> d!716457 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!142 lt!897355 EmptyLang!7455 tl!4068) lt!897400)))

(declare-fun b!2509415 () Bool)

(assert (=> b!2509415 (= e!1590567 (validRegex!3081 EmptyLang!7455))))

(declare-fun b!2509416 () Bool)

(assert (=> b!2509416 (= e!1590568 (matchR!3454 EmptyLang!7455 tl!4068))))

(assert (= (and d!716457 res!1060885) b!2509415))

(assert (= (and d!716457 (not res!1060886)) b!2509416))

(assert (=> d!716457 m!2868585))

(declare-fun m!2868785 () Bool)

(assert (=> d!716457 m!2868785))

(assert (=> d!716457 m!2868763))

(declare-fun m!2868787 () Bool)

(assert (=> b!2509415 m!2868787))

(assert (=> b!2509416 m!2868595))

(assert (=> b!2509078 d!716457))

(declare-fun d!716463 () Bool)

(assert (=> d!716463 (= (matchR!3454 lt!897357 tl!4068) (matchR!3454 (derivative!150 lt!897357 tl!4068) Nil!29420))))

(declare-fun lt!897404 () Unit!43159)

(declare-fun choose!14837 (Regex!7455 List!29520) Unit!43159)

(assert (=> d!716463 (= lt!897404 (choose!14837 lt!897357 tl!4068))))

(assert (=> d!716463 (validRegex!3081 lt!897357)))

(assert (=> d!716463 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!100 lt!897357 tl!4068) lt!897404)))

(declare-fun bs!468739 () Bool)

(assert (= bs!468739 d!716463))

(assert (=> bs!468739 m!2868571))

(declare-fun m!2868791 () Bool)

(assert (=> bs!468739 m!2868791))

(assert (=> bs!468739 m!2868657))

(assert (=> bs!468739 m!2868581))

(assert (=> bs!468739 m!2868571))

(assert (=> bs!468739 m!2868573))

(assert (=> b!2509078 d!716463))

(declare-fun d!716465 () Bool)

(declare-fun lt!897405 () Regex!7455)

(assert (=> d!716465 (validRegex!3081 lt!897405)))

(declare-fun e!1590581 () Regex!7455)

(assert (=> d!716465 (= lt!897405 e!1590581)))

(declare-fun c!399692 () Bool)

(assert (=> d!716465 (= c!399692 ((_ is Cons!29420) tl!4068))))

(assert (=> d!716465 (validRegex!3081 EmptyLang!7455)))

(assert (=> d!716465 (= (derivative!150 EmptyLang!7455 tl!4068) lt!897405)))

(declare-fun b!2509454 () Bool)

(assert (=> b!2509454 (= e!1590581 (derivative!150 (derivativeStep!2024 EmptyLang!7455 (h!34840 tl!4068)) (t!211219 tl!4068)))))

(declare-fun b!2509455 () Bool)

(assert (=> b!2509455 (= e!1590581 EmptyLang!7455)))

(assert (= (and d!716465 c!399692) b!2509454))

(assert (= (and d!716465 (not c!399692)) b!2509455))

(declare-fun m!2868793 () Bool)

(assert (=> d!716465 m!2868793))

(assert (=> d!716465 m!2868787))

(declare-fun m!2868795 () Bool)

(assert (=> b!2509454 m!2868795))

(assert (=> b!2509454 m!2868795))

(declare-fun m!2868797 () Bool)

(assert (=> b!2509454 m!2868797))

(assert (=> b!2509078 d!716465))

(declare-fun b!2509456 () Bool)

(declare-fun res!1060891 () Bool)

(declare-fun e!1590588 () Bool)

(assert (=> b!2509456 (=> res!1060891 e!1590588)))

(assert (=> b!2509456 (= res!1060891 (not (isEmpty!16878 (tail!4001 tl!4068))))))

(declare-fun b!2509457 () Bool)

(declare-fun e!1590585 () Bool)

(assert (=> b!2509457 (= e!1590585 (= (head!5724 tl!4068) (c!399593 EmptyLang!7455)))))

(declare-fun b!2509458 () Bool)

(declare-fun e!1590582 () Bool)

(declare-fun lt!897406 () Bool)

(assert (=> b!2509458 (= e!1590582 (not lt!897406))))

(declare-fun b!2509459 () Bool)

(declare-fun e!1590586 () Bool)

(declare-fun call!155567 () Bool)

(assert (=> b!2509459 (= e!1590586 (= lt!897406 call!155567))))

(declare-fun b!2509460 () Bool)

(declare-fun res!1060895 () Bool)

(assert (=> b!2509460 (=> (not res!1060895) (not e!1590585))))

(assert (=> b!2509460 (= res!1060895 (isEmpty!16878 (tail!4001 tl!4068)))))

(declare-fun b!2509461 () Bool)

(declare-fun res!1060896 () Bool)

(declare-fun e!1590587 () Bool)

(assert (=> b!2509461 (=> res!1060896 e!1590587)))

(assert (=> b!2509461 (= res!1060896 e!1590585)))

(declare-fun res!1060890 () Bool)

(assert (=> b!2509461 (=> (not res!1060890) (not e!1590585))))

(assert (=> b!2509461 (= res!1060890 lt!897406)))

(declare-fun b!2509462 () Bool)

(assert (=> b!2509462 (= e!1590588 (not (= (head!5724 tl!4068) (c!399593 EmptyLang!7455))))))

(declare-fun b!2509464 () Bool)

(declare-fun res!1060889 () Bool)

(assert (=> b!2509464 (=> (not res!1060889) (not e!1590585))))

(assert (=> b!2509464 (= res!1060889 (not call!155567))))

(declare-fun b!2509465 () Bool)

(declare-fun e!1590583 () Bool)

(assert (=> b!2509465 (= e!1590583 e!1590588)))

(declare-fun res!1060893 () Bool)

(assert (=> b!2509465 (=> res!1060893 e!1590588)))

(assert (=> b!2509465 (= res!1060893 call!155567)))

(declare-fun bm!155562 () Bool)

(assert (=> bm!155562 (= call!155567 (isEmpty!16878 tl!4068))))

(declare-fun b!2509466 () Bool)

(assert (=> b!2509466 (= e!1590587 e!1590583)))

(declare-fun res!1060894 () Bool)

(assert (=> b!2509466 (=> (not res!1060894) (not e!1590583))))

(assert (=> b!2509466 (= res!1060894 (not lt!897406))))

(declare-fun b!2509467 () Bool)

(declare-fun res!1060892 () Bool)

(assert (=> b!2509467 (=> res!1060892 e!1590587)))

(assert (=> b!2509467 (= res!1060892 (not ((_ is ElementMatch!7455) EmptyLang!7455)))))

(assert (=> b!2509467 (= e!1590582 e!1590587)))

(declare-fun b!2509468 () Bool)

(declare-fun e!1590584 () Bool)

(assert (=> b!2509468 (= e!1590584 (matchR!3454 (derivativeStep!2024 EmptyLang!7455 (head!5724 tl!4068)) (tail!4001 tl!4068)))))

(declare-fun b!2509469 () Bool)

(assert (=> b!2509469 (= e!1590586 e!1590582)))

(declare-fun c!399694 () Bool)

(assert (=> b!2509469 (= c!399694 ((_ is EmptyLang!7455) EmptyLang!7455))))

(declare-fun d!716467 () Bool)

(assert (=> d!716467 e!1590586))

(declare-fun c!399693 () Bool)

(assert (=> d!716467 (= c!399693 ((_ is EmptyExpr!7455) EmptyLang!7455))))

(assert (=> d!716467 (= lt!897406 e!1590584)))

(declare-fun c!399695 () Bool)

(assert (=> d!716467 (= c!399695 (isEmpty!16878 tl!4068))))

(assert (=> d!716467 (validRegex!3081 EmptyLang!7455)))

(assert (=> d!716467 (= (matchR!3454 EmptyLang!7455 tl!4068) lt!897406)))

(declare-fun b!2509463 () Bool)

(assert (=> b!2509463 (= e!1590584 (nullable!2372 EmptyLang!7455))))

(assert (= (and d!716467 c!399695) b!2509463))

(assert (= (and d!716467 (not c!399695)) b!2509468))

(assert (= (and d!716467 c!399693) b!2509459))

(assert (= (and d!716467 (not c!399693)) b!2509469))

(assert (= (and b!2509469 c!399694) b!2509458))

(assert (= (and b!2509469 (not c!399694)) b!2509467))

(assert (= (and b!2509467 (not res!1060892)) b!2509461))

(assert (= (and b!2509461 res!1060890) b!2509464))

(assert (= (and b!2509464 res!1060889) b!2509460))

(assert (= (and b!2509460 res!1060895) b!2509457))

(assert (= (and b!2509461 (not res!1060896)) b!2509466))

(assert (= (and b!2509466 res!1060894) b!2509465))

(assert (= (and b!2509465 (not res!1060893)) b!2509456))

(assert (= (and b!2509456 (not res!1060891)) b!2509462))

(assert (= (or b!2509459 b!2509464 b!2509465) bm!155562))

(declare-fun m!2868799 () Bool)

(assert (=> b!2509463 m!2868799))

(assert (=> b!2509456 m!2868725))

(assert (=> b!2509456 m!2868725))

(assert (=> b!2509456 m!2868727))

(assert (=> bm!155562 m!2868729))

(assert (=> b!2509462 m!2868731))

(assert (=> b!2509468 m!2868731))

(assert (=> b!2509468 m!2868731))

(declare-fun m!2868801 () Bool)

(assert (=> b!2509468 m!2868801))

(assert (=> b!2509468 m!2868725))

(assert (=> b!2509468 m!2868801))

(assert (=> b!2509468 m!2868725))

(declare-fun m!2868803 () Bool)

(assert (=> b!2509468 m!2868803))

(assert (=> b!2509457 m!2868731))

(assert (=> b!2509460 m!2868725))

(assert (=> b!2509460 m!2868725))

(assert (=> b!2509460 m!2868727))

(assert (=> d!716467 m!2868729))

(assert (=> d!716467 m!2868787))

(assert (=> b!2509077 d!716467))

(declare-fun b!2509480 () Bool)

(declare-fun e!1590591 () Bool)

(assert (=> b!2509480 (= e!1590591 tp_is_empty!12765)))

(assert (=> b!2509081 (= tp!802615 e!1590591)))

(declare-fun b!2509481 () Bool)

(declare-fun tp!802670 () Bool)

(declare-fun tp!802669 () Bool)

(assert (=> b!2509481 (= e!1590591 (and tp!802670 tp!802669))))

(declare-fun b!2509483 () Bool)

(declare-fun tp!802668 () Bool)

(declare-fun tp!802671 () Bool)

(assert (=> b!2509483 (= e!1590591 (and tp!802668 tp!802671))))

(declare-fun b!2509482 () Bool)

(declare-fun tp!802667 () Bool)

(assert (=> b!2509482 (= e!1590591 tp!802667)))

(assert (= (and b!2509081 ((_ is ElementMatch!7455) (regOne!15423 r!27340))) b!2509480))

(assert (= (and b!2509081 ((_ is Concat!12151) (regOne!15423 r!27340))) b!2509481))

(assert (= (and b!2509081 ((_ is Star!7455) (regOne!15423 r!27340))) b!2509482))

(assert (= (and b!2509081 ((_ is Union!7455) (regOne!15423 r!27340))) b!2509483))

(declare-fun b!2509484 () Bool)

(declare-fun e!1590592 () Bool)

(assert (=> b!2509484 (= e!1590592 tp_is_empty!12765)))

(assert (=> b!2509081 (= tp!802617 e!1590592)))

(declare-fun b!2509485 () Bool)

(declare-fun tp!802675 () Bool)

(declare-fun tp!802674 () Bool)

(assert (=> b!2509485 (= e!1590592 (and tp!802675 tp!802674))))

(declare-fun b!2509487 () Bool)

(declare-fun tp!802673 () Bool)

(declare-fun tp!802676 () Bool)

(assert (=> b!2509487 (= e!1590592 (and tp!802673 tp!802676))))

(declare-fun b!2509486 () Bool)

(declare-fun tp!802672 () Bool)

(assert (=> b!2509486 (= e!1590592 tp!802672)))

(assert (= (and b!2509081 ((_ is ElementMatch!7455) (regTwo!15423 r!27340))) b!2509484))

(assert (= (and b!2509081 ((_ is Concat!12151) (regTwo!15423 r!27340))) b!2509485))

(assert (= (and b!2509081 ((_ is Star!7455) (regTwo!15423 r!27340))) b!2509486))

(assert (= (and b!2509081 ((_ is Union!7455) (regTwo!15423 r!27340))) b!2509487))

(declare-fun b!2509488 () Bool)

(declare-fun e!1590593 () Bool)

(assert (=> b!2509488 (= e!1590593 tp_is_empty!12765)))

(assert (=> b!2509080 (= tp!802613 e!1590593)))

(declare-fun b!2509489 () Bool)

(declare-fun tp!802680 () Bool)

(declare-fun tp!802679 () Bool)

(assert (=> b!2509489 (= e!1590593 (and tp!802680 tp!802679))))

(declare-fun b!2509491 () Bool)

(declare-fun tp!802678 () Bool)

(declare-fun tp!802681 () Bool)

(assert (=> b!2509491 (= e!1590593 (and tp!802678 tp!802681))))

(declare-fun b!2509490 () Bool)

(declare-fun tp!802677 () Bool)

(assert (=> b!2509490 (= e!1590593 tp!802677)))

(assert (= (and b!2509080 ((_ is ElementMatch!7455) (reg!7784 r!27340))) b!2509488))

(assert (= (and b!2509080 ((_ is Concat!12151) (reg!7784 r!27340))) b!2509489))

(assert (= (and b!2509080 ((_ is Star!7455) (reg!7784 r!27340))) b!2509490))

(assert (= (and b!2509080 ((_ is Union!7455) (reg!7784 r!27340))) b!2509491))

(declare-fun b!2509492 () Bool)

(declare-fun e!1590594 () Bool)

(assert (=> b!2509492 (= e!1590594 tp_is_empty!12765)))

(assert (=> b!2509073 (= tp!802616 e!1590594)))

(declare-fun b!2509493 () Bool)

(declare-fun tp!802685 () Bool)

(declare-fun tp!802684 () Bool)

(assert (=> b!2509493 (= e!1590594 (and tp!802685 tp!802684))))

(declare-fun b!2509495 () Bool)

(declare-fun tp!802683 () Bool)

(declare-fun tp!802686 () Bool)

(assert (=> b!2509495 (= e!1590594 (and tp!802683 tp!802686))))

(declare-fun b!2509494 () Bool)

(declare-fun tp!802682 () Bool)

(assert (=> b!2509494 (= e!1590594 tp!802682)))

(assert (= (and b!2509073 ((_ is ElementMatch!7455) (regOne!15422 r!27340))) b!2509492))

(assert (= (and b!2509073 ((_ is Concat!12151) (regOne!15422 r!27340))) b!2509493))

(assert (= (and b!2509073 ((_ is Star!7455) (regOne!15422 r!27340))) b!2509494))

(assert (= (and b!2509073 ((_ is Union!7455) (regOne!15422 r!27340))) b!2509495))

(declare-fun b!2509496 () Bool)

(declare-fun e!1590595 () Bool)

(assert (=> b!2509496 (= e!1590595 tp_is_empty!12765)))

(assert (=> b!2509073 (= tp!802614 e!1590595)))

(declare-fun b!2509497 () Bool)

(declare-fun tp!802690 () Bool)

(declare-fun tp!802689 () Bool)

(assert (=> b!2509497 (= e!1590595 (and tp!802690 tp!802689))))

(declare-fun b!2509499 () Bool)

(declare-fun tp!802688 () Bool)

(declare-fun tp!802691 () Bool)

(assert (=> b!2509499 (= e!1590595 (and tp!802688 tp!802691))))

(declare-fun b!2509498 () Bool)

(declare-fun tp!802687 () Bool)

(assert (=> b!2509498 (= e!1590595 tp!802687)))

(assert (= (and b!2509073 ((_ is ElementMatch!7455) (regTwo!15422 r!27340))) b!2509496))

(assert (= (and b!2509073 ((_ is Concat!12151) (regTwo!15422 r!27340))) b!2509497))

(assert (= (and b!2509073 ((_ is Star!7455) (regTwo!15422 r!27340))) b!2509498))

(assert (= (and b!2509073 ((_ is Union!7455) (regTwo!15422 r!27340))) b!2509499))

(declare-fun b!2509504 () Bool)

(declare-fun e!1590598 () Bool)

(declare-fun tp!802694 () Bool)

(assert (=> b!2509504 (= e!1590598 (and tp_is_empty!12765 tp!802694))))

(assert (=> b!2509079 (= tp!802618 e!1590598)))

(assert (= (and b!2509079 ((_ is Cons!29420) (t!211219 tl!4068))) b!2509504))

(check-sat (not b!2509373) (not d!716409) (not b!2509415) (not b!2509331) (not b!2509487) (not d!716467) (not b!2509483) (not b!2509482) (not b!2509495) (not b!2509224) (not b!2509222) (not b!2509468) (not d!716427) (not d!716457) (not bm!155525) (not b!2509504) (not b!2509462) (not d!716445) tp_is_empty!12765 (not bm!155518) (not bm!155562) (not b!2509333) (not d!716465) (not b!2509345) (not d!716463) (not b!2509323) (not b!2509499) (not d!716443) (not bm!155517) (not b!2509481) (not d!716413) (not b!2509489) (not b!2509485) (not d!716421) (not d!716451) (not d!716423) (not d!716411) (not b!2509367) (not bm!155502) (not bm!155554) (not b!2509498) (not b!2509362) (not b!2509497) (not bm!155552) (not b!2509142) (not bm!155503) (not b!2509361) (not d!716425) (not b!2509365) (not b!2509375) (not b!2509460) (not b!2509486) (not b!2509334) (not b!2509493) (not b!2509339) (not bm!155556) (not b!2509326) (not bm!155551) (not b!2509337) (not b!2509494) (not bm!155526) (not b!2509456) (not b!2509320) (not b!2509490) (not b!2509113) (not b!2509340) (not bm!155557) (not b!2509457) (not b!2509212) (not b!2509463) (not b!2509368) (not b!2509319) (not b!2509325) (not b!2509491) (not b!2509416) (not b!2509454))
(check-sat)
