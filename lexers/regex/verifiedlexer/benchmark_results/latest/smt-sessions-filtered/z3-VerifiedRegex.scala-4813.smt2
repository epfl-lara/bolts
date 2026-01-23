; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247432 () Bool)

(assert start!247432)

(declare-fun b!2551426 () Bool)

(declare-fun e!1612247 () Bool)

(declare-fun tp!813989 () Bool)

(declare-fun tp!813987 () Bool)

(assert (=> b!2551426 (= e!1612247 (and tp!813989 tp!813987))))

(declare-fun b!2551427 () Bool)

(declare-fun tp!813986 () Bool)

(declare-fun tp!813985 () Bool)

(assert (=> b!2551427 (= e!1612247 (and tp!813986 tp!813985))))

(declare-fun b!2551428 () Bool)

(declare-fun res!1074661 () Bool)

(declare-fun e!1612249 () Bool)

(assert (=> b!2551428 (=> (not res!1074661) (not e!1612249))))

(declare-datatypes ((C!15360 0))(
  ( (C!15361 (val!9332 Int)) )
))
(declare-datatypes ((Regex!7601 0))(
  ( (ElementMatch!7601 (c!409089 C!15360)) (Concat!12297 (regOne!15714 Regex!7601) (regTwo!15714 Regex!7601)) (EmptyExpr!7601) (Star!7601 (reg!7930 Regex!7601)) (EmptyLang!7601) (Union!7601 (regOne!15715 Regex!7601) (regTwo!15715 Regex!7601)) )
))
(declare-fun r!27340 () Regex!7601)

(get-info :version)

(assert (=> b!2551428 (= res!1074661 (and (not ((_ is EmptyExpr!7601) r!27340)) (not ((_ is EmptyLang!7601) r!27340)) (not ((_ is ElementMatch!7601) r!27340)) (not ((_ is Union!7601) r!27340)) (not ((_ is Star!7601) r!27340))))))

(declare-fun b!2551429 () Bool)

(declare-fun e!1612246 () Bool)

(declare-fun lt!903425 () Regex!7601)

(declare-datatypes ((List!29666 0))(
  ( (Nil!29566) (Cons!29566 (h!34986 C!15360) (t!211365 List!29666)) )
))
(declare-fun tl!4068 () List!29666)

(declare-fun matchR!3546 (Regex!7601 List!29666) Bool)

(assert (=> b!2551429 (= e!1612246 (matchR!3546 lt!903425 tl!4068))))

(declare-fun b!2551430 () Bool)

(declare-fun tp!813988 () Bool)

(assert (=> b!2551430 (= e!1612247 tp!813988)))

(declare-fun res!1074664 () Bool)

(assert (=> start!247432 (=> (not res!1074664) (not e!1612249))))

(declare-fun validRegex!3227 (Regex!7601) Bool)

(assert (=> start!247432 (= res!1074664 (validRegex!3227 r!27340))))

(assert (=> start!247432 e!1612249))

(assert (=> start!247432 e!1612247))

(declare-fun tp_is_empty!13057 () Bool)

(assert (=> start!247432 tp_is_empty!13057))

(declare-fun e!1612250 () Bool)

(assert (=> start!247432 e!1612250))

(declare-fun b!2551431 () Bool)

(declare-fun e!1612248 () Bool)

(assert (=> b!2551431 (= e!1612249 (not e!1612248))))

(declare-fun res!1074659 () Bool)

(assert (=> b!2551431 (=> res!1074659 e!1612248)))

(declare-fun lt!903426 () Bool)

(assert (=> b!2551431 (= res!1074659 (not lt!903426))))

(assert (=> b!2551431 e!1612246))

(declare-fun res!1074663 () Bool)

(assert (=> b!2551431 (=> res!1074663 e!1612246)))

(assert (=> b!2551431 (= res!1074663 lt!903426)))

(declare-fun lt!903424 () Regex!7601)

(assert (=> b!2551431 (= lt!903426 (matchR!3546 lt!903424 tl!4068))))

(declare-datatypes ((Unit!43387 0))(
  ( (Unit!43388) )
))
(declare-fun lt!903423 () Unit!43387)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!196 (Regex!7601 Regex!7601 List!29666) Unit!43387)

(assert (=> b!2551431 (= lt!903423 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!196 lt!903424 lt!903425 tl!4068))))

(declare-fun lt!903421 () Regex!7601)

(declare-fun derivative!296 (Regex!7601 List!29666) Regex!7601)

(assert (=> b!2551431 (= (matchR!3546 lt!903421 tl!4068) (matchR!3546 (derivative!296 lt!903421 tl!4068) Nil!29566))))

(declare-fun lt!903420 () Unit!43387)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!192 (Regex!7601 List!29666) Unit!43387)

(assert (=> b!2551431 (= lt!903420 (lemmaMatchRIsSameAsWholeDerivativeAndNil!192 lt!903421 tl!4068))))

(assert (=> b!2551431 (= lt!903421 (Union!7601 lt!903424 lt!903425))))

(declare-fun c!14016 () C!15360)

(declare-fun derivativeStep!2170 (Regex!7601 C!15360) Regex!7601)

(assert (=> b!2551431 (= lt!903425 (derivativeStep!2170 (regTwo!15714 r!27340) c!14016))))

(declare-fun lt!903422 () Regex!7601)

(assert (=> b!2551431 (= lt!903424 (Concat!12297 lt!903422 (regTwo!15714 r!27340)))))

(assert (=> b!2551431 (= lt!903422 (derivativeStep!2170 (regOne!15714 r!27340) c!14016))))

(declare-fun b!2551432 () Bool)

(declare-fun tp!813990 () Bool)

(assert (=> b!2551432 (= e!1612250 (and tp_is_empty!13057 tp!813990))))

(declare-fun b!2551433 () Bool)

(assert (=> b!2551433 (= e!1612247 tp_is_empty!13057)))

(declare-fun b!2551434 () Bool)

(declare-fun res!1074660 () Bool)

(assert (=> b!2551434 (=> (not res!1074660) (not e!1612249))))

(declare-fun nullable!2518 (Regex!7601) Bool)

(assert (=> b!2551434 (= res!1074660 (nullable!2518 (regOne!15714 r!27340)))))

(declare-fun b!2551435 () Bool)

(assert (=> b!2551435 (= e!1612248 (validRegex!3227 lt!903422))))

(declare-fun b!2551436 () Bool)

(declare-fun res!1074662 () Bool)

(assert (=> b!2551436 (=> (not res!1074662) (not e!1612249))))

(assert (=> b!2551436 (= res!1074662 (nullable!2518 (derivative!296 (derivativeStep!2170 r!27340 c!14016) tl!4068)))))

(assert (= (and start!247432 res!1074664) b!2551436))

(assert (= (and b!2551436 res!1074662) b!2551428))

(assert (= (and b!2551428 res!1074661) b!2551434))

(assert (= (and b!2551434 res!1074660) b!2551431))

(assert (= (and b!2551431 (not res!1074663)) b!2551429))

(assert (= (and b!2551431 (not res!1074659)) b!2551435))

(assert (= (and start!247432 ((_ is ElementMatch!7601) r!27340)) b!2551433))

(assert (= (and start!247432 ((_ is Concat!12297) r!27340)) b!2551426))

(assert (= (and start!247432 ((_ is Star!7601) r!27340)) b!2551430))

(assert (= (and start!247432 ((_ is Union!7601) r!27340)) b!2551427))

(assert (= (and start!247432 ((_ is Cons!29566) tl!4068)) b!2551432))

(declare-fun m!2894423 () Bool)

(assert (=> b!2551431 m!2894423))

(declare-fun m!2894425 () Bool)

(assert (=> b!2551431 m!2894425))

(declare-fun m!2894427 () Bool)

(assert (=> b!2551431 m!2894427))

(assert (=> b!2551431 m!2894425))

(declare-fun m!2894429 () Bool)

(assert (=> b!2551431 m!2894429))

(declare-fun m!2894431 () Bool)

(assert (=> b!2551431 m!2894431))

(declare-fun m!2894433 () Bool)

(assert (=> b!2551431 m!2894433))

(declare-fun m!2894435 () Bool)

(assert (=> b!2551431 m!2894435))

(declare-fun m!2894437 () Bool)

(assert (=> b!2551431 m!2894437))

(declare-fun m!2894439 () Bool)

(assert (=> start!247432 m!2894439))

(declare-fun m!2894441 () Bool)

(assert (=> b!2551436 m!2894441))

(assert (=> b!2551436 m!2894441))

(declare-fun m!2894443 () Bool)

(assert (=> b!2551436 m!2894443))

(assert (=> b!2551436 m!2894443))

(declare-fun m!2894445 () Bool)

(assert (=> b!2551436 m!2894445))

(declare-fun m!2894447 () Bool)

(assert (=> b!2551429 m!2894447))

(declare-fun m!2894449 () Bool)

(assert (=> b!2551435 m!2894449))

(declare-fun m!2894451 () Bool)

(assert (=> b!2551434 m!2894451))

(check-sat (not b!2551431) (not b!2551427) (not b!2551429) (not b!2551436) (not b!2551426) (not b!2551432) (not b!2551435) tp_is_empty!13057 (not start!247432) (not b!2551434) (not b!2551430))
(check-sat)
(get-model)

(declare-fun d!723418 () Bool)

(declare-fun lt!903429 () Regex!7601)

(assert (=> d!723418 (validRegex!3227 lt!903429)))

(declare-fun e!1612253 () Regex!7601)

(assert (=> d!723418 (= lt!903429 e!1612253)))

(declare-fun c!409092 () Bool)

(assert (=> d!723418 (= c!409092 ((_ is Cons!29566) tl!4068))))

(assert (=> d!723418 (validRegex!3227 lt!903421)))

(assert (=> d!723418 (= (derivative!296 lt!903421 tl!4068) lt!903429)))

(declare-fun b!2551441 () Bool)

(assert (=> b!2551441 (= e!1612253 (derivative!296 (derivativeStep!2170 lt!903421 (h!34986 tl!4068)) (t!211365 tl!4068)))))

(declare-fun b!2551442 () Bool)

(assert (=> b!2551442 (= e!1612253 lt!903421)))

(assert (= (and d!723418 c!409092) b!2551441))

(assert (= (and d!723418 (not c!409092)) b!2551442))

(declare-fun m!2894455 () Bool)

(assert (=> d!723418 m!2894455))

(declare-fun m!2894457 () Bool)

(assert (=> d!723418 m!2894457))

(declare-fun m!2894459 () Bool)

(assert (=> b!2551441 m!2894459))

(assert (=> b!2551441 m!2894459))

(declare-fun m!2894461 () Bool)

(assert (=> b!2551441 m!2894461))

(assert (=> b!2551431 d!723418))

(declare-fun d!723424 () Bool)

(declare-fun e!1612258 () Bool)

(assert (=> d!723424 e!1612258))

(declare-fun res!1074670 () Bool)

(assert (=> d!723424 (=> res!1074670 e!1612258)))

(assert (=> d!723424 (= res!1074670 (matchR!3546 lt!903424 tl!4068))))

(declare-fun lt!903432 () Unit!43387)

(declare-fun choose!15060 (Regex!7601 Regex!7601 List!29666) Unit!43387)

(assert (=> d!723424 (= lt!903432 (choose!15060 lt!903424 lt!903425 tl!4068))))

(declare-fun e!1612259 () Bool)

(assert (=> d!723424 e!1612259))

(declare-fun res!1074669 () Bool)

(assert (=> d!723424 (=> (not res!1074669) (not e!1612259))))

(assert (=> d!723424 (= res!1074669 (validRegex!3227 lt!903424))))

(assert (=> d!723424 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!196 lt!903424 lt!903425 tl!4068) lt!903432)))

(declare-fun b!2551447 () Bool)

(assert (=> b!2551447 (= e!1612259 (validRegex!3227 lt!903425))))

(declare-fun b!2551448 () Bool)

(assert (=> b!2551448 (= e!1612258 (matchR!3546 lt!903425 tl!4068))))

(assert (= (and d!723424 res!1074669) b!2551447))

(assert (= (and d!723424 (not res!1074670)) b!2551448))

(assert (=> d!723424 m!2894437))

(declare-fun m!2894463 () Bool)

(assert (=> d!723424 m!2894463))

(declare-fun m!2894465 () Bool)

(assert (=> d!723424 m!2894465))

(declare-fun m!2894467 () Bool)

(assert (=> b!2551447 m!2894467))

(assert (=> b!2551448 m!2894447))

(assert (=> b!2551431 d!723424))

(declare-fun d!723426 () Bool)

(assert (=> d!723426 (= (matchR!3546 lt!903421 tl!4068) (matchR!3546 (derivative!296 lt!903421 tl!4068) Nil!29566))))

(declare-fun lt!903437 () Unit!43387)

(declare-fun choose!15061 (Regex!7601 List!29666) Unit!43387)

(assert (=> d!723426 (= lt!903437 (choose!15061 lt!903421 tl!4068))))

(assert (=> d!723426 (validRegex!3227 lt!903421)))

(assert (=> d!723426 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!192 lt!903421 tl!4068) lt!903437)))

(declare-fun bs!469627 () Bool)

(assert (= bs!469627 d!723426))

(assert (=> bs!469627 m!2894457))

(assert (=> bs!469627 m!2894425))

(assert (=> bs!469627 m!2894427))

(declare-fun m!2894469 () Bool)

(assert (=> bs!469627 m!2894469))

(assert (=> bs!469627 m!2894433))

(assert (=> bs!469627 m!2894425))

(assert (=> b!2551431 d!723426))

(declare-fun d!723428 () Bool)

(declare-fun e!1612324 () Bool)

(assert (=> d!723428 e!1612324))

(declare-fun c!409118 () Bool)

(assert (=> d!723428 (= c!409118 ((_ is EmptyExpr!7601) lt!903424))))

(declare-fun lt!903441 () Bool)

(declare-fun e!1612325 () Bool)

(assert (=> d!723428 (= lt!903441 e!1612325)))

(declare-fun c!409116 () Bool)

(declare-fun isEmpty!17013 (List!29666) Bool)

(assert (=> d!723428 (= c!409116 (isEmpty!17013 tl!4068))))

(assert (=> d!723428 (validRegex!3227 lt!903424)))

(assert (=> d!723428 (= (matchR!3546 lt!903424 tl!4068) lt!903441)))

(declare-fun b!2551555 () Bool)

(declare-fun res!1074734 () Bool)

(declare-fun e!1612326 () Bool)

(assert (=> b!2551555 (=> res!1074734 e!1612326)))

(assert (=> b!2551555 (= res!1074734 (not ((_ is ElementMatch!7601) lt!903424)))))

(declare-fun e!1612328 () Bool)

(assert (=> b!2551555 (= e!1612328 e!1612326)))

(declare-fun b!2551556 () Bool)

(declare-fun res!1074732 () Bool)

(declare-fun e!1612329 () Bool)

(assert (=> b!2551556 (=> res!1074732 e!1612329)))

(declare-fun tail!4082 (List!29666) List!29666)

(assert (=> b!2551556 (= res!1074732 (not (isEmpty!17013 (tail!4082 tl!4068))))))

(declare-fun b!2551557 () Bool)

(declare-fun res!1074738 () Bool)

(assert (=> b!2551557 (=> res!1074738 e!1612326)))

(declare-fun e!1612327 () Bool)

(assert (=> b!2551557 (= res!1074738 e!1612327)))

(declare-fun res!1074737 () Bool)

(assert (=> b!2551557 (=> (not res!1074737) (not e!1612327))))

(assert (=> b!2551557 (= res!1074737 lt!903441)))

(declare-fun b!2551558 () Bool)

(declare-fun head!5807 (List!29666) C!15360)

(assert (=> b!2551558 (= e!1612325 (matchR!3546 (derivativeStep!2170 lt!903424 (head!5807 tl!4068)) (tail!4082 tl!4068)))))

(declare-fun b!2551559 () Bool)

(assert (=> b!2551559 (= e!1612329 (not (= (head!5807 tl!4068) (c!409089 lt!903424))))))

(declare-fun b!2551560 () Bool)

(declare-fun call!162463 () Bool)

(assert (=> b!2551560 (= e!1612324 (= lt!903441 call!162463))))

(declare-fun b!2551561 () Bool)

(declare-fun e!1612323 () Bool)

(assert (=> b!2551561 (= e!1612323 e!1612329)))

(declare-fun res!1074733 () Bool)

(assert (=> b!2551561 (=> res!1074733 e!1612329)))

(assert (=> b!2551561 (= res!1074733 call!162463)))

(declare-fun b!2551562 () Bool)

(assert (=> b!2551562 (= e!1612326 e!1612323)))

(declare-fun res!1074731 () Bool)

(assert (=> b!2551562 (=> (not res!1074731) (not e!1612323))))

(assert (=> b!2551562 (= res!1074731 (not lt!903441))))

(declare-fun b!2551563 () Bool)

(assert (=> b!2551563 (= e!1612324 e!1612328)))

(declare-fun c!409117 () Bool)

(assert (=> b!2551563 (= c!409117 ((_ is EmptyLang!7601) lt!903424))))

(declare-fun b!2551564 () Bool)

(assert (=> b!2551564 (= e!1612325 (nullable!2518 lt!903424))))

(declare-fun bm!162458 () Bool)

(assert (=> bm!162458 (= call!162463 (isEmpty!17013 tl!4068))))

(declare-fun b!2551565 () Bool)

(declare-fun res!1074736 () Bool)

(assert (=> b!2551565 (=> (not res!1074736) (not e!1612327))))

(assert (=> b!2551565 (= res!1074736 (not call!162463))))

(declare-fun b!2551566 () Bool)

(assert (=> b!2551566 (= e!1612327 (= (head!5807 tl!4068) (c!409089 lt!903424)))))

(declare-fun b!2551567 () Bool)

(declare-fun res!1074735 () Bool)

(assert (=> b!2551567 (=> (not res!1074735) (not e!1612327))))

(assert (=> b!2551567 (= res!1074735 (isEmpty!17013 (tail!4082 tl!4068)))))

(declare-fun b!2551568 () Bool)

(assert (=> b!2551568 (= e!1612328 (not lt!903441))))

(assert (= (and d!723428 c!409116) b!2551564))

(assert (= (and d!723428 (not c!409116)) b!2551558))

(assert (= (and d!723428 c!409118) b!2551560))

(assert (= (and d!723428 (not c!409118)) b!2551563))

(assert (= (and b!2551563 c!409117) b!2551568))

(assert (= (and b!2551563 (not c!409117)) b!2551555))

(assert (= (and b!2551555 (not res!1074734)) b!2551557))

(assert (= (and b!2551557 res!1074737) b!2551565))

(assert (= (and b!2551565 res!1074736) b!2551567))

(assert (= (and b!2551567 res!1074735) b!2551566))

(assert (= (and b!2551557 (not res!1074738)) b!2551562))

(assert (= (and b!2551562 res!1074731) b!2551561))

(assert (= (and b!2551561 (not res!1074733)) b!2551556))

(assert (= (and b!2551556 (not res!1074732)) b!2551559))

(assert (= (or b!2551560 b!2551561 b!2551565) bm!162458))

(declare-fun m!2894501 () Bool)

(assert (=> b!2551556 m!2894501))

(assert (=> b!2551556 m!2894501))

(declare-fun m!2894503 () Bool)

(assert (=> b!2551556 m!2894503))

(assert (=> b!2551567 m!2894501))

(assert (=> b!2551567 m!2894501))

(assert (=> b!2551567 m!2894503))

(declare-fun m!2894505 () Bool)

(assert (=> b!2551566 m!2894505))

(declare-fun m!2894507 () Bool)

(assert (=> bm!162458 m!2894507))

(assert (=> b!2551559 m!2894505))

(assert (=> d!723428 m!2894507))

(assert (=> d!723428 m!2894465))

(assert (=> b!2551558 m!2894505))

(assert (=> b!2551558 m!2894505))

(declare-fun m!2894509 () Bool)

(assert (=> b!2551558 m!2894509))

(assert (=> b!2551558 m!2894501))

(assert (=> b!2551558 m!2894509))

(assert (=> b!2551558 m!2894501))

(declare-fun m!2894511 () Bool)

(assert (=> b!2551558 m!2894511))

(declare-fun m!2894513 () Bool)

(assert (=> b!2551564 m!2894513))

(assert (=> b!2551431 d!723428))

(declare-fun d!723438 () Bool)

(declare-fun e!1612331 () Bool)

(assert (=> d!723438 e!1612331))

(declare-fun c!409121 () Bool)

(assert (=> d!723438 (= c!409121 ((_ is EmptyExpr!7601) lt!903421))))

(declare-fun lt!903442 () Bool)

(declare-fun e!1612332 () Bool)

(assert (=> d!723438 (= lt!903442 e!1612332)))

(declare-fun c!409119 () Bool)

(assert (=> d!723438 (= c!409119 (isEmpty!17013 tl!4068))))

(assert (=> d!723438 (validRegex!3227 lt!903421)))

(assert (=> d!723438 (= (matchR!3546 lt!903421 tl!4068) lt!903442)))

(declare-fun b!2551569 () Bool)

(declare-fun res!1074742 () Bool)

(declare-fun e!1612333 () Bool)

(assert (=> b!2551569 (=> res!1074742 e!1612333)))

(assert (=> b!2551569 (= res!1074742 (not ((_ is ElementMatch!7601) lt!903421)))))

(declare-fun e!1612335 () Bool)

(assert (=> b!2551569 (= e!1612335 e!1612333)))

(declare-fun b!2551570 () Bool)

(declare-fun res!1074740 () Bool)

(declare-fun e!1612336 () Bool)

(assert (=> b!2551570 (=> res!1074740 e!1612336)))

(assert (=> b!2551570 (= res!1074740 (not (isEmpty!17013 (tail!4082 tl!4068))))))

(declare-fun b!2551571 () Bool)

(declare-fun res!1074746 () Bool)

(assert (=> b!2551571 (=> res!1074746 e!1612333)))

(declare-fun e!1612334 () Bool)

(assert (=> b!2551571 (= res!1074746 e!1612334)))

(declare-fun res!1074745 () Bool)

(assert (=> b!2551571 (=> (not res!1074745) (not e!1612334))))

(assert (=> b!2551571 (= res!1074745 lt!903442)))

(declare-fun b!2551572 () Bool)

(assert (=> b!2551572 (= e!1612332 (matchR!3546 (derivativeStep!2170 lt!903421 (head!5807 tl!4068)) (tail!4082 tl!4068)))))

(declare-fun b!2551573 () Bool)

(assert (=> b!2551573 (= e!1612336 (not (= (head!5807 tl!4068) (c!409089 lt!903421))))))

(declare-fun b!2551574 () Bool)

(declare-fun call!162464 () Bool)

(assert (=> b!2551574 (= e!1612331 (= lt!903442 call!162464))))

(declare-fun b!2551575 () Bool)

(declare-fun e!1612330 () Bool)

(assert (=> b!2551575 (= e!1612330 e!1612336)))

(declare-fun res!1074741 () Bool)

(assert (=> b!2551575 (=> res!1074741 e!1612336)))

(assert (=> b!2551575 (= res!1074741 call!162464)))

(declare-fun b!2551576 () Bool)

(assert (=> b!2551576 (= e!1612333 e!1612330)))

(declare-fun res!1074739 () Bool)

(assert (=> b!2551576 (=> (not res!1074739) (not e!1612330))))

(assert (=> b!2551576 (= res!1074739 (not lt!903442))))

(declare-fun b!2551577 () Bool)

(assert (=> b!2551577 (= e!1612331 e!1612335)))

(declare-fun c!409120 () Bool)

(assert (=> b!2551577 (= c!409120 ((_ is EmptyLang!7601) lt!903421))))

(declare-fun b!2551578 () Bool)

(assert (=> b!2551578 (= e!1612332 (nullable!2518 lt!903421))))

(declare-fun bm!162459 () Bool)

(assert (=> bm!162459 (= call!162464 (isEmpty!17013 tl!4068))))

(declare-fun b!2551579 () Bool)

(declare-fun res!1074744 () Bool)

(assert (=> b!2551579 (=> (not res!1074744) (not e!1612334))))

(assert (=> b!2551579 (= res!1074744 (not call!162464))))

(declare-fun b!2551580 () Bool)

(assert (=> b!2551580 (= e!1612334 (= (head!5807 tl!4068) (c!409089 lt!903421)))))

(declare-fun b!2551581 () Bool)

(declare-fun res!1074743 () Bool)

(assert (=> b!2551581 (=> (not res!1074743) (not e!1612334))))

(assert (=> b!2551581 (= res!1074743 (isEmpty!17013 (tail!4082 tl!4068)))))

(declare-fun b!2551582 () Bool)

(assert (=> b!2551582 (= e!1612335 (not lt!903442))))

(assert (= (and d!723438 c!409119) b!2551578))

(assert (= (and d!723438 (not c!409119)) b!2551572))

(assert (= (and d!723438 c!409121) b!2551574))

(assert (= (and d!723438 (not c!409121)) b!2551577))

(assert (= (and b!2551577 c!409120) b!2551582))

(assert (= (and b!2551577 (not c!409120)) b!2551569))

(assert (= (and b!2551569 (not res!1074742)) b!2551571))

(assert (= (and b!2551571 res!1074745) b!2551579))

(assert (= (and b!2551579 res!1074744) b!2551581))

(assert (= (and b!2551581 res!1074743) b!2551580))

(assert (= (and b!2551571 (not res!1074746)) b!2551576))

(assert (= (and b!2551576 res!1074739) b!2551575))

(assert (= (and b!2551575 (not res!1074741)) b!2551570))

(assert (= (and b!2551570 (not res!1074740)) b!2551573))

(assert (= (or b!2551574 b!2551575 b!2551579) bm!162459))

(assert (=> b!2551570 m!2894501))

(assert (=> b!2551570 m!2894501))

(assert (=> b!2551570 m!2894503))

(assert (=> b!2551581 m!2894501))

(assert (=> b!2551581 m!2894501))

(assert (=> b!2551581 m!2894503))

(assert (=> b!2551580 m!2894505))

(assert (=> bm!162459 m!2894507))

(assert (=> b!2551573 m!2894505))

(assert (=> d!723438 m!2894507))

(assert (=> d!723438 m!2894457))

(assert (=> b!2551572 m!2894505))

(assert (=> b!2551572 m!2894505))

(declare-fun m!2894515 () Bool)

(assert (=> b!2551572 m!2894515))

(assert (=> b!2551572 m!2894501))

(assert (=> b!2551572 m!2894515))

(assert (=> b!2551572 m!2894501))

(declare-fun m!2894517 () Bool)

(assert (=> b!2551572 m!2894517))

(declare-fun m!2894519 () Bool)

(assert (=> b!2551578 m!2894519))

(assert (=> b!2551431 d!723438))

(declare-fun d!723440 () Bool)

(declare-fun e!1612340 () Bool)

(assert (=> d!723440 e!1612340))

(declare-fun c!409126 () Bool)

(assert (=> d!723440 (= c!409126 ((_ is EmptyExpr!7601) (derivative!296 lt!903421 tl!4068)))))

(declare-fun lt!903445 () Bool)

(declare-fun e!1612341 () Bool)

(assert (=> d!723440 (= lt!903445 e!1612341)))

(declare-fun c!409124 () Bool)

(assert (=> d!723440 (= c!409124 (isEmpty!17013 Nil!29566))))

(assert (=> d!723440 (validRegex!3227 (derivative!296 lt!903421 tl!4068))))

(assert (=> d!723440 (= (matchR!3546 (derivative!296 lt!903421 tl!4068) Nil!29566) lt!903445)))

(declare-fun b!2551587 () Bool)

(declare-fun res!1074750 () Bool)

(declare-fun e!1612342 () Bool)

(assert (=> b!2551587 (=> res!1074750 e!1612342)))

(assert (=> b!2551587 (= res!1074750 (not ((_ is ElementMatch!7601) (derivative!296 lt!903421 tl!4068))))))

(declare-fun e!1612344 () Bool)

(assert (=> b!2551587 (= e!1612344 e!1612342)))

(declare-fun b!2551588 () Bool)

(declare-fun res!1074748 () Bool)

(declare-fun e!1612345 () Bool)

(assert (=> b!2551588 (=> res!1074748 e!1612345)))

(assert (=> b!2551588 (= res!1074748 (not (isEmpty!17013 (tail!4082 Nil!29566))))))

(declare-fun b!2551589 () Bool)

(declare-fun res!1074754 () Bool)

(assert (=> b!2551589 (=> res!1074754 e!1612342)))

(declare-fun e!1612343 () Bool)

(assert (=> b!2551589 (= res!1074754 e!1612343)))

(declare-fun res!1074753 () Bool)

(assert (=> b!2551589 (=> (not res!1074753) (not e!1612343))))

(assert (=> b!2551589 (= res!1074753 lt!903445)))

(declare-fun b!2551590 () Bool)

(assert (=> b!2551590 (= e!1612341 (matchR!3546 (derivativeStep!2170 (derivative!296 lt!903421 tl!4068) (head!5807 Nil!29566)) (tail!4082 Nil!29566)))))

(declare-fun b!2551591 () Bool)

(assert (=> b!2551591 (= e!1612345 (not (= (head!5807 Nil!29566) (c!409089 (derivative!296 lt!903421 tl!4068)))))))

(declare-fun b!2551592 () Bool)

(declare-fun call!162465 () Bool)

(assert (=> b!2551592 (= e!1612340 (= lt!903445 call!162465))))

(declare-fun b!2551593 () Bool)

(declare-fun e!1612339 () Bool)

(assert (=> b!2551593 (= e!1612339 e!1612345)))

(declare-fun res!1074749 () Bool)

(assert (=> b!2551593 (=> res!1074749 e!1612345)))

(assert (=> b!2551593 (= res!1074749 call!162465)))

(declare-fun b!2551594 () Bool)

(assert (=> b!2551594 (= e!1612342 e!1612339)))

(declare-fun res!1074747 () Bool)

(assert (=> b!2551594 (=> (not res!1074747) (not e!1612339))))

(assert (=> b!2551594 (= res!1074747 (not lt!903445))))

(declare-fun b!2551595 () Bool)

(assert (=> b!2551595 (= e!1612340 e!1612344)))

(declare-fun c!409125 () Bool)

(assert (=> b!2551595 (= c!409125 ((_ is EmptyLang!7601) (derivative!296 lt!903421 tl!4068)))))

(declare-fun b!2551596 () Bool)

(assert (=> b!2551596 (= e!1612341 (nullable!2518 (derivative!296 lt!903421 tl!4068)))))

(declare-fun bm!162460 () Bool)

(assert (=> bm!162460 (= call!162465 (isEmpty!17013 Nil!29566))))

(declare-fun b!2551597 () Bool)

(declare-fun res!1074752 () Bool)

(assert (=> b!2551597 (=> (not res!1074752) (not e!1612343))))

(assert (=> b!2551597 (= res!1074752 (not call!162465))))

(declare-fun b!2551598 () Bool)

(assert (=> b!2551598 (= e!1612343 (= (head!5807 Nil!29566) (c!409089 (derivative!296 lt!903421 tl!4068))))))

(declare-fun b!2551599 () Bool)

(declare-fun res!1074751 () Bool)

(assert (=> b!2551599 (=> (not res!1074751) (not e!1612343))))

(assert (=> b!2551599 (= res!1074751 (isEmpty!17013 (tail!4082 Nil!29566)))))

(declare-fun b!2551600 () Bool)

(assert (=> b!2551600 (= e!1612344 (not lt!903445))))

(assert (= (and d!723440 c!409124) b!2551596))

(assert (= (and d!723440 (not c!409124)) b!2551590))

(assert (= (and d!723440 c!409126) b!2551592))

(assert (= (and d!723440 (not c!409126)) b!2551595))

(assert (= (and b!2551595 c!409125) b!2551600))

(assert (= (and b!2551595 (not c!409125)) b!2551587))

(assert (= (and b!2551587 (not res!1074750)) b!2551589))

(assert (= (and b!2551589 res!1074753) b!2551597))

(assert (= (and b!2551597 res!1074752) b!2551599))

(assert (= (and b!2551599 res!1074751) b!2551598))

(assert (= (and b!2551589 (not res!1074754)) b!2551594))

(assert (= (and b!2551594 res!1074747) b!2551593))

(assert (= (and b!2551593 (not res!1074749)) b!2551588))

(assert (= (and b!2551588 (not res!1074748)) b!2551591))

(assert (= (or b!2551592 b!2551593 b!2551597) bm!162460))

(declare-fun m!2894521 () Bool)

(assert (=> b!2551588 m!2894521))

(assert (=> b!2551588 m!2894521))

(declare-fun m!2894523 () Bool)

(assert (=> b!2551588 m!2894523))

(assert (=> b!2551599 m!2894521))

(assert (=> b!2551599 m!2894521))

(assert (=> b!2551599 m!2894523))

(declare-fun m!2894525 () Bool)

(assert (=> b!2551598 m!2894525))

(declare-fun m!2894527 () Bool)

(assert (=> bm!162460 m!2894527))

(assert (=> b!2551591 m!2894525))

(assert (=> d!723440 m!2894527))

(assert (=> d!723440 m!2894425))

(declare-fun m!2894529 () Bool)

(assert (=> d!723440 m!2894529))

(assert (=> b!2551590 m!2894525))

(assert (=> b!2551590 m!2894425))

(assert (=> b!2551590 m!2894525))

(declare-fun m!2894531 () Bool)

(assert (=> b!2551590 m!2894531))

(assert (=> b!2551590 m!2894521))

(assert (=> b!2551590 m!2894531))

(assert (=> b!2551590 m!2894521))

(declare-fun m!2894533 () Bool)

(assert (=> b!2551590 m!2894533))

(assert (=> b!2551596 m!2894425))

(declare-fun m!2894535 () Bool)

(assert (=> b!2551596 m!2894535))

(assert (=> b!2551431 d!723440))

(declare-fun b!2551653 () Bool)

(declare-fun e!1612372 () Regex!7601)

(declare-fun call!162487 () Regex!7601)

(declare-fun call!162488 () Regex!7601)

(assert (=> b!2551653 (= e!1612372 (Union!7601 call!162487 call!162488))))

(declare-fun b!2551654 () Bool)

(declare-fun call!162489 () Regex!7601)

(declare-fun e!1612374 () Regex!7601)

(assert (=> b!2551654 (= e!1612374 (Union!7601 (Concat!12297 call!162489 (regTwo!15714 (regTwo!15714 r!27340))) call!162487))))

(declare-fun b!2551655 () Bool)

(declare-fun e!1612373 () Regex!7601)

(assert (=> b!2551655 (= e!1612372 e!1612373)))

(declare-fun c!409153 () Bool)

(assert (=> b!2551655 (= c!409153 ((_ is Star!7601) (regTwo!15714 r!27340)))))

(declare-fun b!2551656 () Bool)

(declare-fun e!1612376 () Regex!7601)

(assert (=> b!2551656 (= e!1612376 (ite (= c!14016 (c!409089 (regTwo!15714 r!27340))) EmptyExpr!7601 EmptyLang!7601))))

(declare-fun bm!162481 () Bool)

(declare-fun call!162486 () Regex!7601)

(assert (=> bm!162481 (= call!162486 call!162488)))

(declare-fun b!2551657 () Bool)

(declare-fun c!409157 () Bool)

(assert (=> b!2551657 (= c!409157 ((_ is Union!7601) (regTwo!15714 r!27340)))))

(assert (=> b!2551657 (= e!1612376 e!1612372)))

(declare-fun bm!162482 () Bool)

(assert (=> bm!162482 (= call!162489 call!162486)))

(declare-fun b!2551659 () Bool)

(declare-fun e!1612375 () Regex!7601)

(assert (=> b!2551659 (= e!1612375 e!1612376)))

(declare-fun c!409156 () Bool)

(assert (=> b!2551659 (= c!409156 ((_ is ElementMatch!7601) (regTwo!15714 r!27340)))))

(declare-fun bm!162483 () Bool)

(assert (=> bm!162483 (= call!162487 (derivativeStep!2170 (ite c!409157 (regOne!15715 (regTwo!15714 r!27340)) (regTwo!15714 (regTwo!15714 r!27340))) c!14016))))

(declare-fun b!2551660 () Bool)

(assert (=> b!2551660 (= e!1612375 EmptyLang!7601)))

(declare-fun b!2551661 () Bool)

(declare-fun c!409154 () Bool)

(assert (=> b!2551661 (= c!409154 (nullable!2518 (regOne!15714 (regTwo!15714 r!27340))))))

(assert (=> b!2551661 (= e!1612373 e!1612374)))

(declare-fun d!723442 () Bool)

(declare-fun lt!903452 () Regex!7601)

(assert (=> d!723442 (validRegex!3227 lt!903452)))

(assert (=> d!723442 (= lt!903452 e!1612375)))

(declare-fun c!409155 () Bool)

(assert (=> d!723442 (= c!409155 (or ((_ is EmptyExpr!7601) (regTwo!15714 r!27340)) ((_ is EmptyLang!7601) (regTwo!15714 r!27340))))))

(assert (=> d!723442 (validRegex!3227 (regTwo!15714 r!27340))))

(assert (=> d!723442 (= (derivativeStep!2170 (regTwo!15714 r!27340) c!14016) lt!903452)))

(declare-fun b!2551658 () Bool)

(assert (=> b!2551658 (= e!1612373 (Concat!12297 call!162486 (regTwo!15714 r!27340)))))

(declare-fun b!2551662 () Bool)

(assert (=> b!2551662 (= e!1612374 (Union!7601 (Concat!12297 call!162489 (regTwo!15714 (regTwo!15714 r!27340))) EmptyLang!7601))))

(declare-fun bm!162484 () Bool)

(assert (=> bm!162484 (= call!162488 (derivativeStep!2170 (ite c!409157 (regTwo!15715 (regTwo!15714 r!27340)) (ite c!409153 (reg!7930 (regTwo!15714 r!27340)) (regOne!15714 (regTwo!15714 r!27340)))) c!14016))))

(assert (= (and d!723442 c!409155) b!2551660))

(assert (= (and d!723442 (not c!409155)) b!2551659))

(assert (= (and b!2551659 c!409156) b!2551656))

(assert (= (and b!2551659 (not c!409156)) b!2551657))

(assert (= (and b!2551657 c!409157) b!2551653))

(assert (= (and b!2551657 (not c!409157)) b!2551655))

(assert (= (and b!2551655 c!409153) b!2551658))

(assert (= (and b!2551655 (not c!409153)) b!2551661))

(assert (= (and b!2551661 c!409154) b!2551654))

(assert (= (and b!2551661 (not c!409154)) b!2551662))

(assert (= (or b!2551654 b!2551662) bm!162482))

(assert (= (or b!2551658 bm!162482) bm!162481))

(assert (= (or b!2551653 bm!162481) bm!162484))

(assert (= (or b!2551653 b!2551654) bm!162483))

(declare-fun m!2894551 () Bool)

(assert (=> bm!162483 m!2894551))

(declare-fun m!2894553 () Bool)

(assert (=> b!2551661 m!2894553))

(declare-fun m!2894555 () Bool)

(assert (=> d!723442 m!2894555))

(declare-fun m!2894557 () Bool)

(assert (=> d!723442 m!2894557))

(declare-fun m!2894559 () Bool)

(assert (=> bm!162484 m!2894559))

(assert (=> b!2551431 d!723442))

(declare-fun b!2551677 () Bool)

(declare-fun e!1612384 () Regex!7601)

(declare-fun call!162492 () Regex!7601)

(declare-fun call!162493 () Regex!7601)

(assert (=> b!2551677 (= e!1612384 (Union!7601 call!162492 call!162493))))

(declare-fun b!2551678 () Bool)

(declare-fun e!1612386 () Regex!7601)

(declare-fun call!162494 () Regex!7601)

(assert (=> b!2551678 (= e!1612386 (Union!7601 (Concat!12297 call!162494 (regTwo!15714 (regOne!15714 r!27340))) call!162492))))

(declare-fun b!2551679 () Bool)

(declare-fun e!1612385 () Regex!7601)

(assert (=> b!2551679 (= e!1612384 e!1612385)))

(declare-fun c!409161 () Bool)

(assert (=> b!2551679 (= c!409161 ((_ is Star!7601) (regOne!15714 r!27340)))))

(declare-fun b!2551680 () Bool)

(declare-fun e!1612388 () Regex!7601)

(assert (=> b!2551680 (= e!1612388 (ite (= c!14016 (c!409089 (regOne!15714 r!27340))) EmptyExpr!7601 EmptyLang!7601))))

(declare-fun bm!162486 () Bool)

(declare-fun call!162491 () Regex!7601)

(assert (=> bm!162486 (= call!162491 call!162493)))

(declare-fun b!2551681 () Bool)

(declare-fun c!409165 () Bool)

(assert (=> b!2551681 (= c!409165 ((_ is Union!7601) (regOne!15714 r!27340)))))

(assert (=> b!2551681 (= e!1612388 e!1612384)))

(declare-fun bm!162487 () Bool)

(assert (=> bm!162487 (= call!162494 call!162491)))

(declare-fun b!2551683 () Bool)

(declare-fun e!1612387 () Regex!7601)

(assert (=> b!2551683 (= e!1612387 e!1612388)))

(declare-fun c!409164 () Bool)

(assert (=> b!2551683 (= c!409164 ((_ is ElementMatch!7601) (regOne!15714 r!27340)))))

(declare-fun bm!162488 () Bool)

(assert (=> bm!162488 (= call!162492 (derivativeStep!2170 (ite c!409165 (regOne!15715 (regOne!15714 r!27340)) (regTwo!15714 (regOne!15714 r!27340))) c!14016))))

(declare-fun b!2551684 () Bool)

(assert (=> b!2551684 (= e!1612387 EmptyLang!7601)))

(declare-fun b!2551685 () Bool)

(declare-fun c!409162 () Bool)

(assert (=> b!2551685 (= c!409162 (nullable!2518 (regOne!15714 (regOne!15714 r!27340))))))

(assert (=> b!2551685 (= e!1612385 e!1612386)))

(declare-fun d!723448 () Bool)

(declare-fun lt!903454 () Regex!7601)

(assert (=> d!723448 (validRegex!3227 lt!903454)))

(assert (=> d!723448 (= lt!903454 e!1612387)))

(declare-fun c!409163 () Bool)

(assert (=> d!723448 (= c!409163 (or ((_ is EmptyExpr!7601) (regOne!15714 r!27340)) ((_ is EmptyLang!7601) (regOne!15714 r!27340))))))

(assert (=> d!723448 (validRegex!3227 (regOne!15714 r!27340))))

(assert (=> d!723448 (= (derivativeStep!2170 (regOne!15714 r!27340) c!14016) lt!903454)))

(declare-fun b!2551682 () Bool)

(assert (=> b!2551682 (= e!1612385 (Concat!12297 call!162491 (regOne!15714 r!27340)))))

(declare-fun b!2551686 () Bool)

(assert (=> b!2551686 (= e!1612386 (Union!7601 (Concat!12297 call!162494 (regTwo!15714 (regOne!15714 r!27340))) EmptyLang!7601))))

(declare-fun bm!162489 () Bool)

(assert (=> bm!162489 (= call!162493 (derivativeStep!2170 (ite c!409165 (regTwo!15715 (regOne!15714 r!27340)) (ite c!409161 (reg!7930 (regOne!15714 r!27340)) (regOne!15714 (regOne!15714 r!27340)))) c!14016))))

(assert (= (and d!723448 c!409163) b!2551684))

(assert (= (and d!723448 (not c!409163)) b!2551683))

(assert (= (and b!2551683 c!409164) b!2551680))

(assert (= (and b!2551683 (not c!409164)) b!2551681))

(assert (= (and b!2551681 c!409165) b!2551677))

(assert (= (and b!2551681 (not c!409165)) b!2551679))

(assert (= (and b!2551679 c!409161) b!2551682))

(assert (= (and b!2551679 (not c!409161)) b!2551685))

(assert (= (and b!2551685 c!409162) b!2551678))

(assert (= (and b!2551685 (not c!409162)) b!2551686))

(assert (= (or b!2551678 b!2551686) bm!162487))

(assert (= (or b!2551682 bm!162487) bm!162486))

(assert (= (or b!2551677 bm!162486) bm!162489))

(assert (= (or b!2551677 b!2551678) bm!162488))

(declare-fun m!2894561 () Bool)

(assert (=> bm!162488 m!2894561))

(declare-fun m!2894563 () Bool)

(assert (=> b!2551685 m!2894563))

(declare-fun m!2894565 () Bool)

(assert (=> d!723448 m!2894565))

(declare-fun m!2894567 () Bool)

(assert (=> d!723448 m!2894567))

(declare-fun m!2894569 () Bool)

(assert (=> bm!162489 m!2894569))

(assert (=> b!2551431 d!723448))

(declare-fun b!2551705 () Bool)

(declare-fun e!1612405 () Bool)

(declare-fun e!1612403 () Bool)

(assert (=> b!2551705 (= e!1612405 e!1612403)))

(declare-fun res!1074773 () Bool)

(assert (=> b!2551705 (= res!1074773 (not (nullable!2518 (reg!7930 r!27340))))))

(assert (=> b!2551705 (=> (not res!1074773) (not e!1612403))))

(declare-fun call!162502 () Bool)

(declare-fun c!409170 () Bool)

(declare-fun c!409171 () Bool)

(declare-fun bm!162496 () Bool)

(assert (=> bm!162496 (= call!162502 (validRegex!3227 (ite c!409171 (reg!7930 r!27340) (ite c!409170 (regOne!15715 r!27340) (regTwo!15714 r!27340)))))))

(declare-fun bm!162497 () Bool)

(declare-fun call!162503 () Bool)

(assert (=> bm!162497 (= call!162503 (validRegex!3227 (ite c!409170 (regTwo!15715 r!27340) (regOne!15714 r!27340))))))

(declare-fun b!2551706 () Bool)

(declare-fun e!1612406 () Bool)

(declare-fun call!162501 () Bool)

(assert (=> b!2551706 (= e!1612406 call!162501)))

(declare-fun b!2551708 () Bool)

(declare-fun e!1612409 () Bool)

(assert (=> b!2551708 (= e!1612405 e!1612409)))

(assert (=> b!2551708 (= c!409170 ((_ is Union!7601) r!27340))))

(declare-fun b!2551709 () Bool)

(assert (=> b!2551709 (= e!1612403 call!162502)))

(declare-fun b!2551710 () Bool)

(declare-fun res!1074776 () Bool)

(declare-fun e!1612404 () Bool)

(assert (=> b!2551710 (=> res!1074776 e!1612404)))

(assert (=> b!2551710 (= res!1074776 (not ((_ is Concat!12297) r!27340)))))

(assert (=> b!2551710 (= e!1612409 e!1612404)))

(declare-fun b!2551711 () Bool)

(declare-fun e!1612408 () Bool)

(assert (=> b!2551711 (= e!1612408 e!1612405)))

(assert (=> b!2551711 (= c!409171 ((_ is Star!7601) r!27340))))

(declare-fun bm!162498 () Bool)

(assert (=> bm!162498 (= call!162501 call!162502)))

(declare-fun b!2551712 () Bool)

(assert (=> b!2551712 (= e!1612404 e!1612406)))

(declare-fun res!1074774 () Bool)

(assert (=> b!2551712 (=> (not res!1074774) (not e!1612406))))

(assert (=> b!2551712 (= res!1074774 call!162503)))

(declare-fun b!2551713 () Bool)

(declare-fun e!1612407 () Bool)

(assert (=> b!2551713 (= e!1612407 call!162503)))

(declare-fun b!2551707 () Bool)

(declare-fun res!1074775 () Bool)

(assert (=> b!2551707 (=> (not res!1074775) (not e!1612407))))

(assert (=> b!2551707 (= res!1074775 call!162501)))

(assert (=> b!2551707 (= e!1612409 e!1612407)))

(declare-fun d!723450 () Bool)

(declare-fun res!1074777 () Bool)

(assert (=> d!723450 (=> res!1074777 e!1612408)))

(assert (=> d!723450 (= res!1074777 ((_ is ElementMatch!7601) r!27340))))

(assert (=> d!723450 (= (validRegex!3227 r!27340) e!1612408)))

(assert (= (and d!723450 (not res!1074777)) b!2551711))

(assert (= (and b!2551711 c!409171) b!2551705))

(assert (= (and b!2551711 (not c!409171)) b!2551708))

(assert (= (and b!2551705 res!1074773) b!2551709))

(assert (= (and b!2551708 c!409170) b!2551707))

(assert (= (and b!2551708 (not c!409170)) b!2551710))

(assert (= (and b!2551707 res!1074775) b!2551713))

(assert (= (and b!2551710 (not res!1074776)) b!2551712))

(assert (= (and b!2551712 res!1074774) b!2551706))

(assert (= (or b!2551707 b!2551706) bm!162498))

(assert (= (or b!2551713 b!2551712) bm!162497))

(assert (= (or b!2551709 bm!162498) bm!162496))

(declare-fun m!2894571 () Bool)

(assert (=> b!2551705 m!2894571))

(declare-fun m!2894573 () Bool)

(assert (=> bm!162496 m!2894573))

(declare-fun m!2894575 () Bool)

(assert (=> bm!162497 m!2894575))

(assert (=> start!247432 d!723450))

(declare-fun d!723452 () Bool)

(declare-fun nullableFct!743 (Regex!7601) Bool)

(assert (=> d!723452 (= (nullable!2518 (derivative!296 (derivativeStep!2170 r!27340 c!14016) tl!4068)) (nullableFct!743 (derivative!296 (derivativeStep!2170 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469629 () Bool)

(assert (= bs!469629 d!723452))

(assert (=> bs!469629 m!2894443))

(declare-fun m!2894577 () Bool)

(assert (=> bs!469629 m!2894577))

(assert (=> b!2551436 d!723452))

(declare-fun d!723454 () Bool)

(declare-fun lt!903455 () Regex!7601)

(assert (=> d!723454 (validRegex!3227 lt!903455)))

(declare-fun e!1612410 () Regex!7601)

(assert (=> d!723454 (= lt!903455 e!1612410)))

(declare-fun c!409172 () Bool)

(assert (=> d!723454 (= c!409172 ((_ is Cons!29566) tl!4068))))

(assert (=> d!723454 (validRegex!3227 (derivativeStep!2170 r!27340 c!14016))))

(assert (=> d!723454 (= (derivative!296 (derivativeStep!2170 r!27340 c!14016) tl!4068) lt!903455)))

(declare-fun b!2551714 () Bool)

(assert (=> b!2551714 (= e!1612410 (derivative!296 (derivativeStep!2170 (derivativeStep!2170 r!27340 c!14016) (h!34986 tl!4068)) (t!211365 tl!4068)))))

(declare-fun b!2551715 () Bool)

(assert (=> b!2551715 (= e!1612410 (derivativeStep!2170 r!27340 c!14016))))

(assert (= (and d!723454 c!409172) b!2551714))

(assert (= (and d!723454 (not c!409172)) b!2551715))

(declare-fun m!2894579 () Bool)

(assert (=> d!723454 m!2894579))

(assert (=> d!723454 m!2894441))

(declare-fun m!2894581 () Bool)

(assert (=> d!723454 m!2894581))

(assert (=> b!2551714 m!2894441))

(declare-fun m!2894583 () Bool)

(assert (=> b!2551714 m!2894583))

(assert (=> b!2551714 m!2894583))

(declare-fun m!2894585 () Bool)

(assert (=> b!2551714 m!2894585))

(assert (=> b!2551436 d!723454))

(declare-fun b!2551716 () Bool)

(declare-fun e!1612411 () Regex!7601)

(declare-fun call!162505 () Regex!7601)

(declare-fun call!162506 () Regex!7601)

(assert (=> b!2551716 (= e!1612411 (Union!7601 call!162505 call!162506))))

(declare-fun b!2551717 () Bool)

(declare-fun call!162507 () Regex!7601)

(declare-fun e!1612413 () Regex!7601)

(assert (=> b!2551717 (= e!1612413 (Union!7601 (Concat!12297 call!162507 (regTwo!15714 r!27340)) call!162505))))

(declare-fun b!2551718 () Bool)

(declare-fun e!1612412 () Regex!7601)

(assert (=> b!2551718 (= e!1612411 e!1612412)))

(declare-fun c!409173 () Bool)

(assert (=> b!2551718 (= c!409173 ((_ is Star!7601) r!27340))))

(declare-fun b!2551719 () Bool)

(declare-fun e!1612415 () Regex!7601)

(assert (=> b!2551719 (= e!1612415 (ite (= c!14016 (c!409089 r!27340)) EmptyExpr!7601 EmptyLang!7601))))

(declare-fun bm!162499 () Bool)

(declare-fun call!162504 () Regex!7601)

(assert (=> bm!162499 (= call!162504 call!162506)))

(declare-fun b!2551720 () Bool)

(declare-fun c!409177 () Bool)

(assert (=> b!2551720 (= c!409177 ((_ is Union!7601) r!27340))))

(assert (=> b!2551720 (= e!1612415 e!1612411)))

(declare-fun bm!162500 () Bool)

(assert (=> bm!162500 (= call!162507 call!162504)))

(declare-fun b!2551722 () Bool)

(declare-fun e!1612414 () Regex!7601)

(assert (=> b!2551722 (= e!1612414 e!1612415)))

(declare-fun c!409176 () Bool)

(assert (=> b!2551722 (= c!409176 ((_ is ElementMatch!7601) r!27340))))

(declare-fun bm!162501 () Bool)

(assert (=> bm!162501 (= call!162505 (derivativeStep!2170 (ite c!409177 (regOne!15715 r!27340) (regTwo!15714 r!27340)) c!14016))))

(declare-fun b!2551723 () Bool)

(assert (=> b!2551723 (= e!1612414 EmptyLang!7601)))

(declare-fun b!2551724 () Bool)

(declare-fun c!409174 () Bool)

(assert (=> b!2551724 (= c!409174 (nullable!2518 (regOne!15714 r!27340)))))

(assert (=> b!2551724 (= e!1612412 e!1612413)))

(declare-fun d!723456 () Bool)

(declare-fun lt!903456 () Regex!7601)

(assert (=> d!723456 (validRegex!3227 lt!903456)))

(assert (=> d!723456 (= lt!903456 e!1612414)))

(declare-fun c!409175 () Bool)

(assert (=> d!723456 (= c!409175 (or ((_ is EmptyExpr!7601) r!27340) ((_ is EmptyLang!7601) r!27340)))))

(assert (=> d!723456 (validRegex!3227 r!27340)))

(assert (=> d!723456 (= (derivativeStep!2170 r!27340 c!14016) lt!903456)))

(declare-fun b!2551721 () Bool)

(assert (=> b!2551721 (= e!1612412 (Concat!12297 call!162504 r!27340))))

(declare-fun b!2551725 () Bool)

(assert (=> b!2551725 (= e!1612413 (Union!7601 (Concat!12297 call!162507 (regTwo!15714 r!27340)) EmptyLang!7601))))

(declare-fun bm!162502 () Bool)

(assert (=> bm!162502 (= call!162506 (derivativeStep!2170 (ite c!409177 (regTwo!15715 r!27340) (ite c!409173 (reg!7930 r!27340) (regOne!15714 r!27340))) c!14016))))

(assert (= (and d!723456 c!409175) b!2551723))

(assert (= (and d!723456 (not c!409175)) b!2551722))

(assert (= (and b!2551722 c!409176) b!2551719))

(assert (= (and b!2551722 (not c!409176)) b!2551720))

(assert (= (and b!2551720 c!409177) b!2551716))

(assert (= (and b!2551720 (not c!409177)) b!2551718))

(assert (= (and b!2551718 c!409173) b!2551721))

(assert (= (and b!2551718 (not c!409173)) b!2551724))

(assert (= (and b!2551724 c!409174) b!2551717))

(assert (= (and b!2551724 (not c!409174)) b!2551725))

(assert (= (or b!2551717 b!2551725) bm!162500))

(assert (= (or b!2551721 bm!162500) bm!162499))

(assert (= (or b!2551716 bm!162499) bm!162502))

(assert (= (or b!2551716 b!2551717) bm!162501))

(declare-fun m!2894587 () Bool)

(assert (=> bm!162501 m!2894587))

(assert (=> b!2551724 m!2894451))

(declare-fun m!2894589 () Bool)

(assert (=> d!723456 m!2894589))

(assert (=> d!723456 m!2894439))

(declare-fun m!2894591 () Bool)

(assert (=> bm!162502 m!2894591))

(assert (=> b!2551436 d!723456))

(declare-fun b!2551726 () Bool)

(declare-fun e!1612418 () Bool)

(declare-fun e!1612416 () Bool)

(assert (=> b!2551726 (= e!1612418 e!1612416)))

(declare-fun res!1074778 () Bool)

(assert (=> b!2551726 (= res!1074778 (not (nullable!2518 (reg!7930 lt!903422))))))

(assert (=> b!2551726 (=> (not res!1074778) (not e!1612416))))

(declare-fun bm!162503 () Bool)

(declare-fun call!162509 () Bool)

(declare-fun c!409179 () Bool)

(declare-fun c!409178 () Bool)

(assert (=> bm!162503 (= call!162509 (validRegex!3227 (ite c!409179 (reg!7930 lt!903422) (ite c!409178 (regOne!15715 lt!903422) (regTwo!15714 lt!903422)))))))

(declare-fun bm!162504 () Bool)

(declare-fun call!162510 () Bool)

(assert (=> bm!162504 (= call!162510 (validRegex!3227 (ite c!409178 (regTwo!15715 lt!903422) (regOne!15714 lt!903422))))))

(declare-fun b!2551727 () Bool)

(declare-fun e!1612419 () Bool)

(declare-fun call!162508 () Bool)

(assert (=> b!2551727 (= e!1612419 call!162508)))

(declare-fun b!2551729 () Bool)

(declare-fun e!1612422 () Bool)

(assert (=> b!2551729 (= e!1612418 e!1612422)))

(assert (=> b!2551729 (= c!409178 ((_ is Union!7601) lt!903422))))

(declare-fun b!2551730 () Bool)

(assert (=> b!2551730 (= e!1612416 call!162509)))

(declare-fun b!2551731 () Bool)

(declare-fun res!1074781 () Bool)

(declare-fun e!1612417 () Bool)

(assert (=> b!2551731 (=> res!1074781 e!1612417)))

(assert (=> b!2551731 (= res!1074781 (not ((_ is Concat!12297) lt!903422)))))

(assert (=> b!2551731 (= e!1612422 e!1612417)))

(declare-fun b!2551732 () Bool)

(declare-fun e!1612421 () Bool)

(assert (=> b!2551732 (= e!1612421 e!1612418)))

(assert (=> b!2551732 (= c!409179 ((_ is Star!7601) lt!903422))))

(declare-fun bm!162505 () Bool)

(assert (=> bm!162505 (= call!162508 call!162509)))

(declare-fun b!2551733 () Bool)

(assert (=> b!2551733 (= e!1612417 e!1612419)))

(declare-fun res!1074779 () Bool)

(assert (=> b!2551733 (=> (not res!1074779) (not e!1612419))))

(assert (=> b!2551733 (= res!1074779 call!162510)))

(declare-fun b!2551734 () Bool)

(declare-fun e!1612420 () Bool)

(assert (=> b!2551734 (= e!1612420 call!162510)))

(declare-fun b!2551728 () Bool)

(declare-fun res!1074780 () Bool)

(assert (=> b!2551728 (=> (not res!1074780) (not e!1612420))))

(assert (=> b!2551728 (= res!1074780 call!162508)))

(assert (=> b!2551728 (= e!1612422 e!1612420)))

(declare-fun d!723458 () Bool)

(declare-fun res!1074782 () Bool)

(assert (=> d!723458 (=> res!1074782 e!1612421)))

(assert (=> d!723458 (= res!1074782 ((_ is ElementMatch!7601) lt!903422))))

(assert (=> d!723458 (= (validRegex!3227 lt!903422) e!1612421)))

(assert (= (and d!723458 (not res!1074782)) b!2551732))

(assert (= (and b!2551732 c!409179) b!2551726))

(assert (= (and b!2551732 (not c!409179)) b!2551729))

(assert (= (and b!2551726 res!1074778) b!2551730))

(assert (= (and b!2551729 c!409178) b!2551728))

(assert (= (and b!2551729 (not c!409178)) b!2551731))

(assert (= (and b!2551728 res!1074780) b!2551734))

(assert (= (and b!2551731 (not res!1074781)) b!2551733))

(assert (= (and b!2551733 res!1074779) b!2551727))

(assert (= (or b!2551728 b!2551727) bm!162505))

(assert (= (or b!2551734 b!2551733) bm!162504))

(assert (= (or b!2551730 bm!162505) bm!162503))

(declare-fun m!2894593 () Bool)

(assert (=> b!2551726 m!2894593))

(declare-fun m!2894595 () Bool)

(assert (=> bm!162503 m!2894595))

(declare-fun m!2894597 () Bool)

(assert (=> bm!162504 m!2894597))

(assert (=> b!2551435 d!723458))

(declare-fun d!723460 () Bool)

(declare-fun e!1612424 () Bool)

(assert (=> d!723460 e!1612424))

(declare-fun c!409182 () Bool)

(assert (=> d!723460 (= c!409182 ((_ is EmptyExpr!7601) lt!903425))))

(declare-fun lt!903457 () Bool)

(declare-fun e!1612425 () Bool)

(assert (=> d!723460 (= lt!903457 e!1612425)))

(declare-fun c!409180 () Bool)

(assert (=> d!723460 (= c!409180 (isEmpty!17013 tl!4068))))

(assert (=> d!723460 (validRegex!3227 lt!903425)))

(assert (=> d!723460 (= (matchR!3546 lt!903425 tl!4068) lt!903457)))

(declare-fun b!2551735 () Bool)

(declare-fun res!1074786 () Bool)

(declare-fun e!1612426 () Bool)

(assert (=> b!2551735 (=> res!1074786 e!1612426)))

(assert (=> b!2551735 (= res!1074786 (not ((_ is ElementMatch!7601) lt!903425)))))

(declare-fun e!1612428 () Bool)

(assert (=> b!2551735 (= e!1612428 e!1612426)))

(declare-fun b!2551736 () Bool)

(declare-fun res!1074784 () Bool)

(declare-fun e!1612429 () Bool)

(assert (=> b!2551736 (=> res!1074784 e!1612429)))

(assert (=> b!2551736 (= res!1074784 (not (isEmpty!17013 (tail!4082 tl!4068))))))

(declare-fun b!2551737 () Bool)

(declare-fun res!1074790 () Bool)

(assert (=> b!2551737 (=> res!1074790 e!1612426)))

(declare-fun e!1612427 () Bool)

(assert (=> b!2551737 (= res!1074790 e!1612427)))

(declare-fun res!1074789 () Bool)

(assert (=> b!2551737 (=> (not res!1074789) (not e!1612427))))

(assert (=> b!2551737 (= res!1074789 lt!903457)))

(declare-fun b!2551738 () Bool)

(assert (=> b!2551738 (= e!1612425 (matchR!3546 (derivativeStep!2170 lt!903425 (head!5807 tl!4068)) (tail!4082 tl!4068)))))

(declare-fun b!2551739 () Bool)

(assert (=> b!2551739 (= e!1612429 (not (= (head!5807 tl!4068) (c!409089 lt!903425))))))

(declare-fun b!2551740 () Bool)

(declare-fun call!162511 () Bool)

(assert (=> b!2551740 (= e!1612424 (= lt!903457 call!162511))))

(declare-fun b!2551741 () Bool)

(declare-fun e!1612423 () Bool)

(assert (=> b!2551741 (= e!1612423 e!1612429)))

(declare-fun res!1074785 () Bool)

(assert (=> b!2551741 (=> res!1074785 e!1612429)))

(assert (=> b!2551741 (= res!1074785 call!162511)))

(declare-fun b!2551742 () Bool)

(assert (=> b!2551742 (= e!1612426 e!1612423)))

(declare-fun res!1074783 () Bool)

(assert (=> b!2551742 (=> (not res!1074783) (not e!1612423))))

(assert (=> b!2551742 (= res!1074783 (not lt!903457))))

(declare-fun b!2551743 () Bool)

(assert (=> b!2551743 (= e!1612424 e!1612428)))

(declare-fun c!409181 () Bool)

(assert (=> b!2551743 (= c!409181 ((_ is EmptyLang!7601) lt!903425))))

(declare-fun b!2551744 () Bool)

(assert (=> b!2551744 (= e!1612425 (nullable!2518 lt!903425))))

(declare-fun bm!162506 () Bool)

(assert (=> bm!162506 (= call!162511 (isEmpty!17013 tl!4068))))

(declare-fun b!2551745 () Bool)

(declare-fun res!1074788 () Bool)

(assert (=> b!2551745 (=> (not res!1074788) (not e!1612427))))

(assert (=> b!2551745 (= res!1074788 (not call!162511))))

(declare-fun b!2551746 () Bool)

(assert (=> b!2551746 (= e!1612427 (= (head!5807 tl!4068) (c!409089 lt!903425)))))

(declare-fun b!2551747 () Bool)

(declare-fun res!1074787 () Bool)

(assert (=> b!2551747 (=> (not res!1074787) (not e!1612427))))

(assert (=> b!2551747 (= res!1074787 (isEmpty!17013 (tail!4082 tl!4068)))))

(declare-fun b!2551748 () Bool)

(assert (=> b!2551748 (= e!1612428 (not lt!903457))))

(assert (= (and d!723460 c!409180) b!2551744))

(assert (= (and d!723460 (not c!409180)) b!2551738))

(assert (= (and d!723460 c!409182) b!2551740))

(assert (= (and d!723460 (not c!409182)) b!2551743))

(assert (= (and b!2551743 c!409181) b!2551748))

(assert (= (and b!2551743 (not c!409181)) b!2551735))

(assert (= (and b!2551735 (not res!1074786)) b!2551737))

(assert (= (and b!2551737 res!1074789) b!2551745))

(assert (= (and b!2551745 res!1074788) b!2551747))

(assert (= (and b!2551747 res!1074787) b!2551746))

(assert (= (and b!2551737 (not res!1074790)) b!2551742))

(assert (= (and b!2551742 res!1074783) b!2551741))

(assert (= (and b!2551741 (not res!1074785)) b!2551736))

(assert (= (and b!2551736 (not res!1074784)) b!2551739))

(assert (= (or b!2551740 b!2551741 b!2551745) bm!162506))

(assert (=> b!2551736 m!2894501))

(assert (=> b!2551736 m!2894501))

(assert (=> b!2551736 m!2894503))

(assert (=> b!2551747 m!2894501))

(assert (=> b!2551747 m!2894501))

(assert (=> b!2551747 m!2894503))

(assert (=> b!2551746 m!2894505))

(assert (=> bm!162506 m!2894507))

(assert (=> b!2551739 m!2894505))

(assert (=> d!723460 m!2894507))

(assert (=> d!723460 m!2894467))

(assert (=> b!2551738 m!2894505))

(assert (=> b!2551738 m!2894505))

(declare-fun m!2894599 () Bool)

(assert (=> b!2551738 m!2894599))

(assert (=> b!2551738 m!2894501))

(assert (=> b!2551738 m!2894599))

(assert (=> b!2551738 m!2894501))

(declare-fun m!2894601 () Bool)

(assert (=> b!2551738 m!2894601))

(declare-fun m!2894603 () Bool)

(assert (=> b!2551744 m!2894603))

(assert (=> b!2551429 d!723460))

(declare-fun d!723462 () Bool)

(assert (=> d!723462 (= (nullable!2518 (regOne!15714 r!27340)) (nullableFct!743 (regOne!15714 r!27340)))))

(declare-fun bs!469630 () Bool)

(assert (= bs!469630 d!723462))

(declare-fun m!2894605 () Bool)

(assert (=> bs!469630 m!2894605))

(assert (=> b!2551434 d!723462))

(declare-fun e!1612432 () Bool)

(assert (=> b!2551427 (= tp!813986 e!1612432)))

(declare-fun b!2551762 () Bool)

(declare-fun tp!814005 () Bool)

(declare-fun tp!814004 () Bool)

(assert (=> b!2551762 (= e!1612432 (and tp!814005 tp!814004))))

(declare-fun b!2551759 () Bool)

(assert (=> b!2551759 (= e!1612432 tp_is_empty!13057)))

(declare-fun b!2551760 () Bool)

(declare-fun tp!814003 () Bool)

(declare-fun tp!814002 () Bool)

(assert (=> b!2551760 (= e!1612432 (and tp!814003 tp!814002))))

(declare-fun b!2551761 () Bool)

(declare-fun tp!814001 () Bool)

(assert (=> b!2551761 (= e!1612432 tp!814001)))

(assert (= (and b!2551427 ((_ is ElementMatch!7601) (regOne!15715 r!27340))) b!2551759))

(assert (= (and b!2551427 ((_ is Concat!12297) (regOne!15715 r!27340))) b!2551760))

(assert (= (and b!2551427 ((_ is Star!7601) (regOne!15715 r!27340))) b!2551761))

(assert (= (and b!2551427 ((_ is Union!7601) (regOne!15715 r!27340))) b!2551762))

(declare-fun e!1612433 () Bool)

(assert (=> b!2551427 (= tp!813985 e!1612433)))

(declare-fun b!2551766 () Bool)

(declare-fun tp!814010 () Bool)

(declare-fun tp!814009 () Bool)

(assert (=> b!2551766 (= e!1612433 (and tp!814010 tp!814009))))

(declare-fun b!2551763 () Bool)

(assert (=> b!2551763 (= e!1612433 tp_is_empty!13057)))

(declare-fun b!2551764 () Bool)

(declare-fun tp!814008 () Bool)

(declare-fun tp!814007 () Bool)

(assert (=> b!2551764 (= e!1612433 (and tp!814008 tp!814007))))

(declare-fun b!2551765 () Bool)

(declare-fun tp!814006 () Bool)

(assert (=> b!2551765 (= e!1612433 tp!814006)))

(assert (= (and b!2551427 ((_ is ElementMatch!7601) (regTwo!15715 r!27340))) b!2551763))

(assert (= (and b!2551427 ((_ is Concat!12297) (regTwo!15715 r!27340))) b!2551764))

(assert (= (and b!2551427 ((_ is Star!7601) (regTwo!15715 r!27340))) b!2551765))

(assert (= (and b!2551427 ((_ is Union!7601) (regTwo!15715 r!27340))) b!2551766))

(declare-fun b!2551771 () Bool)

(declare-fun e!1612436 () Bool)

(declare-fun tp!814013 () Bool)

(assert (=> b!2551771 (= e!1612436 (and tp_is_empty!13057 tp!814013))))

(assert (=> b!2551432 (= tp!813990 e!1612436)))

(assert (= (and b!2551432 ((_ is Cons!29566) (t!211365 tl!4068))) b!2551771))

(declare-fun e!1612437 () Bool)

(assert (=> b!2551426 (= tp!813989 e!1612437)))

(declare-fun b!2551775 () Bool)

(declare-fun tp!814018 () Bool)

(declare-fun tp!814017 () Bool)

(assert (=> b!2551775 (= e!1612437 (and tp!814018 tp!814017))))

(declare-fun b!2551772 () Bool)

(assert (=> b!2551772 (= e!1612437 tp_is_empty!13057)))

(declare-fun b!2551773 () Bool)

(declare-fun tp!814016 () Bool)

(declare-fun tp!814015 () Bool)

(assert (=> b!2551773 (= e!1612437 (and tp!814016 tp!814015))))

(declare-fun b!2551774 () Bool)

(declare-fun tp!814014 () Bool)

(assert (=> b!2551774 (= e!1612437 tp!814014)))

(assert (= (and b!2551426 ((_ is ElementMatch!7601) (regOne!15714 r!27340))) b!2551772))

(assert (= (and b!2551426 ((_ is Concat!12297) (regOne!15714 r!27340))) b!2551773))

(assert (= (and b!2551426 ((_ is Star!7601) (regOne!15714 r!27340))) b!2551774))

(assert (= (and b!2551426 ((_ is Union!7601) (regOne!15714 r!27340))) b!2551775))

(declare-fun e!1612438 () Bool)

(assert (=> b!2551426 (= tp!813987 e!1612438)))

(declare-fun b!2551779 () Bool)

(declare-fun tp!814023 () Bool)

(declare-fun tp!814022 () Bool)

(assert (=> b!2551779 (= e!1612438 (and tp!814023 tp!814022))))

(declare-fun b!2551776 () Bool)

(assert (=> b!2551776 (= e!1612438 tp_is_empty!13057)))

(declare-fun b!2551777 () Bool)

(declare-fun tp!814021 () Bool)

(declare-fun tp!814020 () Bool)

(assert (=> b!2551777 (= e!1612438 (and tp!814021 tp!814020))))

(declare-fun b!2551778 () Bool)

(declare-fun tp!814019 () Bool)

(assert (=> b!2551778 (= e!1612438 tp!814019)))

(assert (= (and b!2551426 ((_ is ElementMatch!7601) (regTwo!15714 r!27340))) b!2551776))

(assert (= (and b!2551426 ((_ is Concat!12297) (regTwo!15714 r!27340))) b!2551777))

(assert (= (and b!2551426 ((_ is Star!7601) (regTwo!15714 r!27340))) b!2551778))

(assert (= (and b!2551426 ((_ is Union!7601) (regTwo!15714 r!27340))) b!2551779))

(declare-fun e!1612439 () Bool)

(assert (=> b!2551430 (= tp!813988 e!1612439)))

(declare-fun b!2551783 () Bool)

(declare-fun tp!814028 () Bool)

(declare-fun tp!814027 () Bool)

(assert (=> b!2551783 (= e!1612439 (and tp!814028 tp!814027))))

(declare-fun b!2551780 () Bool)

(assert (=> b!2551780 (= e!1612439 tp_is_empty!13057)))

(declare-fun b!2551781 () Bool)

(declare-fun tp!814026 () Bool)

(declare-fun tp!814025 () Bool)

(assert (=> b!2551781 (= e!1612439 (and tp!814026 tp!814025))))

(declare-fun b!2551782 () Bool)

(declare-fun tp!814024 () Bool)

(assert (=> b!2551782 (= e!1612439 tp!814024)))

(assert (= (and b!2551430 ((_ is ElementMatch!7601) (reg!7930 r!27340))) b!2551780))

(assert (= (and b!2551430 ((_ is Concat!12297) (reg!7930 r!27340))) b!2551781))

(assert (= (and b!2551430 ((_ is Star!7601) (reg!7930 r!27340))) b!2551782))

(assert (= (and b!2551430 ((_ is Union!7601) (reg!7930 r!27340))) b!2551783))

(check-sat (not d!723456) (not b!2551705) (not b!2551726) (not b!2551588) (not b!2551580) (not b!2551714) (not bm!162501) (not b!2551685) (not b!2551736) (not d!723442) (not b!2551746) (not d!723462) (not b!2551764) (not b!2551762) (not b!2551564) (not b!2551778) (not b!2551773) (not bm!162458) (not b!2551738) (not b!2551441) (not bm!162459) (not bm!162484) (not b!2551765) (not b!2551783) (not b!2551556) (not d!723424) (not b!2551566) (not d!723448) (not b!2551559) (not b!2551591) (not b!2551760) (not d!723452) (not d!723426) (not b!2551781) (not b!2551782) (not b!2551558) (not bm!162502) (not b!2551775) (not bm!162489) (not d!723440) (not bm!162496) (not b!2551581) (not b!2551739) (not b!2551596) (not b!2551567) (not d!723428) (not bm!162506) (not b!2551774) (not bm!162488) (not b!2551779) (not b!2551572) (not b!2551448) (not b!2551590) (not b!2551599) (not b!2551578) (not b!2551747) (not b!2551724) (not bm!162497) (not b!2551744) (not d!723438) (not b!2551661) (not bm!162483) (not b!2551447) (not d!723460) (not b!2551766) (not b!2551570) (not b!2551573) (not b!2551771) (not bm!162503) (not d!723454) (not bm!162460) (not b!2551777) (not bm!162504) tp_is_empty!13057 (not b!2551598) (not b!2551761) (not d!723418))
(check-sat)
