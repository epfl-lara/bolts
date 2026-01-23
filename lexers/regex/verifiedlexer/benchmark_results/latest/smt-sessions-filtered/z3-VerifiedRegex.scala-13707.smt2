; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733288 () Bool)

(assert start!733288)

(declare-fun b!7608471 () Bool)

(declare-fun e!4525417 () Bool)

(declare-fun tp!2219668 () Bool)

(assert (=> b!7608471 (= e!4525417 tp!2219668)))

(declare-fun b!7608472 () Bool)

(declare-fun tp!2219666 () Bool)

(declare-fun tp!2219667 () Bool)

(assert (=> b!7608472 (= e!4525417 (and tp!2219666 tp!2219667))))

(declare-fun b!7608473 () Bool)

(declare-fun tp_is_empty!50773 () Bool)

(assert (=> b!7608473 (= e!4525417 tp_is_empty!50773)))

(declare-fun b!7608474 () Bool)

(declare-fun res!3046364 () Bool)

(declare-fun e!4525416 () Bool)

(assert (=> b!7608474 (=> (not res!3046364) (not e!4525416))))

(declare-datatypes ((C!40744 0))(
  ( (C!40745 (val!30812 Int)) )
))
(declare-datatypes ((Regex!20209 0))(
  ( (ElementMatch!20209 (c!1403000 C!40744)) (Concat!29054 (regOne!40930 Regex!20209) (regTwo!40930 Regex!20209)) (EmptyExpr!20209) (Star!20209 (reg!20538 Regex!20209)) (EmptyLang!20209) (Union!20209 (regOne!40931 Regex!20209) (regTwo!40931 Regex!20209)) )
))
(declare-fun r!19218 () Regex!20209)

(declare-fun nullable!8830 (Regex!20209) Bool)

(assert (=> b!7608474 (= res!3046364 (nullable!8830 (regOne!40931 r!19218)))))

(declare-fun b!7608475 () Bool)

(declare-fun res!3046365 () Bool)

(assert (=> b!7608475 (=> (not res!3046365) (not e!4525416))))

(declare-fun validRegex!10631 (Regex!20209) Bool)

(assert (=> b!7608475 (= res!3046365 (validRegex!10631 (regOne!40931 r!19218)))))

(declare-fun b!7608476 () Bool)

(declare-fun regexDepth!471 (Regex!20209) Int)

(assert (=> b!7608476 (= e!4525416 (>= (regexDepth!471 (regOne!40931 r!19218)) (regexDepth!471 r!19218)))))

(declare-fun b!7608477 () Bool)

(declare-fun res!3046363 () Bool)

(assert (=> b!7608477 (=> (not res!3046363) (not e!4525416))))

(get-info :version)

(assert (=> b!7608477 (= res!3046363 (and (not ((_ is ElementMatch!20209) r!19218)) (not ((_ is Star!20209) r!19218)) ((_ is Union!20209) r!19218)))))

(declare-fun b!7608478 () Bool)

(declare-fun res!3046362 () Bool)

(assert (=> b!7608478 (=> (not res!3046362) (not e!4525416))))

(assert (=> b!7608478 (= res!3046362 (nullable!8830 r!19218))))

(declare-fun b!7608479 () Bool)

(declare-fun tp!2219669 () Bool)

(declare-fun tp!2219665 () Bool)

(assert (=> b!7608479 (= e!4525417 (and tp!2219669 tp!2219665))))

(declare-fun res!3046366 () Bool)

(assert (=> start!733288 (=> (not res!3046366) (not e!4525416))))

(assert (=> start!733288 (= res!3046366 (validRegex!10631 r!19218))))

(assert (=> start!733288 e!4525416))

(assert (=> start!733288 e!4525417))

(assert (= (and start!733288 res!3046366) b!7608478))

(assert (= (and b!7608478 res!3046362) b!7608477))

(assert (= (and b!7608477 res!3046363) b!7608474))

(assert (= (and b!7608474 res!3046364) b!7608475))

(assert (= (and b!7608475 res!3046365) b!7608476))

(assert (= (and start!733288 ((_ is ElementMatch!20209) r!19218)) b!7608473))

(assert (= (and start!733288 ((_ is Concat!29054) r!19218)) b!7608479))

(assert (= (and start!733288 ((_ is Star!20209) r!19218)) b!7608471))

(assert (= (and start!733288 ((_ is Union!20209) r!19218)) b!7608472))

(declare-fun m!8147402 () Bool)

(assert (=> b!7608478 m!8147402))

(declare-fun m!8147404 () Bool)

(assert (=> b!7608474 m!8147404))

(declare-fun m!8147406 () Bool)

(assert (=> b!7608475 m!8147406))

(declare-fun m!8147408 () Bool)

(assert (=> start!733288 m!8147408))

(declare-fun m!8147410 () Bool)

(assert (=> b!7608476 m!8147410))

(declare-fun m!8147412 () Bool)

(assert (=> b!7608476 m!8147412))

(check-sat (not b!7608479) (not b!7608478) (not b!7608471) (not b!7608476) (not start!733288) (not b!7608474) (not b!7608472) (not b!7608475) tp_is_empty!50773)
(check-sat)
(get-model)

(declare-fun b!7608525 () Bool)

(declare-fun res!3046394 () Bool)

(declare-fun e!4525459 () Bool)

(assert (=> b!7608525 (=> (not res!3046394) (not e!4525459))))

(declare-fun call!698612 () Bool)

(assert (=> b!7608525 (= res!3046394 call!698612)))

(declare-fun e!4525456 () Bool)

(assert (=> b!7608525 (= e!4525456 e!4525459)))

(declare-fun bm!698607 () Bool)

(declare-fun call!698613 () Bool)

(assert (=> bm!698607 (= call!698612 call!698613)))

(declare-fun bm!698608 () Bool)

(declare-fun call!698614 () Bool)

(declare-fun c!1403011 () Bool)

(assert (=> bm!698608 (= call!698614 (validRegex!10631 (ite c!1403011 (regTwo!40931 (regOne!40931 r!19218)) (regTwo!40930 (regOne!40931 r!19218)))))))

(declare-fun b!7608526 () Bool)

(declare-fun e!4525454 () Bool)

(assert (=> b!7608526 (= e!4525454 call!698613)))

(declare-fun b!7608527 () Bool)

(assert (=> b!7608527 (= e!4525459 call!698614)))

(declare-fun bm!698609 () Bool)

(declare-fun c!1403012 () Bool)

(assert (=> bm!698609 (= call!698613 (validRegex!10631 (ite c!1403012 (reg!20538 (regOne!40931 r!19218)) (ite c!1403011 (regOne!40931 (regOne!40931 r!19218)) (regOne!40930 (regOne!40931 r!19218))))))))

(declare-fun b!7608528 () Bool)

(declare-fun res!3046396 () Bool)

(declare-fun e!4525458 () Bool)

(assert (=> b!7608528 (=> res!3046396 e!4525458)))

(assert (=> b!7608528 (= res!3046396 (not ((_ is Concat!29054) (regOne!40931 r!19218))))))

(assert (=> b!7608528 (= e!4525456 e!4525458)))

(declare-fun d!2322018 () Bool)

(declare-fun res!3046392 () Bool)

(declare-fun e!4525457 () Bool)

(assert (=> d!2322018 (=> res!3046392 e!4525457)))

(assert (=> d!2322018 (= res!3046392 ((_ is ElementMatch!20209) (regOne!40931 r!19218)))))

(assert (=> d!2322018 (= (validRegex!10631 (regOne!40931 r!19218)) e!4525457)))

(declare-fun b!7608529 () Bool)

(declare-fun e!4525455 () Bool)

(assert (=> b!7608529 (= e!4525455 call!698614)))

(declare-fun b!7608530 () Bool)

(declare-fun e!4525453 () Bool)

(assert (=> b!7608530 (= e!4525457 e!4525453)))

(assert (=> b!7608530 (= c!1403012 ((_ is Star!20209) (regOne!40931 r!19218)))))

(declare-fun b!7608531 () Bool)

(assert (=> b!7608531 (= e!4525453 e!4525454)))

(declare-fun res!3046393 () Bool)

(assert (=> b!7608531 (= res!3046393 (not (nullable!8830 (reg!20538 (regOne!40931 r!19218)))))))

(assert (=> b!7608531 (=> (not res!3046393) (not e!4525454))))

(declare-fun b!7608532 () Bool)

(assert (=> b!7608532 (= e!4525458 e!4525455)))

(declare-fun res!3046395 () Bool)

(assert (=> b!7608532 (=> (not res!3046395) (not e!4525455))))

(assert (=> b!7608532 (= res!3046395 call!698612)))

(declare-fun b!7608533 () Bool)

(assert (=> b!7608533 (= e!4525453 e!4525456)))

(assert (=> b!7608533 (= c!1403011 ((_ is Union!20209) (regOne!40931 r!19218)))))

(assert (= (and d!2322018 (not res!3046392)) b!7608530))

(assert (= (and b!7608530 c!1403012) b!7608531))

(assert (= (and b!7608530 (not c!1403012)) b!7608533))

(assert (= (and b!7608531 res!3046393) b!7608526))

(assert (= (and b!7608533 c!1403011) b!7608525))

(assert (= (and b!7608533 (not c!1403011)) b!7608528))

(assert (= (and b!7608525 res!3046394) b!7608527))

(assert (= (and b!7608528 (not res!3046396)) b!7608532))

(assert (= (and b!7608532 res!3046395) b!7608529))

(assert (= (or b!7608525 b!7608532) bm!698607))

(assert (= (or b!7608527 b!7608529) bm!698608))

(assert (= (or b!7608526 bm!698607) bm!698609))

(declare-fun m!8147420 () Bool)

(assert (=> bm!698608 m!8147420))

(declare-fun m!8147422 () Bool)

(assert (=> bm!698609 m!8147422))

(declare-fun m!8147424 () Bool)

(assert (=> b!7608531 m!8147424))

(assert (=> b!7608475 d!2322018))

(declare-fun d!2322022 () Bool)

(declare-fun nullableFct!3513 (Regex!20209) Bool)

(assert (=> d!2322022 (= (nullable!8830 (regOne!40931 r!19218)) (nullableFct!3513 (regOne!40931 r!19218)))))

(declare-fun bs!1942793 () Bool)

(assert (= bs!1942793 d!2322022))

(declare-fun m!8147426 () Bool)

(assert (=> bs!1942793 m!8147426))

(assert (=> b!7608474 d!2322022))

(declare-fun b!7608534 () Bool)

(declare-fun res!3046399 () Bool)

(declare-fun e!4525466 () Bool)

(assert (=> b!7608534 (=> (not res!3046399) (not e!4525466))))

(declare-fun call!698615 () Bool)

(assert (=> b!7608534 (= res!3046399 call!698615)))

(declare-fun e!4525463 () Bool)

(assert (=> b!7608534 (= e!4525463 e!4525466)))

(declare-fun bm!698610 () Bool)

(declare-fun call!698616 () Bool)

(assert (=> bm!698610 (= call!698615 call!698616)))

(declare-fun bm!698611 () Bool)

(declare-fun call!698617 () Bool)

(declare-fun c!1403013 () Bool)

(assert (=> bm!698611 (= call!698617 (validRegex!10631 (ite c!1403013 (regTwo!40931 r!19218) (regTwo!40930 r!19218))))))

(declare-fun b!7608535 () Bool)

(declare-fun e!4525461 () Bool)

(assert (=> b!7608535 (= e!4525461 call!698616)))

(declare-fun b!7608536 () Bool)

(assert (=> b!7608536 (= e!4525466 call!698617)))

(declare-fun c!1403014 () Bool)

(declare-fun bm!698612 () Bool)

(assert (=> bm!698612 (= call!698616 (validRegex!10631 (ite c!1403014 (reg!20538 r!19218) (ite c!1403013 (regOne!40931 r!19218) (regOne!40930 r!19218)))))))

(declare-fun b!7608537 () Bool)

(declare-fun res!3046401 () Bool)

(declare-fun e!4525465 () Bool)

(assert (=> b!7608537 (=> res!3046401 e!4525465)))

(assert (=> b!7608537 (= res!3046401 (not ((_ is Concat!29054) r!19218)))))

(assert (=> b!7608537 (= e!4525463 e!4525465)))

(declare-fun d!2322024 () Bool)

(declare-fun res!3046397 () Bool)

(declare-fun e!4525464 () Bool)

(assert (=> d!2322024 (=> res!3046397 e!4525464)))

(assert (=> d!2322024 (= res!3046397 ((_ is ElementMatch!20209) r!19218))))

(assert (=> d!2322024 (= (validRegex!10631 r!19218) e!4525464)))

(declare-fun b!7608538 () Bool)

(declare-fun e!4525462 () Bool)

(assert (=> b!7608538 (= e!4525462 call!698617)))

(declare-fun b!7608539 () Bool)

(declare-fun e!4525460 () Bool)

(assert (=> b!7608539 (= e!4525464 e!4525460)))

(assert (=> b!7608539 (= c!1403014 ((_ is Star!20209) r!19218))))

(declare-fun b!7608540 () Bool)

(assert (=> b!7608540 (= e!4525460 e!4525461)))

(declare-fun res!3046398 () Bool)

(assert (=> b!7608540 (= res!3046398 (not (nullable!8830 (reg!20538 r!19218))))))

(assert (=> b!7608540 (=> (not res!3046398) (not e!4525461))))

(declare-fun b!7608541 () Bool)

(assert (=> b!7608541 (= e!4525465 e!4525462)))

(declare-fun res!3046400 () Bool)

(assert (=> b!7608541 (=> (not res!3046400) (not e!4525462))))

(assert (=> b!7608541 (= res!3046400 call!698615)))

(declare-fun b!7608542 () Bool)

(assert (=> b!7608542 (= e!4525460 e!4525463)))

(assert (=> b!7608542 (= c!1403013 ((_ is Union!20209) r!19218))))

(assert (= (and d!2322024 (not res!3046397)) b!7608539))

(assert (= (and b!7608539 c!1403014) b!7608540))

(assert (= (and b!7608539 (not c!1403014)) b!7608542))

(assert (= (and b!7608540 res!3046398) b!7608535))

(assert (= (and b!7608542 c!1403013) b!7608534))

(assert (= (and b!7608542 (not c!1403013)) b!7608537))

(assert (= (and b!7608534 res!3046399) b!7608536))

(assert (= (and b!7608537 (not res!3046401)) b!7608541))

(assert (= (and b!7608541 res!3046400) b!7608538))

(assert (= (or b!7608534 b!7608541) bm!698610))

(assert (= (or b!7608536 b!7608538) bm!698611))

(assert (= (or b!7608535 bm!698610) bm!698612))

(declare-fun m!8147428 () Bool)

(assert (=> bm!698611 m!8147428))

(declare-fun m!8147430 () Bool)

(assert (=> bm!698612 m!8147430))

(declare-fun m!8147432 () Bool)

(assert (=> b!7608540 m!8147432))

(assert (=> start!733288 d!2322024))

(declare-fun d!2322026 () Bool)

(assert (=> d!2322026 (= (nullable!8830 r!19218) (nullableFct!3513 r!19218))))

(declare-fun bs!1942794 () Bool)

(assert (= bs!1942794 d!2322026))

(declare-fun m!8147434 () Bool)

(assert (=> bs!1942794 m!8147434))

(assert (=> b!7608478 d!2322026))

(declare-fun bm!698656 () Bool)

(declare-fun call!698660 () Int)

(declare-fun c!1403065 () Bool)

(assert (=> bm!698656 (= call!698660 (regexDepth!471 (ite c!1403065 (regOne!40931 (regOne!40931 r!19218)) (regTwo!40930 (regOne!40931 r!19218)))))))

(declare-fun d!2322028 () Bool)

(declare-fun e!4525543 () Bool)

(assert (=> d!2322028 e!4525543))

(declare-fun res!3046422 () Bool)

(assert (=> d!2322028 (=> (not res!3046422) (not e!4525543))))

(declare-fun lt!2654953 () Int)

(assert (=> d!2322028 (= res!3046422 (> lt!2654953 0))))

(declare-fun e!4525527 () Int)

(assert (=> d!2322028 (= lt!2654953 e!4525527)))

(declare-fun c!1403062 () Bool)

(assert (=> d!2322028 (= c!1403062 ((_ is ElementMatch!20209) (regOne!40931 r!19218)))))

(assert (=> d!2322028 (= (regexDepth!471 (regOne!40931 r!19218)) lt!2654953)))

(declare-fun b!7608649 () Bool)

(declare-fun e!4525538 () Int)

(declare-fun call!698669 () Int)

(assert (=> b!7608649 (= e!4525538 (+ 1 call!698669))))

(declare-fun b!7608651 () Bool)

(declare-fun e!4525529 () Bool)

(declare-fun e!4525528 () Bool)

(assert (=> b!7608651 (= e!4525529 e!4525528)))

(declare-fun res!3046421 () Bool)

(assert (=> b!7608651 (= res!3046421 (> lt!2654953 call!698660))))

(assert (=> b!7608651 (=> (not res!3046421) (not e!4525528))))

(declare-fun b!7608652 () Bool)

(assert (=> b!7608652 (= e!4525538 1)))

(declare-fun b!7608654 () Bool)

(declare-fun call!698667 () Int)

(assert (=> b!7608654 (= e!4525528 (> lt!2654953 call!698667))))

(declare-fun b!7608656 () Bool)

(declare-fun e!4525541 () Int)

(assert (=> b!7608656 (= e!4525541 e!4525538)))

(declare-fun c!1403063 () Bool)

(assert (=> b!7608656 (= c!1403063 ((_ is Concat!29054) (regOne!40931 r!19218)))))

(declare-fun bm!698659 () Bool)

(declare-fun call!698664 () Int)

(declare-fun c!1403059 () Bool)

(assert (=> bm!698659 (= call!698664 (regexDepth!471 (ite c!1403059 (regTwo!40931 (regOne!40931 r!19218)) (regTwo!40930 (regOne!40931 r!19218)))))))

(declare-fun bm!698660 () Bool)

(declare-fun c!1403060 () Bool)

(assert (=> bm!698660 (= call!698667 (regexDepth!471 (ite c!1403065 (regTwo!40931 (regOne!40931 r!19218)) (ite c!1403060 (regOne!40930 (regOne!40931 r!19218)) (reg!20538 (regOne!40931 r!19218))))))))

(declare-fun b!7608659 () Bool)

(declare-fun e!4525537 () Bool)

(assert (=> b!7608659 (= e!4525529 e!4525537)))

(assert (=> b!7608659 (= c!1403060 ((_ is Concat!29054) (regOne!40931 r!19218)))))

(declare-fun b!7608660 () Bool)

(assert (=> b!7608660 (= c!1403059 ((_ is Union!20209) (regOne!40931 r!19218)))))

(declare-fun e!4525542 () Int)

(assert (=> b!7608660 (= e!4525542 e!4525541)))

(declare-fun b!7608661 () Bool)

(declare-fun e!4525533 () Bool)

(assert (=> b!7608661 (= e!4525533 (= lt!2654953 1))))

(declare-fun bm!698661 () Bool)

(declare-fun call!698662 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!698661 (= call!698669 (maxBigInt!0 call!698662 call!698664))))

(declare-fun call!698663 () Int)

(declare-fun c!1403057 () Bool)

(declare-fun bm!698662 () Bool)

(assert (=> bm!698662 (= call!698663 (regexDepth!471 (ite c!1403057 (reg!20538 (regOne!40931 r!19218)) (ite c!1403059 (regOne!40931 (regOne!40931 r!19218)) (regOne!40930 (regOne!40931 r!19218))))))))

(declare-fun bm!698663 () Bool)

(declare-fun call!698661 () Int)

(assert (=> bm!698663 (= call!698661 call!698667)))

(declare-fun b!7608662 () Bool)

(declare-fun c!1403064 () Bool)

(assert (=> b!7608662 (= c!1403064 ((_ is Star!20209) (regOne!40931 r!19218)))))

(assert (=> b!7608662 (= e!4525537 e!4525533)))

(declare-fun b!7608663 () Bool)

(assert (=> b!7608663 (= e!4525533 (> lt!2654953 call!698661))))

(declare-fun b!7608664 () Bool)

(declare-fun res!3046424 () Bool)

(declare-fun e!4525534 () Bool)

(assert (=> b!7608664 (=> (not res!3046424) (not e!4525534))))

(assert (=> b!7608664 (= res!3046424 (> lt!2654953 call!698661))))

(assert (=> b!7608664 (= e!4525537 e!4525534)))

(declare-fun bm!698664 () Bool)

(assert (=> bm!698664 (= call!698662 call!698663)))

(declare-fun b!7608665 () Bool)

(assert (=> b!7608665 (= e!4525527 1)))

(declare-fun b!7608666 () Bool)

(assert (=> b!7608666 (= e!4525527 e!4525542)))

(assert (=> b!7608666 (= c!1403057 ((_ is Star!20209) (regOne!40931 r!19218)))))

(declare-fun b!7608667 () Bool)

(assert (=> b!7608667 (= e!4525534 (> lt!2654953 call!698660))))

(declare-fun b!7608668 () Bool)

(assert (=> b!7608668 (= e!4525541 (+ 1 call!698669))))

(declare-fun b!7608669 () Bool)

(assert (=> b!7608669 (= e!4525543 e!4525529)))

(assert (=> b!7608669 (= c!1403065 ((_ is Union!20209) (regOne!40931 r!19218)))))

(declare-fun b!7608670 () Bool)

(assert (=> b!7608670 (= e!4525542 (+ 1 call!698663))))

(assert (= (and d!2322028 c!1403062) b!7608665))

(assert (= (and d!2322028 (not c!1403062)) b!7608666))

(assert (= (and b!7608666 c!1403057) b!7608670))

(assert (= (and b!7608666 (not c!1403057)) b!7608660))

(assert (= (and b!7608660 c!1403059) b!7608668))

(assert (= (and b!7608660 (not c!1403059)) b!7608656))

(assert (= (and b!7608656 c!1403063) b!7608649))

(assert (= (and b!7608656 (not c!1403063)) b!7608652))

(assert (= (or b!7608668 b!7608649) bm!698659))

(assert (= (or b!7608668 b!7608649) bm!698664))

(assert (= (or b!7608668 b!7608649) bm!698661))

(assert (= (or b!7608670 bm!698664) bm!698662))

(assert (= (and d!2322028 res!3046422) b!7608669))

(assert (= (and b!7608669 c!1403065) b!7608651))

(assert (= (and b!7608669 (not c!1403065)) b!7608659))

(assert (= (and b!7608651 res!3046421) b!7608654))

(assert (= (and b!7608659 c!1403060) b!7608664))

(assert (= (and b!7608659 (not c!1403060)) b!7608662))

(assert (= (and b!7608664 res!3046424) b!7608667))

(assert (= (and b!7608662 c!1403064) b!7608663))

(assert (= (and b!7608662 (not c!1403064)) b!7608661))

(assert (= (or b!7608664 b!7608663) bm!698663))

(assert (= (or b!7608654 bm!698663) bm!698660))

(assert (= (or b!7608651 b!7608667) bm!698656))

(declare-fun m!8147466 () Bool)

(assert (=> bm!698660 m!8147466))

(declare-fun m!8147468 () Bool)

(assert (=> bm!698661 m!8147468))

(declare-fun m!8147470 () Bool)

(assert (=> bm!698656 m!8147470))

(declare-fun m!8147472 () Bool)

(assert (=> bm!698662 m!8147472))

(declare-fun m!8147474 () Bool)

(assert (=> bm!698659 m!8147474))

(assert (=> b!7608476 d!2322028))

(declare-fun bm!698665 () Bool)

(declare-fun call!698670 () Int)

(declare-fun c!1403072 () Bool)

(assert (=> bm!698665 (= call!698670 (regexDepth!471 (ite c!1403072 (regOne!40931 r!19218) (regTwo!40930 r!19218))))))

(declare-fun d!2322038 () Bool)

(declare-fun e!4525555 () Bool)

(assert (=> d!2322038 e!4525555))

(declare-fun res!3046429 () Bool)

(assert (=> d!2322038 (=> (not res!3046429) (not e!4525555))))

(declare-fun lt!2654954 () Int)

(assert (=> d!2322038 (= res!3046429 (> lt!2654954 0))))

(declare-fun e!4525546 () Int)

(assert (=> d!2322038 (= lt!2654954 e!4525546)))

(declare-fun c!1403069 () Bool)

(assert (=> d!2322038 (= c!1403069 ((_ is ElementMatch!20209) r!19218))))

(assert (=> d!2322038 (= (regexDepth!471 r!19218) lt!2654954)))

(declare-fun b!7608681 () Bool)

(declare-fun e!4525552 () Int)

(declare-fun call!698676 () Int)

(assert (=> b!7608681 (= e!4525552 (+ 1 call!698676))))

(declare-fun b!7608682 () Bool)

(declare-fun e!4525548 () Bool)

(declare-fun e!4525547 () Bool)

(assert (=> b!7608682 (= e!4525548 e!4525547)))

(declare-fun res!3046428 () Bool)

(assert (=> b!7608682 (= res!3046428 (> lt!2654954 call!698670))))

(assert (=> b!7608682 (=> (not res!3046428) (not e!4525547))))

(declare-fun b!7608683 () Bool)

(assert (=> b!7608683 (= e!4525552 1)))

(declare-fun b!7608684 () Bool)

(declare-fun call!698675 () Int)

(assert (=> b!7608684 (= e!4525547 (> lt!2654954 call!698675))))

(declare-fun b!7608685 () Bool)

(declare-fun e!4525553 () Int)

(assert (=> b!7608685 (= e!4525553 e!4525552)))

(declare-fun c!1403070 () Bool)

(assert (=> b!7608685 (= c!1403070 ((_ is Concat!29054) r!19218))))

(declare-fun bm!698666 () Bool)

(declare-fun call!698674 () Int)

(declare-fun c!1403067 () Bool)

(assert (=> bm!698666 (= call!698674 (regexDepth!471 (ite c!1403067 (regTwo!40931 r!19218) (regTwo!40930 r!19218))))))

(declare-fun bm!698667 () Bool)

(declare-fun c!1403068 () Bool)

(assert (=> bm!698667 (= call!698675 (regexDepth!471 (ite c!1403072 (regTwo!40931 r!19218) (ite c!1403068 (regOne!40930 r!19218) (reg!20538 r!19218)))))))

(declare-fun b!7608686 () Bool)

(declare-fun e!4525551 () Bool)

(assert (=> b!7608686 (= e!4525548 e!4525551)))

(assert (=> b!7608686 (= c!1403068 ((_ is Concat!29054) r!19218))))

(declare-fun b!7608687 () Bool)

(assert (=> b!7608687 (= c!1403067 ((_ is Union!20209) r!19218))))

(declare-fun e!4525554 () Int)

(assert (=> b!7608687 (= e!4525554 e!4525553)))

(declare-fun b!7608688 () Bool)

(declare-fun e!4525549 () Bool)

(assert (=> b!7608688 (= e!4525549 (= lt!2654954 1))))

(declare-fun bm!698668 () Bool)

(declare-fun call!698672 () Int)

(assert (=> bm!698668 (= call!698676 (maxBigInt!0 call!698672 call!698674))))

(declare-fun bm!698669 () Bool)

(declare-fun call!698673 () Int)

(declare-fun c!1403066 () Bool)

(assert (=> bm!698669 (= call!698673 (regexDepth!471 (ite c!1403066 (reg!20538 r!19218) (ite c!1403067 (regOne!40931 r!19218) (regOne!40930 r!19218)))))))

(declare-fun bm!698670 () Bool)

(declare-fun call!698671 () Int)

(assert (=> bm!698670 (= call!698671 call!698675)))

(declare-fun b!7608689 () Bool)

(declare-fun c!1403071 () Bool)

(assert (=> b!7608689 (= c!1403071 ((_ is Star!20209) r!19218))))

(assert (=> b!7608689 (= e!4525551 e!4525549)))

(declare-fun b!7608690 () Bool)

(assert (=> b!7608690 (= e!4525549 (> lt!2654954 call!698671))))

(declare-fun b!7608691 () Bool)

(declare-fun res!3046430 () Bool)

(declare-fun e!4525550 () Bool)

(assert (=> b!7608691 (=> (not res!3046430) (not e!4525550))))

(assert (=> b!7608691 (= res!3046430 (> lt!2654954 call!698671))))

(assert (=> b!7608691 (= e!4525551 e!4525550)))

(declare-fun bm!698671 () Bool)

(assert (=> bm!698671 (= call!698672 call!698673)))

(declare-fun b!7608692 () Bool)

(assert (=> b!7608692 (= e!4525546 1)))

(declare-fun b!7608693 () Bool)

(assert (=> b!7608693 (= e!4525546 e!4525554)))

(assert (=> b!7608693 (= c!1403066 ((_ is Star!20209) r!19218))))

(declare-fun b!7608694 () Bool)

(assert (=> b!7608694 (= e!4525550 (> lt!2654954 call!698670))))

(declare-fun b!7608695 () Bool)

(assert (=> b!7608695 (= e!4525553 (+ 1 call!698676))))

(declare-fun b!7608696 () Bool)

(assert (=> b!7608696 (= e!4525555 e!4525548)))

(assert (=> b!7608696 (= c!1403072 ((_ is Union!20209) r!19218))))

(declare-fun b!7608697 () Bool)

(assert (=> b!7608697 (= e!4525554 (+ 1 call!698673))))

(assert (= (and d!2322038 c!1403069) b!7608692))

(assert (= (and d!2322038 (not c!1403069)) b!7608693))

(assert (= (and b!7608693 c!1403066) b!7608697))

(assert (= (and b!7608693 (not c!1403066)) b!7608687))

(assert (= (and b!7608687 c!1403067) b!7608695))

(assert (= (and b!7608687 (not c!1403067)) b!7608685))

(assert (= (and b!7608685 c!1403070) b!7608681))

(assert (= (and b!7608685 (not c!1403070)) b!7608683))

(assert (= (or b!7608695 b!7608681) bm!698666))

(assert (= (or b!7608695 b!7608681) bm!698671))

(assert (= (or b!7608695 b!7608681) bm!698668))

(assert (= (or b!7608697 bm!698671) bm!698669))

(assert (= (and d!2322038 res!3046429) b!7608696))

(assert (= (and b!7608696 c!1403072) b!7608682))

(assert (= (and b!7608696 (not c!1403072)) b!7608686))

(assert (= (and b!7608682 res!3046428) b!7608684))

(assert (= (and b!7608686 c!1403068) b!7608691))

(assert (= (and b!7608686 (not c!1403068)) b!7608689))

(assert (= (and b!7608691 res!3046430) b!7608694))

(assert (= (and b!7608689 c!1403071) b!7608690))

(assert (= (and b!7608689 (not c!1403071)) b!7608688))

(assert (= (or b!7608691 b!7608690) bm!698670))

(assert (= (or b!7608684 bm!698670) bm!698667))

(assert (= (or b!7608682 b!7608694) bm!698665))

(declare-fun m!8147476 () Bool)

(assert (=> bm!698667 m!8147476))

(declare-fun m!8147478 () Bool)

(assert (=> bm!698668 m!8147478))

(declare-fun m!8147480 () Bool)

(assert (=> bm!698665 m!8147480))

(declare-fun m!8147482 () Bool)

(assert (=> bm!698669 m!8147482))

(declare-fun m!8147484 () Bool)

(assert (=> bm!698666 m!8147484))

(assert (=> b!7608476 d!2322038))

(declare-fun b!7608728 () Bool)

(declare-fun e!4525563 () Bool)

(assert (=> b!7608728 (= e!4525563 tp_is_empty!50773)))

(declare-fun b!7608731 () Bool)

(declare-fun tp!2219716 () Bool)

(declare-fun tp!2219715 () Bool)

(assert (=> b!7608731 (= e!4525563 (and tp!2219716 tp!2219715))))

(declare-fun b!7608730 () Bool)

(declare-fun tp!2219719 () Bool)

(assert (=> b!7608730 (= e!4525563 tp!2219719)))

(declare-fun b!7608729 () Bool)

(declare-fun tp!2219718 () Bool)

(declare-fun tp!2219717 () Bool)

(assert (=> b!7608729 (= e!4525563 (and tp!2219718 tp!2219717))))

(assert (=> b!7608479 (= tp!2219669 e!4525563)))

(assert (= (and b!7608479 ((_ is ElementMatch!20209) (regOne!40930 r!19218))) b!7608728))

(assert (= (and b!7608479 ((_ is Concat!29054) (regOne!40930 r!19218))) b!7608729))

(assert (= (and b!7608479 ((_ is Star!20209) (regOne!40930 r!19218))) b!7608730))

(assert (= (and b!7608479 ((_ is Union!20209) (regOne!40930 r!19218))) b!7608731))

(declare-fun b!7608732 () Bool)

(declare-fun e!4525564 () Bool)

(assert (=> b!7608732 (= e!4525564 tp_is_empty!50773)))

(declare-fun b!7608735 () Bool)

(declare-fun tp!2219721 () Bool)

(declare-fun tp!2219720 () Bool)

(assert (=> b!7608735 (= e!4525564 (and tp!2219721 tp!2219720))))

(declare-fun b!7608734 () Bool)

(declare-fun tp!2219724 () Bool)

(assert (=> b!7608734 (= e!4525564 tp!2219724)))

(declare-fun b!7608733 () Bool)

(declare-fun tp!2219723 () Bool)

(declare-fun tp!2219722 () Bool)

(assert (=> b!7608733 (= e!4525564 (and tp!2219723 tp!2219722))))

(assert (=> b!7608479 (= tp!2219665 e!4525564)))

(assert (= (and b!7608479 ((_ is ElementMatch!20209) (regTwo!40930 r!19218))) b!7608732))

(assert (= (and b!7608479 ((_ is Concat!29054) (regTwo!40930 r!19218))) b!7608733))

(assert (= (and b!7608479 ((_ is Star!20209) (regTwo!40930 r!19218))) b!7608734))

(assert (= (and b!7608479 ((_ is Union!20209) (regTwo!40930 r!19218))) b!7608735))

(declare-fun b!7608736 () Bool)

(declare-fun e!4525565 () Bool)

(assert (=> b!7608736 (= e!4525565 tp_is_empty!50773)))

(declare-fun b!7608739 () Bool)

(declare-fun tp!2219726 () Bool)

(declare-fun tp!2219725 () Bool)

(assert (=> b!7608739 (= e!4525565 (and tp!2219726 tp!2219725))))

(declare-fun b!7608738 () Bool)

(declare-fun tp!2219729 () Bool)

(assert (=> b!7608738 (= e!4525565 tp!2219729)))

(declare-fun b!7608737 () Bool)

(declare-fun tp!2219728 () Bool)

(declare-fun tp!2219727 () Bool)

(assert (=> b!7608737 (= e!4525565 (and tp!2219728 tp!2219727))))

(assert (=> b!7608472 (= tp!2219666 e!4525565)))

(assert (= (and b!7608472 ((_ is ElementMatch!20209) (regOne!40931 r!19218))) b!7608736))

(assert (= (and b!7608472 ((_ is Concat!29054) (regOne!40931 r!19218))) b!7608737))

(assert (= (and b!7608472 ((_ is Star!20209) (regOne!40931 r!19218))) b!7608738))

(assert (= (and b!7608472 ((_ is Union!20209) (regOne!40931 r!19218))) b!7608739))

(declare-fun b!7608740 () Bool)

(declare-fun e!4525566 () Bool)

(assert (=> b!7608740 (= e!4525566 tp_is_empty!50773)))

(declare-fun b!7608743 () Bool)

(declare-fun tp!2219731 () Bool)

(declare-fun tp!2219730 () Bool)

(assert (=> b!7608743 (= e!4525566 (and tp!2219731 tp!2219730))))

(declare-fun b!7608742 () Bool)

(declare-fun tp!2219734 () Bool)

(assert (=> b!7608742 (= e!4525566 tp!2219734)))

(declare-fun b!7608741 () Bool)

(declare-fun tp!2219733 () Bool)

(declare-fun tp!2219732 () Bool)

(assert (=> b!7608741 (= e!4525566 (and tp!2219733 tp!2219732))))

(assert (=> b!7608472 (= tp!2219667 e!4525566)))

(assert (= (and b!7608472 ((_ is ElementMatch!20209) (regTwo!40931 r!19218))) b!7608740))

(assert (= (and b!7608472 ((_ is Concat!29054) (regTwo!40931 r!19218))) b!7608741))

(assert (= (and b!7608472 ((_ is Star!20209) (regTwo!40931 r!19218))) b!7608742))

(assert (= (and b!7608472 ((_ is Union!20209) (regTwo!40931 r!19218))) b!7608743))

(declare-fun b!7608744 () Bool)

(declare-fun e!4525567 () Bool)

(assert (=> b!7608744 (= e!4525567 tp_is_empty!50773)))

(declare-fun b!7608747 () Bool)

(declare-fun tp!2219736 () Bool)

(declare-fun tp!2219735 () Bool)

(assert (=> b!7608747 (= e!4525567 (and tp!2219736 tp!2219735))))

(declare-fun b!7608746 () Bool)

(declare-fun tp!2219739 () Bool)

(assert (=> b!7608746 (= e!4525567 tp!2219739)))

(declare-fun b!7608745 () Bool)

(declare-fun tp!2219738 () Bool)

(declare-fun tp!2219737 () Bool)

(assert (=> b!7608745 (= e!4525567 (and tp!2219738 tp!2219737))))

(assert (=> b!7608471 (= tp!2219668 e!4525567)))

(assert (= (and b!7608471 ((_ is ElementMatch!20209) (reg!20538 r!19218))) b!7608744))

(assert (= (and b!7608471 ((_ is Concat!29054) (reg!20538 r!19218))) b!7608745))

(assert (= (and b!7608471 ((_ is Star!20209) (reg!20538 r!19218))) b!7608746))

(assert (= (and b!7608471 ((_ is Union!20209) (reg!20538 r!19218))) b!7608747))

(check-sat (not b!7608742) (not bm!698668) (not b!7608739) (not b!7608734) (not b!7608735) (not b!7608731) (not b!7608730) (not bm!698659) (not bm!698667) (not bm!698661) (not b!7608746) (not d!2322026) (not bm!698656) (not bm!698609) (not bm!698612) (not bm!698611) (not b!7608738) (not d!2322022) (not b!7608737) (not bm!698662) (not b!7608741) (not b!7608733) (not b!7608747) (not bm!698665) (not b!7608531) (not b!7608743) (not bm!698666) (not b!7608729) (not bm!698660) tp_is_empty!50773 (not bm!698608) (not b!7608540) (not bm!698669) (not b!7608745))
(check-sat)
