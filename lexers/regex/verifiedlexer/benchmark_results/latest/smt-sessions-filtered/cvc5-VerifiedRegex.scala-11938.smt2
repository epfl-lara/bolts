; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668364 () Bool)

(assert start!668364)

(declare-fun b!6969398 () Bool)

(declare-fun e!4189389 () Bool)

(declare-fun tp!1923474 () Bool)

(declare-fun tp!1923473 () Bool)

(assert (=> b!6969398 (= e!4189389 (and tp!1923474 tp!1923473))))

(declare-fun b!6969399 () Bool)

(declare-fun res!2842809 () Bool)

(declare-fun e!4189387 () Bool)

(assert (=> b!6969399 (=> res!2842809 e!4189387)))

(declare-datatypes ((C!34514 0))(
  ( (C!34515 (val!26959 Int)) )
))
(declare-datatypes ((Regex!17122 0))(
  ( (ElementMatch!17122 (c!1291946 C!34514)) (Concat!25967 (regOne!34756 Regex!17122) (regTwo!34756 Regex!17122)) (EmptyExpr!17122) (Star!17122 (reg!17451 Regex!17122)) (EmptyLang!17122) (Union!17122 (regOne!34757 Regex!17122) (regTwo!34757 Regex!17122)) )
))
(declare-datatypes ((List!66925 0))(
  ( (Nil!66801) (Cons!66801 (h!73249 Regex!17122) (t!380668 List!66925)) )
))
(declare-fun l!9142 () List!66925)

(declare-fun isEmpty!39004 (List!66925) Bool)

(assert (=> b!6969399 (= res!2842809 (isEmpty!39004 l!9142))))

(declare-fun b!6969400 () Bool)

(declare-fun e!4189392 () Bool)

(assert (=> b!6969400 (= e!4189392 (not e!4189387))))

(declare-fun res!2842811 () Bool)

(assert (=> b!6969400 (=> res!2842811 e!4189387)))

(declare-fun r!13765 () Regex!17122)

(assert (=> b!6969400 (= res!2842811 (not (is-Union!17122 r!13765)))))

(declare-fun lt!2479493 () Bool)

(declare-datatypes ((List!66926 0))(
  ( (Nil!66802) (Cons!66802 (h!73250 C!34514) (t!380669 List!66926)) )
))
(declare-fun s!9351 () List!66926)

(declare-fun matchRSpec!4139 (Regex!17122 List!66926) Bool)

(assert (=> b!6969400 (= lt!2479493 (matchRSpec!4139 r!13765 s!9351))))

(declare-fun matchR!9224 (Regex!17122 List!66926) Bool)

(assert (=> b!6969400 (= lt!2479493 (matchR!9224 r!13765 s!9351))))

(declare-datatypes ((Unit!160896 0))(
  ( (Unit!160897) )
))
(declare-fun lt!2479492 () Unit!160896)

(declare-fun mainMatchTheorem!4133 (Regex!17122 List!66926) Unit!160896)

(assert (=> b!6969400 (= lt!2479492 (mainMatchTheorem!4133 r!13765 s!9351))))

(declare-fun b!6969401 () Bool)

(declare-fun res!2842812 () Bool)

(assert (=> b!6969401 (=> res!2842812 e!4189387)))

(declare-fun tail!13084 (List!66925) List!66925)

(assert (=> b!6969401 (= res!2842812 (isEmpty!39004 (tail!13084 l!9142)))))

(declare-fun b!6969402 () Bool)

(declare-fun res!2842810 () Bool)

(assert (=> b!6969402 (=> (not res!2842810) (not e!4189392))))

(declare-fun generalisedUnion!2597 (List!66925) Regex!17122)

(assert (=> b!6969402 (= res!2842810 (= r!13765 (generalisedUnion!2597 l!9142)))))

(declare-fun b!6969403 () Bool)

(declare-fun validRegex!8804 (Regex!17122) Bool)

(assert (=> b!6969403 (= e!4189387 (validRegex!8804 (regOne!34757 r!13765)))))

(declare-fun b!6969404 () Bool)

(declare-fun e!4189388 () Bool)

(declare-fun tp!1923468 () Bool)

(declare-fun tp!1923472 () Bool)

(assert (=> b!6969404 (= e!4189388 (and tp!1923468 tp!1923472))))

(declare-fun b!6969405 () Bool)

(declare-fun e!4189390 () Bool)

(assert (=> b!6969405 (= e!4189390 (matchRSpec!4139 (regTwo!34757 r!13765) s!9351))))

(declare-fun b!6969406 () Bool)

(declare-fun tp_is_empty!43469 () Bool)

(assert (=> b!6969406 (= e!4189389 tp_is_empty!43469)))

(declare-fun res!2842813 () Bool)

(assert (=> start!668364 (=> (not res!2842813) (not e!4189392))))

(declare-fun lambda!397607 () Int)

(declare-fun forall!15993 (List!66925 Int) Bool)

(assert (=> start!668364 (= res!2842813 (forall!15993 l!9142 lambda!397607))))

(assert (=> start!668364 e!4189392))

(assert (=> start!668364 e!4189388))

(assert (=> start!668364 e!4189389))

(declare-fun e!4189391 () Bool)

(assert (=> start!668364 e!4189391))

(declare-fun b!6969407 () Bool)

(declare-fun tp!1923471 () Bool)

(assert (=> b!6969407 (= e!4189389 tp!1923471)))

(declare-fun b!6969408 () Bool)

(declare-fun tp!1923470 () Bool)

(assert (=> b!6969408 (= e!4189391 (and tp_is_empty!43469 tp!1923470))))

(declare-fun b!6969409 () Bool)

(declare-fun res!2842815 () Bool)

(assert (=> b!6969409 (=> res!2842815 e!4189387)))

(assert (=> b!6969409 (= res!2842815 (not (= lt!2479493 e!4189390)))))

(declare-fun res!2842814 () Bool)

(assert (=> b!6969409 (=> res!2842814 e!4189390)))

(assert (=> b!6969409 (= res!2842814 (matchRSpec!4139 (regOne!34757 r!13765) s!9351))))

(declare-fun b!6969410 () Bool)

(declare-fun tp!1923469 () Bool)

(declare-fun tp!1923475 () Bool)

(assert (=> b!6969410 (= e!4189389 (and tp!1923469 tp!1923475))))

(assert (= (and start!668364 res!2842813) b!6969402))

(assert (= (and b!6969402 res!2842810) b!6969400))

(assert (= (and b!6969400 (not res!2842811)) b!6969399))

(assert (= (and b!6969399 (not res!2842809)) b!6969401))

(assert (= (and b!6969401 (not res!2842812)) b!6969409))

(assert (= (and b!6969409 (not res!2842814)) b!6969405))

(assert (= (and b!6969409 (not res!2842815)) b!6969403))

(assert (= (and start!668364 (is-Cons!66801 l!9142)) b!6969404))

(assert (= (and start!668364 (is-ElementMatch!17122 r!13765)) b!6969406))

(assert (= (and start!668364 (is-Concat!25967 r!13765)) b!6969410))

(assert (= (and start!668364 (is-Star!17122 r!13765)) b!6969407))

(assert (= (and start!668364 (is-Union!17122 r!13765)) b!6969398))

(assert (= (and start!668364 (is-Cons!66802 s!9351)) b!6969408))

(declare-fun m!7659108 () Bool)

(assert (=> b!6969402 m!7659108))

(declare-fun m!7659110 () Bool)

(assert (=> b!6969405 m!7659110))

(declare-fun m!7659112 () Bool)

(assert (=> b!6969401 m!7659112))

(assert (=> b!6969401 m!7659112))

(declare-fun m!7659114 () Bool)

(assert (=> b!6969401 m!7659114))

(declare-fun m!7659116 () Bool)

(assert (=> b!6969400 m!7659116))

(declare-fun m!7659118 () Bool)

(assert (=> b!6969400 m!7659118))

(declare-fun m!7659120 () Bool)

(assert (=> b!6969400 m!7659120))

(declare-fun m!7659122 () Bool)

(assert (=> b!6969409 m!7659122))

(declare-fun m!7659124 () Bool)

(assert (=> b!6969403 m!7659124))

(declare-fun m!7659126 () Bool)

(assert (=> start!668364 m!7659126))

(declare-fun m!7659128 () Bool)

(assert (=> b!6969399 m!7659128))

(push 1)

(assert (not b!6969404))

(assert (not b!6969398))

(assert (not b!6969401))

(assert (not b!6969408))

(assert (not b!6969405))

(assert tp_is_empty!43469)

(assert (not b!6969402))

(assert (not b!6969410))

(assert (not b!6969403))

(assert (not b!6969409))

(assert (not start!668364))

(assert (not b!6969399))

(assert (not b!6969407))

(assert (not b!6969400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2171011 () Bool)

(assert (=> d!2171011 (= (isEmpty!39004 (tail!13084 l!9142)) (is-Nil!66801 (tail!13084 l!9142)))))

(assert (=> b!6969401 d!2171011))

(declare-fun d!2171013 () Bool)

(assert (=> d!2171013 (= (tail!13084 l!9142) (t!380668 l!9142))))

(assert (=> b!6969401 d!2171013))

(declare-fun b!6969483 () Bool)

(assert (=> b!6969483 true))

(assert (=> b!6969483 true))

(declare-fun bs!1858982 () Bool)

(declare-fun b!6969491 () Bool)

(assert (= bs!1858982 (and b!6969491 b!6969483)))

(declare-fun lambda!397618 () Int)

(declare-fun lambda!397615 () Int)

(assert (=> bs!1858982 (not (= lambda!397618 lambda!397615))))

(assert (=> b!6969491 true))

(assert (=> b!6969491 true))

(declare-fun b!6969482 () Bool)

(declare-fun res!2842853 () Bool)

(declare-fun e!4189435 () Bool)

(assert (=> b!6969482 (=> res!2842853 e!4189435)))

(declare-fun call!632625 () Bool)

(assert (=> b!6969482 (= res!2842853 call!632625)))

(declare-fun e!4189430 () Bool)

(assert (=> b!6969482 (= e!4189430 e!4189435)))

(declare-fun call!632624 () Bool)

(assert (=> b!6969483 (= e!4189435 call!632624)))

(declare-fun b!6969484 () Bool)

(declare-fun c!1291958 () Bool)

(assert (=> b!6969484 (= c!1291958 (is-ElementMatch!17122 r!13765))))

(declare-fun e!4189429 () Bool)

(declare-fun e!4189434 () Bool)

(assert (=> b!6969484 (= e!4189429 e!4189434)))

(declare-fun c!1291957 () Bool)

(declare-fun bm!632619 () Bool)

(declare-fun Exists!4085 (Int) Bool)

(assert (=> bm!632619 (= call!632624 (Exists!4085 (ite c!1291957 lambda!397615 lambda!397618)))))

(declare-fun b!6969485 () Bool)

(declare-fun e!4189433 () Bool)

(assert (=> b!6969485 (= e!4189433 e!4189430)))

(assert (=> b!6969485 (= c!1291957 (is-Star!17122 r!13765))))

(declare-fun b!6969486 () Bool)

(declare-fun e!4189432 () Bool)

(assert (=> b!6969486 (= e!4189432 e!4189429)))

(declare-fun res!2842854 () Bool)

(assert (=> b!6969486 (= res!2842854 (not (is-EmptyLang!17122 r!13765)))))

(assert (=> b!6969486 (=> (not res!2842854) (not e!4189429))))

(declare-fun d!2171015 () Bool)

(declare-fun c!1291959 () Bool)

(assert (=> d!2171015 (= c!1291959 (is-EmptyExpr!17122 r!13765))))

(assert (=> d!2171015 (= (matchRSpec!4139 r!13765 s!9351) e!4189432)))

(declare-fun b!6969487 () Bool)

(declare-fun e!4189431 () Bool)

(assert (=> b!6969487 (= e!4189431 (matchRSpec!4139 (regTwo!34757 r!13765) s!9351))))

(declare-fun bm!632620 () Bool)

(declare-fun isEmpty!39006 (List!66926) Bool)

(assert (=> bm!632620 (= call!632625 (isEmpty!39006 s!9351))))

(declare-fun b!6969488 () Bool)

(assert (=> b!6969488 (= e!4189434 (= s!9351 (Cons!66802 (c!1291946 r!13765) Nil!66802)))))

(declare-fun b!6969489 () Bool)

(declare-fun c!1291956 () Bool)

(assert (=> b!6969489 (= c!1291956 (is-Union!17122 r!13765))))

(assert (=> b!6969489 (= e!4189434 e!4189433)))

(declare-fun b!6969490 () Bool)

(assert (=> b!6969490 (= e!4189433 e!4189431)))

(declare-fun res!2842855 () Bool)

(assert (=> b!6969490 (= res!2842855 (matchRSpec!4139 (regOne!34757 r!13765) s!9351))))

(assert (=> b!6969490 (=> res!2842855 e!4189431)))

(assert (=> b!6969491 (= e!4189430 call!632624)))

(declare-fun b!6969492 () Bool)

(assert (=> b!6969492 (= e!4189432 call!632625)))

(assert (= (and d!2171015 c!1291959) b!6969492))

(assert (= (and d!2171015 (not c!1291959)) b!6969486))

(assert (= (and b!6969486 res!2842854) b!6969484))

(assert (= (and b!6969484 c!1291958) b!6969488))

(assert (= (and b!6969484 (not c!1291958)) b!6969489))

(assert (= (and b!6969489 c!1291956) b!6969490))

(assert (= (and b!6969489 (not c!1291956)) b!6969485))

(assert (= (and b!6969490 (not res!2842855)) b!6969487))

(assert (= (and b!6969485 c!1291957) b!6969482))

(assert (= (and b!6969485 (not c!1291957)) b!6969491))

(assert (= (and b!6969482 (not res!2842853)) b!6969483))

(assert (= (or b!6969483 b!6969491) bm!632619))

(assert (= (or b!6969492 b!6969482) bm!632620))

(declare-fun m!7659152 () Bool)

(assert (=> bm!632619 m!7659152))

(assert (=> b!6969487 m!7659110))

(declare-fun m!7659154 () Bool)

(assert (=> bm!632620 m!7659154))

(assert (=> b!6969490 m!7659122))

(assert (=> b!6969400 d!2171015))

(declare-fun b!6969555 () Bool)

(declare-fun res!2842879 () Bool)

(declare-fun e!4189469 () Bool)

(assert (=> b!6969555 (=> (not res!2842879) (not e!4189469))))

(declare-fun call!632628 () Bool)

(assert (=> b!6969555 (= res!2842879 (not call!632628))))

(declare-fun b!6969556 () Bool)

(declare-fun res!2842882 () Bool)

(declare-fun e!4189472 () Bool)

(assert (=> b!6969556 (=> res!2842882 e!4189472)))

(assert (=> b!6969556 (= res!2842882 e!4189469)))

(declare-fun res!2842881 () Bool)

(assert (=> b!6969556 (=> (not res!2842881) (not e!4189469))))

(declare-fun lt!2479505 () Bool)

(assert (=> b!6969556 (= res!2842881 lt!2479505)))

(declare-fun bm!632623 () Bool)

(assert (=> bm!632623 (= call!632628 (isEmpty!39006 s!9351))))

(declare-fun b!6969557 () Bool)

(declare-fun res!2842880 () Bool)

(assert (=> b!6969557 (=> res!2842880 e!4189472)))

(assert (=> b!6969557 (= res!2842880 (not (is-ElementMatch!17122 r!13765)))))

(declare-fun e!4189470 () Bool)

(assert (=> b!6969557 (= e!4189470 e!4189472)))

(declare-fun b!6969558 () Bool)

(declare-fun e!4189471 () Bool)

(declare-fun nullable!6907 (Regex!17122) Bool)

(assert (=> b!6969558 (= e!4189471 (nullable!6907 r!13765))))

(declare-fun b!6969559 () Bool)

(declare-fun head!14016 (List!66926) C!34514)

(assert (=> b!6969559 (= e!4189469 (= (head!14016 s!9351) (c!1291946 r!13765)))))

(declare-fun d!2171019 () Bool)

(declare-fun e!4189468 () Bool)

(assert (=> d!2171019 e!4189468))

(declare-fun c!1291979 () Bool)

(assert (=> d!2171019 (= c!1291979 (is-EmptyExpr!17122 r!13765))))

(assert (=> d!2171019 (= lt!2479505 e!4189471)))

(declare-fun c!1291978 () Bool)

(assert (=> d!2171019 (= c!1291978 (isEmpty!39006 s!9351))))

(assert (=> d!2171019 (validRegex!8804 r!13765)))

(assert (=> d!2171019 (= (matchR!9224 r!13765 s!9351) lt!2479505)))

(declare-fun b!6969560 () Bool)

(assert (=> b!6969560 (= e!4189468 e!4189470)))

(declare-fun c!1291980 () Bool)

(assert (=> b!6969560 (= c!1291980 (is-EmptyLang!17122 r!13765))))

(declare-fun b!6969561 () Bool)

(declare-fun res!2842885 () Bool)

(declare-fun e!4189474 () Bool)

(assert (=> b!6969561 (=> res!2842885 e!4189474)))

(declare-fun tail!13086 (List!66926) List!66926)

(assert (=> b!6969561 (= res!2842885 (not (isEmpty!39006 (tail!13086 s!9351))))))

(declare-fun b!6969562 () Bool)

(declare-fun derivativeStep!5532 (Regex!17122 C!34514) Regex!17122)

(assert (=> b!6969562 (= e!4189471 (matchR!9224 (derivativeStep!5532 r!13765 (head!14016 s!9351)) (tail!13086 s!9351)))))

(declare-fun b!6969563 () Bool)

(declare-fun res!2842878 () Bool)

(assert (=> b!6969563 (=> (not res!2842878) (not e!4189469))))

(assert (=> b!6969563 (= res!2842878 (isEmpty!39006 (tail!13086 s!9351)))))

(declare-fun b!6969564 () Bool)

(declare-fun e!4189473 () Bool)

(assert (=> b!6969564 (= e!4189473 e!4189474)))

(declare-fun res!2842883 () Bool)

(assert (=> b!6969564 (=> res!2842883 e!4189474)))

(assert (=> b!6969564 (= res!2842883 call!632628)))

(declare-fun b!6969565 () Bool)

(assert (=> b!6969565 (= e!4189472 e!4189473)))

(declare-fun res!2842884 () Bool)

(assert (=> b!6969565 (=> (not res!2842884) (not e!4189473))))

(assert (=> b!6969565 (= res!2842884 (not lt!2479505))))

(declare-fun b!6969566 () Bool)

(assert (=> b!6969566 (= e!4189470 (not lt!2479505))))

(declare-fun b!6969567 () Bool)

(assert (=> b!6969567 (= e!4189468 (= lt!2479505 call!632628))))

(declare-fun b!6969568 () Bool)

(assert (=> b!6969568 (= e!4189474 (not (= (head!14016 s!9351) (c!1291946 r!13765))))))

(assert (= (and d!2171019 c!1291978) b!6969558))

(assert (= (and d!2171019 (not c!1291978)) b!6969562))

(assert (= (and d!2171019 c!1291979) b!6969567))

(assert (= (and d!2171019 (not c!1291979)) b!6969560))

(assert (= (and b!6969560 c!1291980) b!6969566))

(assert (= (and b!6969560 (not c!1291980)) b!6969557))

(assert (= (and b!6969557 (not res!2842880)) b!6969556))

(assert (= (and b!6969556 res!2842881) b!6969555))

(assert (= (and b!6969555 res!2842879) b!6969563))

(assert (= (and b!6969563 res!2842878) b!6969559))

(assert (= (and b!6969556 (not res!2842882)) b!6969565))

(assert (= (and b!6969565 res!2842884) b!6969564))

(assert (= (and b!6969564 (not res!2842883)) b!6969561))

(assert (= (and b!6969561 (not res!2842885)) b!6969568))

(assert (= (or b!6969567 b!6969555 b!6969564) bm!632623))

(assert (=> bm!632623 m!7659154))

(declare-fun m!7659170 () Bool)

(assert (=> b!6969559 m!7659170))

(assert (=> b!6969562 m!7659170))

(assert (=> b!6969562 m!7659170))

(declare-fun m!7659172 () Bool)

(assert (=> b!6969562 m!7659172))

(declare-fun m!7659174 () Bool)

(assert (=> b!6969562 m!7659174))

(assert (=> b!6969562 m!7659172))

(assert (=> b!6969562 m!7659174))

(declare-fun m!7659176 () Bool)

(assert (=> b!6969562 m!7659176))

(assert (=> b!6969563 m!7659174))

(assert (=> b!6969563 m!7659174))

(declare-fun m!7659178 () Bool)

(assert (=> b!6969563 m!7659178))

(assert (=> b!6969568 m!7659170))

(assert (=> b!6969561 m!7659174))

(assert (=> b!6969561 m!7659174))

(assert (=> b!6969561 m!7659178))

(declare-fun m!7659180 () Bool)

(assert (=> b!6969558 m!7659180))

(assert (=> d!2171019 m!7659154))

(declare-fun m!7659182 () Bool)

(assert (=> d!2171019 m!7659182))

(assert (=> b!6969400 d!2171019))

(declare-fun d!2171023 () Bool)

(assert (=> d!2171023 (= (matchR!9224 r!13765 s!9351) (matchRSpec!4139 r!13765 s!9351))))

(declare-fun lt!2479508 () Unit!160896)

(declare-fun choose!51902 (Regex!17122 List!66926) Unit!160896)

(assert (=> d!2171023 (= lt!2479508 (choose!51902 r!13765 s!9351))))

(assert (=> d!2171023 (validRegex!8804 r!13765)))

(assert (=> d!2171023 (= (mainMatchTheorem!4133 r!13765 s!9351) lt!2479508)))

(declare-fun bs!1858984 () Bool)

(assert (= bs!1858984 d!2171023))

(assert (=> bs!1858984 m!7659118))

(assert (=> bs!1858984 m!7659116))

(declare-fun m!7659184 () Bool)

(assert (=> bs!1858984 m!7659184))

(assert (=> bs!1858984 m!7659182))

(assert (=> b!6969400 d!2171023))

(declare-fun bs!1858985 () Bool)

(declare-fun d!2171025 () Bool)

(assert (= bs!1858985 (and d!2171025 start!668364)))

(declare-fun lambda!397622 () Int)

(assert (=> bs!1858985 (= lambda!397622 lambda!397607)))

(declare-fun b!6969607 () Bool)

(declare-fun e!4189504 () Bool)

(declare-fun lt!2479511 () Regex!17122)

(declare-fun isEmptyLang!2060 (Regex!17122) Bool)

(assert (=> b!6969607 (= e!4189504 (isEmptyLang!2060 lt!2479511))))

(declare-fun b!6969608 () Bool)

(declare-fun e!4189503 () Bool)

(declare-fun head!14017 (List!66925) Regex!17122)

(assert (=> b!6969608 (= e!4189503 (= lt!2479511 (head!14017 l!9142)))))

(declare-fun b!6969609 () Bool)

(declare-fun isUnion!1488 (Regex!17122) Bool)

(assert (=> b!6969609 (= e!4189503 (isUnion!1488 lt!2479511))))

(declare-fun b!6969610 () Bool)

(declare-fun e!4189506 () Regex!17122)

(assert (=> b!6969610 (= e!4189506 (Union!17122 (h!73249 l!9142) (generalisedUnion!2597 (t!380668 l!9142))))))

(declare-fun b!6969611 () Bool)

(assert (=> b!6969611 (= e!4189504 e!4189503)))

(declare-fun c!1291994 () Bool)

(assert (=> b!6969611 (= c!1291994 (isEmpty!39004 (tail!13084 l!9142)))))

(declare-fun e!4189502 () Bool)

(assert (=> d!2171025 e!4189502))

(declare-fun res!2842900 () Bool)

(assert (=> d!2171025 (=> (not res!2842900) (not e!4189502))))

(assert (=> d!2171025 (= res!2842900 (validRegex!8804 lt!2479511))))

(declare-fun e!4189501 () Regex!17122)

(assert (=> d!2171025 (= lt!2479511 e!4189501)))

(declare-fun c!1291993 () Bool)

(declare-fun e!4189505 () Bool)

(assert (=> d!2171025 (= c!1291993 e!4189505)))

(declare-fun res!2842901 () Bool)

(assert (=> d!2171025 (=> (not res!2842901) (not e!4189505))))

(assert (=> d!2171025 (= res!2842901 (is-Cons!66801 l!9142))))

(assert (=> d!2171025 (forall!15993 l!9142 lambda!397622)))

(assert (=> d!2171025 (= (generalisedUnion!2597 l!9142) lt!2479511)))

(declare-fun b!6969612 () Bool)

(assert (=> b!6969612 (= e!4189501 e!4189506)))

(declare-fun c!1291995 () Bool)

(assert (=> b!6969612 (= c!1291995 (is-Cons!66801 l!9142))))

(declare-fun b!6969613 () Bool)

(assert (=> b!6969613 (= e!4189506 EmptyLang!17122)))

(declare-fun b!6969614 () Bool)

(assert (=> b!6969614 (= e!4189505 (isEmpty!39004 (t!380668 l!9142)))))

(declare-fun b!6969615 () Bool)

(assert (=> b!6969615 (= e!4189501 (h!73249 l!9142))))

(declare-fun b!6969616 () Bool)

(assert (=> b!6969616 (= e!4189502 e!4189504)))

(declare-fun c!1291996 () Bool)

(assert (=> b!6969616 (= c!1291996 (isEmpty!39004 l!9142))))

(assert (= (and d!2171025 res!2842901) b!6969614))

(assert (= (and d!2171025 c!1291993) b!6969615))

(assert (= (and d!2171025 (not c!1291993)) b!6969612))

(assert (= (and b!6969612 c!1291995) b!6969610))

(assert (= (and b!6969612 (not c!1291995)) b!6969613))

(assert (= (and d!2171025 res!2842900) b!6969616))

(assert (= (and b!6969616 c!1291996) b!6969607))

(assert (= (and b!6969616 (not c!1291996)) b!6969611))

(assert (= (and b!6969611 c!1291994) b!6969608))

(assert (= (and b!6969611 (not c!1291994)) b!6969609))

(declare-fun m!7659186 () Bool)

(assert (=> b!6969608 m!7659186))

(declare-fun m!7659188 () Bool)

(assert (=> d!2171025 m!7659188))

(declare-fun m!7659190 () Bool)

(assert (=> d!2171025 m!7659190))

(declare-fun m!7659192 () Bool)

(assert (=> b!6969607 m!7659192))

(declare-fun m!7659194 () Bool)

(assert (=> b!6969614 m!7659194))

(declare-fun m!7659196 () Bool)

(assert (=> b!6969610 m!7659196))

(assert (=> b!6969616 m!7659128))

(assert (=> b!6969611 m!7659112))

(assert (=> b!6969611 m!7659112))

(assert (=> b!6969611 m!7659114))

(declare-fun m!7659198 () Bool)

(assert (=> b!6969609 m!7659198))

(assert (=> b!6969402 d!2171025))

(declare-fun bs!1858986 () Bool)

(declare-fun b!6969618 () Bool)

(assert (= bs!1858986 (and b!6969618 b!6969483)))

(declare-fun lambda!397623 () Int)

(assert (=> bs!1858986 (= (and (= (reg!17451 (regOne!34757 r!13765)) (reg!17451 r!13765)) (= (regOne!34757 r!13765) r!13765)) (= lambda!397623 lambda!397615))))

(declare-fun bs!1858987 () Bool)

(assert (= bs!1858987 (and b!6969618 b!6969491)))

(assert (=> bs!1858987 (not (= lambda!397623 lambda!397618))))

(assert (=> b!6969618 true))

(assert (=> b!6969618 true))

(declare-fun bs!1858988 () Bool)

(declare-fun b!6969626 () Bool)

(assert (= bs!1858988 (and b!6969626 b!6969483)))

(declare-fun lambda!397624 () Int)

(assert (=> bs!1858988 (not (= lambda!397624 lambda!397615))))

(declare-fun bs!1858989 () Bool)

(assert (= bs!1858989 (and b!6969626 b!6969491)))

(assert (=> bs!1858989 (= (and (= (regOne!34756 (regOne!34757 r!13765)) (regOne!34756 r!13765)) (= (regTwo!34756 (regOne!34757 r!13765)) (regTwo!34756 r!13765))) (= lambda!397624 lambda!397618))))

(declare-fun bs!1858990 () Bool)

(assert (= bs!1858990 (and b!6969626 b!6969618)))

(assert (=> bs!1858990 (not (= lambda!397624 lambda!397623))))

(assert (=> b!6969626 true))

(assert (=> b!6969626 true))

(declare-fun b!6969617 () Bool)

(declare-fun res!2842902 () Bool)

(declare-fun e!4189513 () Bool)

(assert (=> b!6969617 (=> res!2842902 e!4189513)))

(declare-fun call!632636 () Bool)

(assert (=> b!6969617 (= res!2842902 call!632636)))

(declare-fun e!4189508 () Bool)

(assert (=> b!6969617 (= e!4189508 e!4189513)))

(declare-fun call!632635 () Bool)

(assert (=> b!6969618 (= e!4189513 call!632635)))

(declare-fun b!6969619 () Bool)

(declare-fun c!1291999 () Bool)

(assert (=> b!6969619 (= c!1291999 (is-ElementMatch!17122 (regOne!34757 r!13765)))))

(declare-fun e!4189507 () Bool)

(declare-fun e!4189512 () Bool)

(assert (=> b!6969619 (= e!4189507 e!4189512)))

(declare-fun c!1291998 () Bool)

(declare-fun bm!632630 () Bool)

(assert (=> bm!632630 (= call!632635 (Exists!4085 (ite c!1291998 lambda!397623 lambda!397624)))))

(declare-fun b!6969620 () Bool)

(declare-fun e!4189511 () Bool)

(assert (=> b!6969620 (= e!4189511 e!4189508)))

(assert (=> b!6969620 (= c!1291998 (is-Star!17122 (regOne!34757 r!13765)))))

(declare-fun b!6969621 () Bool)

(declare-fun e!4189510 () Bool)

(assert (=> b!6969621 (= e!4189510 e!4189507)))

(declare-fun res!2842903 () Bool)

(assert (=> b!6969621 (= res!2842903 (not (is-EmptyLang!17122 (regOne!34757 r!13765))))))

(assert (=> b!6969621 (=> (not res!2842903) (not e!4189507))))

(declare-fun d!2171027 () Bool)

(declare-fun c!1292000 () Bool)

(assert (=> d!2171027 (= c!1292000 (is-EmptyExpr!17122 (regOne!34757 r!13765)))))

(assert (=> d!2171027 (= (matchRSpec!4139 (regOne!34757 r!13765) s!9351) e!4189510)))

(declare-fun b!6969622 () Bool)

(declare-fun e!4189509 () Bool)

(assert (=> b!6969622 (= e!4189509 (matchRSpec!4139 (regTwo!34757 (regOne!34757 r!13765)) s!9351))))

(declare-fun bm!632631 () Bool)

(assert (=> bm!632631 (= call!632636 (isEmpty!39006 s!9351))))

(declare-fun b!6969623 () Bool)

(assert (=> b!6969623 (= e!4189512 (= s!9351 (Cons!66802 (c!1291946 (regOne!34757 r!13765)) Nil!66802)))))

(declare-fun b!6969624 () Bool)

(declare-fun c!1291997 () Bool)

(assert (=> b!6969624 (= c!1291997 (is-Union!17122 (regOne!34757 r!13765)))))

(assert (=> b!6969624 (= e!4189512 e!4189511)))

(declare-fun b!6969625 () Bool)

(assert (=> b!6969625 (= e!4189511 e!4189509)))

(declare-fun res!2842904 () Bool)

(assert (=> b!6969625 (= res!2842904 (matchRSpec!4139 (regOne!34757 (regOne!34757 r!13765)) s!9351))))

(assert (=> b!6969625 (=> res!2842904 e!4189509)))

(assert (=> b!6969626 (= e!4189508 call!632635)))

(declare-fun b!6969627 () Bool)

(assert (=> b!6969627 (= e!4189510 call!632636)))

(assert (= (and d!2171027 c!1292000) b!6969627))

(assert (= (and d!2171027 (not c!1292000)) b!6969621))

(assert (= (and b!6969621 res!2842903) b!6969619))

(assert (= (and b!6969619 c!1291999) b!6969623))

(assert (= (and b!6969619 (not c!1291999)) b!6969624))

(assert (= (and b!6969624 c!1291997) b!6969625))

(assert (= (and b!6969624 (not c!1291997)) b!6969620))

(assert (= (and b!6969625 (not res!2842904)) b!6969622))

(assert (= (and b!6969620 c!1291998) b!6969617))

(assert (= (and b!6969620 (not c!1291998)) b!6969626))

(assert (= (and b!6969617 (not res!2842902)) b!6969618))

(assert (= (or b!6969618 b!6969626) bm!632630))

(assert (= (or b!6969627 b!6969617) bm!632631))

(declare-fun m!7659206 () Bool)

(assert (=> bm!632630 m!7659206))

(declare-fun m!7659208 () Bool)

(assert (=> b!6969622 m!7659208))

(assert (=> bm!632631 m!7659154))

(declare-fun m!7659210 () Bool)

(assert (=> b!6969625 m!7659210))

(assert (=> b!6969409 d!2171027))

(declare-fun b!6969655 () Bool)

(declare-fun res!2842921 () Bool)

(declare-fun e!4189536 () Bool)

(assert (=> b!6969655 (=> res!2842921 e!4189536)))

(assert (=> b!6969655 (= res!2842921 (not (is-Concat!25967 (regOne!34757 r!13765))))))

(declare-fun e!4189540 () Bool)

(assert (=> b!6969655 (= e!4189540 e!4189536)))

(declare-fun b!6969656 () Bool)

(declare-fun e!4189537 () Bool)

(declare-fun call!632646 () Bool)

(assert (=> b!6969656 (= e!4189537 call!632646)))

(declare-fun b!6969657 () Bool)

(declare-fun e!4189535 () Bool)

(declare-fun e!4189541 () Bool)

(assert (=> b!6969657 (= e!4189535 e!4189541)))

(declare-fun c!1292007 () Bool)

(assert (=> b!6969657 (= c!1292007 (is-Star!17122 (regOne!34757 r!13765)))))

(declare-fun b!6969658 () Bool)

(declare-fun e!4189538 () Bool)

(assert (=> b!6969658 (= e!4189541 e!4189538)))

(declare-fun res!2842920 () Bool)

(assert (=> b!6969658 (= res!2842920 (not (nullable!6907 (reg!17451 (regOne!34757 r!13765)))))))

(assert (=> b!6969658 (=> (not res!2842920) (not e!4189538))))

(declare-fun b!6969659 () Bool)

(assert (=> b!6969659 (= e!4189536 e!4189537)))

(declare-fun res!2842922 () Bool)

(assert (=> b!6969659 (=> (not res!2842922) (not e!4189537))))

(declare-fun call!632648 () Bool)

(assert (=> b!6969659 (= res!2842922 call!632648)))

(declare-fun b!6969660 () Bool)

(declare-fun call!632647 () Bool)

(assert (=> b!6969660 (= e!4189538 call!632647)))

(declare-fun bm!632642 () Bool)

(declare-fun c!1292008 () Bool)

(assert (=> bm!632642 (= call!632647 (validRegex!8804 (ite c!1292007 (reg!17451 (regOne!34757 r!13765)) (ite c!1292008 (regOne!34757 (regOne!34757 r!13765)) (regOne!34756 (regOne!34757 r!13765))))))))

(declare-fun bm!632643 () Bool)

(assert (=> bm!632643 (= call!632646 (validRegex!8804 (ite c!1292008 (regTwo!34757 (regOne!34757 r!13765)) (regTwo!34756 (regOne!34757 r!13765)))))))

(declare-fun b!6969661 () Bool)

(declare-fun res!2842924 () Bool)

(declare-fun e!4189539 () Bool)

(assert (=> b!6969661 (=> (not res!2842924) (not e!4189539))))

(assert (=> b!6969661 (= res!2842924 call!632648)))

(assert (=> b!6969661 (= e!4189540 e!4189539)))

(declare-fun bm!632641 () Bool)

(assert (=> bm!632641 (= call!632648 call!632647)))

(declare-fun d!2171031 () Bool)

(declare-fun res!2842923 () Bool)

(assert (=> d!2171031 (=> res!2842923 e!4189535)))

(assert (=> d!2171031 (= res!2842923 (is-ElementMatch!17122 (regOne!34757 r!13765)))))

(assert (=> d!2171031 (= (validRegex!8804 (regOne!34757 r!13765)) e!4189535)))

(declare-fun b!6969662 () Bool)

(assert (=> b!6969662 (= e!4189541 e!4189540)))

(assert (=> b!6969662 (= c!1292008 (is-Union!17122 (regOne!34757 r!13765)))))

(declare-fun b!6969663 () Bool)

(assert (=> b!6969663 (= e!4189539 call!632646)))

(assert (= (and d!2171031 (not res!2842923)) b!6969657))

(assert (= (and b!6969657 c!1292007) b!6969658))

(assert (= (and b!6969657 (not c!1292007)) b!6969662))

(assert (= (and b!6969658 res!2842920) b!6969660))

(assert (= (and b!6969662 c!1292008) b!6969661))

(assert (= (and b!6969662 (not c!1292008)) b!6969655))

(assert (= (and b!6969661 res!2842924) b!6969663))

(assert (= (and b!6969655 (not res!2842921)) b!6969659))

(assert (= (and b!6969659 res!2842922) b!6969656))

(assert (= (or b!6969661 b!6969659) bm!632641))

(assert (= (or b!6969663 b!6969656) bm!632643))

(assert (= (or b!6969660 bm!632641) bm!632642))

(declare-fun m!7659212 () Bool)

(assert (=> b!6969658 m!7659212))

(declare-fun m!7659214 () Bool)

(assert (=> bm!632642 m!7659214))

(declare-fun m!7659216 () Bool)

(assert (=> bm!632643 m!7659216))

(assert (=> b!6969403 d!2171031))

(declare-fun bs!1858991 () Bool)

(declare-fun b!6969665 () Bool)

(assert (= bs!1858991 (and b!6969665 b!6969483)))

(declare-fun lambda!397625 () Int)

(assert (=> bs!1858991 (= (and (= (reg!17451 (regTwo!34757 r!13765)) (reg!17451 r!13765)) (= (regTwo!34757 r!13765) r!13765)) (= lambda!397625 lambda!397615))))

(declare-fun bs!1858992 () Bool)

(assert (= bs!1858992 (and b!6969665 b!6969491)))

(assert (=> bs!1858992 (not (= lambda!397625 lambda!397618))))

(declare-fun bs!1858993 () Bool)

(assert (= bs!1858993 (and b!6969665 b!6969618)))

(assert (=> bs!1858993 (= (and (= (reg!17451 (regTwo!34757 r!13765)) (reg!17451 (regOne!34757 r!13765))) (= (regTwo!34757 r!13765) (regOne!34757 r!13765))) (= lambda!397625 lambda!397623))))

(declare-fun bs!1858994 () Bool)

(assert (= bs!1858994 (and b!6969665 b!6969626)))

(assert (=> bs!1858994 (not (= lambda!397625 lambda!397624))))

(assert (=> b!6969665 true))

(assert (=> b!6969665 true))

(declare-fun bs!1858995 () Bool)

(declare-fun b!6969673 () Bool)

(assert (= bs!1858995 (and b!6969673 b!6969626)))

(declare-fun lambda!397626 () Int)

(assert (=> bs!1858995 (= (and (= (regOne!34756 (regTwo!34757 r!13765)) (regOne!34756 (regOne!34757 r!13765))) (= (regTwo!34756 (regTwo!34757 r!13765)) (regTwo!34756 (regOne!34757 r!13765)))) (= lambda!397626 lambda!397624))))

(declare-fun bs!1858996 () Bool)

(assert (= bs!1858996 (and b!6969673 b!6969665)))

(assert (=> bs!1858996 (not (= lambda!397626 lambda!397625))))

(declare-fun bs!1858997 () Bool)

(assert (= bs!1858997 (and b!6969673 b!6969483)))

(assert (=> bs!1858997 (not (= lambda!397626 lambda!397615))))

(declare-fun bs!1858998 () Bool)

(assert (= bs!1858998 (and b!6969673 b!6969618)))

(assert (=> bs!1858998 (not (= lambda!397626 lambda!397623))))

(declare-fun bs!1858999 () Bool)

(assert (= bs!1858999 (and b!6969673 b!6969491)))

(assert (=> bs!1858999 (= (and (= (regOne!34756 (regTwo!34757 r!13765)) (regOne!34756 r!13765)) (= (regTwo!34756 (regTwo!34757 r!13765)) (regTwo!34756 r!13765))) (= lambda!397626 lambda!397618))))

(assert (=> b!6969673 true))

(assert (=> b!6969673 true))

(declare-fun b!6969664 () Bool)

(declare-fun res!2842925 () Bool)

(declare-fun e!4189548 () Bool)

(assert (=> b!6969664 (=> res!2842925 e!4189548)))

(declare-fun call!632650 () Bool)

(assert (=> b!6969664 (= res!2842925 call!632650)))

(declare-fun e!4189543 () Bool)

(assert (=> b!6969664 (= e!4189543 e!4189548)))

(declare-fun call!632649 () Bool)

(assert (=> b!6969665 (= e!4189548 call!632649)))

(declare-fun b!6969666 () Bool)

(declare-fun c!1292011 () Bool)

(assert (=> b!6969666 (= c!1292011 (is-ElementMatch!17122 (regTwo!34757 r!13765)))))

(declare-fun e!4189542 () Bool)

(declare-fun e!4189547 () Bool)

(assert (=> b!6969666 (= e!4189542 e!4189547)))

(declare-fun c!1292010 () Bool)

(declare-fun bm!632644 () Bool)

(assert (=> bm!632644 (= call!632649 (Exists!4085 (ite c!1292010 lambda!397625 lambda!397626)))))

(declare-fun b!6969667 () Bool)

(declare-fun e!4189546 () Bool)

(assert (=> b!6969667 (= e!4189546 e!4189543)))

(assert (=> b!6969667 (= c!1292010 (is-Star!17122 (regTwo!34757 r!13765)))))

(declare-fun b!6969668 () Bool)

(declare-fun e!4189545 () Bool)

(assert (=> b!6969668 (= e!4189545 e!4189542)))

(declare-fun res!2842926 () Bool)

(assert (=> b!6969668 (= res!2842926 (not (is-EmptyLang!17122 (regTwo!34757 r!13765))))))

(assert (=> b!6969668 (=> (not res!2842926) (not e!4189542))))

(declare-fun d!2171035 () Bool)

(declare-fun c!1292012 () Bool)

(assert (=> d!2171035 (= c!1292012 (is-EmptyExpr!17122 (regTwo!34757 r!13765)))))

(assert (=> d!2171035 (= (matchRSpec!4139 (regTwo!34757 r!13765) s!9351) e!4189545)))

(declare-fun b!6969669 () Bool)

(declare-fun e!4189544 () Bool)

(assert (=> b!6969669 (= e!4189544 (matchRSpec!4139 (regTwo!34757 (regTwo!34757 r!13765)) s!9351))))

(declare-fun bm!632645 () Bool)

(assert (=> bm!632645 (= call!632650 (isEmpty!39006 s!9351))))

(declare-fun b!6969670 () Bool)

(assert (=> b!6969670 (= e!4189547 (= s!9351 (Cons!66802 (c!1291946 (regTwo!34757 r!13765)) Nil!66802)))))

(declare-fun b!6969671 () Bool)

(declare-fun c!1292009 () Bool)

(assert (=> b!6969671 (= c!1292009 (is-Union!17122 (regTwo!34757 r!13765)))))

(assert (=> b!6969671 (= e!4189547 e!4189546)))

(declare-fun b!6969672 () Bool)

(assert (=> b!6969672 (= e!4189546 e!4189544)))

(declare-fun res!2842927 () Bool)

(assert (=> b!6969672 (= res!2842927 (matchRSpec!4139 (regOne!34757 (regTwo!34757 r!13765)) s!9351))))

(assert (=> b!6969672 (=> res!2842927 e!4189544)))

(assert (=> b!6969673 (= e!4189543 call!632649)))

(declare-fun b!6969674 () Bool)

(assert (=> b!6969674 (= e!4189545 call!632650)))

(assert (= (and d!2171035 c!1292012) b!6969674))

(assert (= (and d!2171035 (not c!1292012)) b!6969668))

(assert (= (and b!6969668 res!2842926) b!6969666))

(assert (= (and b!6969666 c!1292011) b!6969670))

(assert (= (and b!6969666 (not c!1292011)) b!6969671))

(assert (= (and b!6969671 c!1292009) b!6969672))

(assert (= (and b!6969671 (not c!1292009)) b!6969667))

(assert (= (and b!6969672 (not res!2842927)) b!6969669))

(assert (= (and b!6969667 c!1292010) b!6969664))

(assert (= (and b!6969667 (not c!1292010)) b!6969673))

(assert (= (and b!6969664 (not res!2842925)) b!6969665))

(assert (= (or b!6969665 b!6969673) bm!632644))

(assert (= (or b!6969674 b!6969664) bm!632645))

(declare-fun m!7659218 () Bool)

(assert (=> bm!632644 m!7659218))

(declare-fun m!7659220 () Bool)

(assert (=> b!6969669 m!7659220))

(assert (=> bm!632645 m!7659154))

(declare-fun m!7659222 () Bool)

(assert (=> b!6969672 m!7659222))

(assert (=> b!6969405 d!2171035))

(declare-fun d!2171037 () Bool)

(declare-fun res!2842932 () Bool)

(declare-fun e!4189553 () Bool)

(assert (=> d!2171037 (=> res!2842932 e!4189553)))

(assert (=> d!2171037 (= res!2842932 (is-Nil!66801 l!9142))))

(assert (=> d!2171037 (= (forall!15993 l!9142 lambda!397607) e!4189553)))

(declare-fun b!6969679 () Bool)

(declare-fun e!4189554 () Bool)

(assert (=> b!6969679 (= e!4189553 e!4189554)))

(declare-fun res!2842933 () Bool)

(assert (=> b!6969679 (=> (not res!2842933) (not e!4189554))))

(declare-fun dynLambda!26636 (Int Regex!17122) Bool)

(assert (=> b!6969679 (= res!2842933 (dynLambda!26636 lambda!397607 (h!73249 l!9142)))))

(declare-fun b!6969680 () Bool)

(assert (=> b!6969680 (= e!4189554 (forall!15993 (t!380668 l!9142) lambda!397607))))

(assert (= (and d!2171037 (not res!2842932)) b!6969679))

(assert (= (and b!6969679 res!2842933) b!6969680))

(declare-fun b_lambda!260765 () Bool)

(assert (=> (not b_lambda!260765) (not b!6969679)))

(declare-fun m!7659224 () Bool)

(assert (=> b!6969679 m!7659224))

(declare-fun m!7659226 () Bool)

(assert (=> b!6969680 m!7659226))

(assert (=> start!668364 d!2171037))

(declare-fun d!2171039 () Bool)

(assert (=> d!2171039 (= (isEmpty!39004 l!9142) (is-Nil!66801 l!9142))))

(assert (=> b!6969399 d!2171039))

(declare-fun b!6969705 () Bool)

(declare-fun e!4189565 () Bool)

(assert (=> b!6969705 (= e!4189565 tp_is_empty!43469)))

(declare-fun b!6969708 () Bool)

(declare-fun tp!1923514 () Bool)

(declare-fun tp!1923511 () Bool)

(assert (=> b!6969708 (= e!4189565 (and tp!1923514 tp!1923511))))

(declare-fun b!6969707 () Bool)

(declare-fun tp!1923513 () Bool)

(assert (=> b!6969707 (= e!4189565 tp!1923513)))

(declare-fun b!6969706 () Bool)

(declare-fun tp!1923512 () Bool)

(declare-fun tp!1923510 () Bool)

(assert (=> b!6969706 (= e!4189565 (and tp!1923512 tp!1923510))))

(assert (=> b!6969407 (= tp!1923471 e!4189565)))

(assert (= (and b!6969407 (is-ElementMatch!17122 (reg!17451 r!13765))) b!6969705))

(assert (= (and b!6969407 (is-Concat!25967 (reg!17451 r!13765))) b!6969706))

(assert (= (and b!6969407 (is-Star!17122 (reg!17451 r!13765))) b!6969707))

(assert (= (and b!6969407 (is-Union!17122 (reg!17451 r!13765))) b!6969708))

(declare-fun b!6969714 () Bool)

(declare-fun e!4189568 () Bool)

(assert (=> b!6969714 (= e!4189568 tp_is_empty!43469)))

(declare-fun b!6969718 () Bool)

(declare-fun tp!1923519 () Bool)

(declare-fun tp!1923516 () Bool)

(assert (=> b!6969718 (= e!4189568 (and tp!1923519 tp!1923516))))

(declare-fun b!6969717 () Bool)

(declare-fun tp!1923518 () Bool)

(assert (=> b!6969717 (= e!4189568 tp!1923518)))

(declare-fun b!6969715 () Bool)

(declare-fun tp!1923517 () Bool)

(declare-fun tp!1923515 () Bool)

(assert (=> b!6969715 (= e!4189568 (and tp!1923517 tp!1923515))))

(assert (=> b!6969398 (= tp!1923474 e!4189568)))

(assert (= (and b!6969398 (is-ElementMatch!17122 (regOne!34757 r!13765))) b!6969714))

(assert (= (and b!6969398 (is-Concat!25967 (regOne!34757 r!13765))) b!6969715))

(assert (= (and b!6969398 (is-Star!17122 (regOne!34757 r!13765))) b!6969717))

(assert (= (and b!6969398 (is-Union!17122 (regOne!34757 r!13765))) b!6969718))

(declare-fun b!6969721 () Bool)

(declare-fun e!4189573 () Bool)

(assert (=> b!6969721 (= e!4189573 tp_is_empty!43469)))

(declare-fun b!6969724 () Bool)

(declare-fun tp!1923524 () Bool)

(declare-fun tp!1923521 () Bool)

(assert (=> b!6969724 (= e!4189573 (and tp!1923524 tp!1923521))))

(declare-fun b!6969723 () Bool)

(declare-fun tp!1923523 () Bool)

(assert (=> b!6969723 (= e!4189573 tp!1923523)))

(declare-fun b!6969722 () Bool)

(declare-fun tp!1923522 () Bool)

(declare-fun tp!1923520 () Bool)

(assert (=> b!6969722 (= e!4189573 (and tp!1923522 tp!1923520))))

(assert (=> b!6969398 (= tp!1923473 e!4189573)))

(assert (= (and b!6969398 (is-ElementMatch!17122 (regTwo!34757 r!13765))) b!6969721))

(assert (= (and b!6969398 (is-Concat!25967 (regTwo!34757 r!13765))) b!6969722))

(assert (= (and b!6969398 (is-Star!17122 (regTwo!34757 r!13765))) b!6969723))

(assert (= (and b!6969398 (is-Union!17122 (regTwo!34757 r!13765))) b!6969724))

(declare-fun b!6969729 () Bool)

(declare-fun e!4189576 () Bool)

(declare-fun tp!1923527 () Bool)

(assert (=> b!6969729 (= e!4189576 (and tp_is_empty!43469 tp!1923527))))

(assert (=> b!6969408 (= tp!1923470 e!4189576)))

(assert (= (and b!6969408 (is-Cons!66802 (t!380669 s!9351))) b!6969729))

(declare-fun b!6969730 () Bool)

(declare-fun e!4189577 () Bool)

(assert (=> b!6969730 (= e!4189577 tp_is_empty!43469)))

(declare-fun b!6969733 () Bool)

(declare-fun tp!1923532 () Bool)

(declare-fun tp!1923529 () Bool)

(assert (=> b!6969733 (= e!4189577 (and tp!1923532 tp!1923529))))

(declare-fun b!6969732 () Bool)

(declare-fun tp!1923531 () Bool)

(assert (=> b!6969732 (= e!4189577 tp!1923531)))

(declare-fun b!6969731 () Bool)

(declare-fun tp!1923530 () Bool)

(declare-fun tp!1923528 () Bool)

(assert (=> b!6969731 (= e!4189577 (and tp!1923530 tp!1923528))))

(assert (=> b!6969410 (= tp!1923469 e!4189577)))

(assert (= (and b!6969410 (is-ElementMatch!17122 (regOne!34756 r!13765))) b!6969730))

(assert (= (and b!6969410 (is-Concat!25967 (regOne!34756 r!13765))) b!6969731))

(assert (= (and b!6969410 (is-Star!17122 (regOne!34756 r!13765))) b!6969732))

(assert (= (and b!6969410 (is-Union!17122 (regOne!34756 r!13765))) b!6969733))

(declare-fun b!6969734 () Bool)

(declare-fun e!4189578 () Bool)

(assert (=> b!6969734 (= e!4189578 tp_is_empty!43469)))

(declare-fun b!6969737 () Bool)

(declare-fun tp!1923537 () Bool)

(declare-fun tp!1923534 () Bool)

(assert (=> b!6969737 (= e!4189578 (and tp!1923537 tp!1923534))))

(declare-fun b!6969736 () Bool)

(declare-fun tp!1923536 () Bool)

(assert (=> b!6969736 (= e!4189578 tp!1923536)))

(declare-fun b!6969735 () Bool)

(declare-fun tp!1923535 () Bool)

(declare-fun tp!1923533 () Bool)

(assert (=> b!6969735 (= e!4189578 (and tp!1923535 tp!1923533))))

(assert (=> b!6969410 (= tp!1923475 e!4189578)))

(assert (= (and b!6969410 (is-ElementMatch!17122 (regTwo!34756 r!13765))) b!6969734))

(assert (= (and b!6969410 (is-Concat!25967 (regTwo!34756 r!13765))) b!6969735))

(assert (= (and b!6969410 (is-Star!17122 (regTwo!34756 r!13765))) b!6969736))

(assert (= (and b!6969410 (is-Union!17122 (regTwo!34756 r!13765))) b!6969737))

(declare-fun b!6969738 () Bool)

(declare-fun e!4189579 () Bool)

(assert (=> b!6969738 (= e!4189579 tp_is_empty!43469)))

(declare-fun b!6969741 () Bool)

(declare-fun tp!1923542 () Bool)

(declare-fun tp!1923539 () Bool)

(assert (=> b!6969741 (= e!4189579 (and tp!1923542 tp!1923539))))

(declare-fun b!6969740 () Bool)

(declare-fun tp!1923541 () Bool)

(assert (=> b!6969740 (= e!4189579 tp!1923541)))

(declare-fun b!6969739 () Bool)

(declare-fun tp!1923540 () Bool)

(declare-fun tp!1923538 () Bool)

(assert (=> b!6969739 (= e!4189579 (and tp!1923540 tp!1923538))))

(assert (=> b!6969404 (= tp!1923468 e!4189579)))

(assert (= (and b!6969404 (is-ElementMatch!17122 (h!73249 l!9142))) b!6969738))

(assert (= (and b!6969404 (is-Concat!25967 (h!73249 l!9142))) b!6969739))

(assert (= (and b!6969404 (is-Star!17122 (h!73249 l!9142))) b!6969740))

(assert (= (and b!6969404 (is-Union!17122 (h!73249 l!9142))) b!6969741))

(declare-fun b!6969746 () Bool)

(declare-fun e!4189582 () Bool)

(declare-fun tp!1923547 () Bool)

(declare-fun tp!1923548 () Bool)

(assert (=> b!6969746 (= e!4189582 (and tp!1923547 tp!1923548))))

(assert (=> b!6969404 (= tp!1923472 e!4189582)))

(assert (= (and b!6969404 (is-Cons!66801 (t!380668 l!9142))) b!6969746))

(declare-fun b_lambda!260767 () Bool)

(assert (= b_lambda!260765 (or start!668364 b_lambda!260767)))

(declare-fun bs!1859000 () Bool)

(declare-fun d!2171041 () Bool)

(assert (= bs!1859000 (and d!2171041 start!668364)))

(assert (=> bs!1859000 (= (dynLambda!26636 lambda!397607 (h!73249 l!9142)) (validRegex!8804 (h!73249 l!9142)))))

(declare-fun m!7659228 () Bool)

(assert (=> bs!1859000 m!7659228))

(assert (=> b!6969679 d!2171041))

(push 1)

(assert (not b!6969487))

(assert (not d!2171023))

(assert (not b_lambda!260767))

(assert (not b!6969610))

(assert (not bm!632623))

(assert (not bm!632642))

(assert (not b!6969609))

(assert (not b!6969706))

(assert (not b!6969717))

(assert (not b!6969739))

(assert (not b!6969718))

(assert (not b!6969733))

(assert (not b!6969715))

(assert (not b!6969568))

(assert (not b!6969558))

(assert (not b!6969740))

(assert (not b!6969708))

(assert (not bm!632630))

(assert (not b!6969722))

(assert (not b!6969723))

(assert (not b!6969724))

(assert (not b!6969741))

(assert (not b!6969658))

(assert (not b!6969746))

(assert (not b!6969563))

(assert tp_is_empty!43469)

(assert (not b!6969562))

(assert (not b!6969607))

(assert (not bm!632644))

(assert (not b!6969614))

(assert (not b!6969608))

(assert (not b!6969707))

(assert (not b!6969731))

(assert (not b!6969736))

(assert (not b!6969680))

(assert (not bm!632643))

(assert (not b!6969616))

(assert (not b!6969490))

(assert (not b!6969561))

(assert (not d!2171019))

(assert (not b!6969625))

(assert (not bm!632631))

(assert (not b!6969611))

(assert (not b!6969735))

(assert (not b!6969732))

(assert (not b!6969669))

(assert (not b!6969737))

(assert (not b!6969672))

(assert (not bm!632619))

(assert (not b!6969559))

(assert (not d!2171025))

(assert (not bm!632645))

(assert (not b!6969729))

(assert (not b!6969622))

(assert (not bm!632620))

(assert (not bs!1859000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

