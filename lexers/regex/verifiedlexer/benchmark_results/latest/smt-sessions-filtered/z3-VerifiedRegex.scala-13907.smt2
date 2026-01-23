; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738900 () Bool)

(assert start!738900)

(declare-fun b!7750399 () Bool)

(declare-fun res!3090456 () Bool)

(declare-fun e!4594657 () Bool)

(assert (=> b!7750399 (=> (not res!3090456) (not e!4594657))))

(declare-datatypes ((C!41544 0))(
  ( (C!41545 (val!31212 Int)) )
))
(declare-datatypes ((Regex!20609 0))(
  ( (ElementMatch!20609 (c!1429430 C!41544)) (Concat!29454 (regOne!41730 Regex!20609) (regTwo!41730 Regex!20609)) (EmptyExpr!20609) (Star!20609 (reg!20938 Regex!20609)) (EmptyLang!20609) (Union!20609 (regOne!41731 Regex!20609) (regTwo!41731 Regex!20609)) )
))
(declare-fun lt!2669350 () Regex!20609)

(declare-datatypes ((List!73454 0))(
  ( (Nil!73330) (Cons!73330 (h!79778 C!41544) (t!388189 List!73454)) )
))
(declare-fun s2!3963 () List!73454)

(declare-fun matchR!10099 (Regex!20609 List!73454) Bool)

(assert (=> b!7750399 (= res!3090456 (matchR!10099 lt!2669350 s2!3963))))

(declare-fun b!7750400 () Bool)

(declare-fun e!4594654 () Bool)

(declare-fun tp!2273896 () Bool)

(declare-fun tp!2273898 () Bool)

(assert (=> b!7750400 (= e!4594654 (and tp!2273896 tp!2273898))))

(declare-fun b!7750401 () Bool)

(declare-fun res!3090457 () Bool)

(assert (=> b!7750401 (=> (not res!3090457) (not e!4594657))))

(declare-fun r!25892 () Regex!20609)

(declare-fun s1!4391 () List!73454)

(declare-fun derivativeStep!6032 (Regex!20609 C!41544) Regex!20609)

(assert (=> b!7750401 (= res!3090457 (= (derivativeStep!6032 lt!2669350 (h!79778 s1!4391)) (Concat!29454 (derivativeStep!6032 r!25892 (h!79778 s1!4391)) lt!2669350)))))

(declare-fun b!7750402 () Bool)

(declare-fun tp!2273897 () Bool)

(declare-fun tp!2273900 () Bool)

(assert (=> b!7750402 (= e!4594654 (and tp!2273897 tp!2273900))))

(declare-fun b!7750403 () Bool)

(declare-fun validRegex!11027 (Regex!20609) Bool)

(assert (=> b!7750403 (= e!4594657 (not (validRegex!11027 r!25892)))))

(declare-fun b!7750404 () Bool)

(declare-fun res!3090458 () Bool)

(assert (=> b!7750404 (=> (not res!3090458) (not e!4594657))))

(get-info :version)

(assert (=> b!7750404 (= res!3090458 ((_ is Cons!73330) s1!4391))))

(declare-fun res!3090454 () Bool)

(assert (=> start!738900 (=> (not res!3090454) (not e!4594657))))

(assert (=> start!738900 (= res!3090454 (validRegex!11027 lt!2669350))))

(assert (=> start!738900 (= lt!2669350 (Star!20609 r!25892))))

(assert (=> start!738900 e!4594657))

(assert (=> start!738900 e!4594654))

(declare-fun e!4594656 () Bool)

(assert (=> start!738900 e!4594656))

(declare-fun e!4594655 () Bool)

(assert (=> start!738900 e!4594655))

(declare-fun b!7750405 () Bool)

(declare-fun res!3090455 () Bool)

(assert (=> b!7750405 (=> (not res!3090455) (not e!4594657))))

(assert (=> b!7750405 (= res!3090455 (matchR!10099 r!25892 s1!4391))))

(declare-fun b!7750406 () Bool)

(declare-fun tp_is_empty!51573 () Bool)

(assert (=> b!7750406 (= e!4594654 tp_is_empty!51573)))

(declare-fun b!7750407 () Bool)

(declare-fun tp!2273895 () Bool)

(assert (=> b!7750407 (= e!4594654 tp!2273895)))

(declare-fun b!7750408 () Bool)

(declare-fun tp!2273901 () Bool)

(assert (=> b!7750408 (= e!4594655 (and tp_is_empty!51573 tp!2273901))))

(declare-fun b!7750409 () Bool)

(declare-fun tp!2273899 () Bool)

(assert (=> b!7750409 (= e!4594656 (and tp_is_empty!51573 tp!2273899))))

(assert (= (and start!738900 res!3090454) b!7750405))

(assert (= (and b!7750405 res!3090455) b!7750399))

(assert (= (and b!7750399 res!3090456) b!7750404))

(assert (= (and b!7750404 res!3090458) b!7750401))

(assert (= (and b!7750401 res!3090457) b!7750403))

(assert (= (and start!738900 ((_ is ElementMatch!20609) r!25892)) b!7750406))

(assert (= (and start!738900 ((_ is Concat!29454) r!25892)) b!7750402))

(assert (= (and start!738900 ((_ is Star!20609) r!25892)) b!7750407))

(assert (= (and start!738900 ((_ is Union!20609) r!25892)) b!7750400))

(assert (= (and start!738900 ((_ is Cons!73330) s1!4391)) b!7750409))

(assert (= (and start!738900 ((_ is Cons!73330) s2!3963)) b!7750408))

(declare-fun m!8216450 () Bool)

(assert (=> start!738900 m!8216450))

(declare-fun m!8216452 () Bool)

(assert (=> b!7750403 m!8216452))

(declare-fun m!8216454 () Bool)

(assert (=> b!7750401 m!8216454))

(declare-fun m!8216456 () Bool)

(assert (=> b!7750401 m!8216456))

(declare-fun m!8216458 () Bool)

(assert (=> b!7750399 m!8216458))

(declare-fun m!8216460 () Bool)

(assert (=> b!7750405 m!8216460))

(check-sat (not b!7750399) (not b!7750405) (not start!738900) (not b!7750400) (not b!7750407) (not b!7750401) (not b!7750402) (not b!7750408) (not b!7750403) (not b!7750409) tp_is_empty!51573)
(check-sat)
(get-model)

(declare-fun b!7750446 () Bool)

(declare-fun e!4594688 () Bool)

(declare-fun e!4594689 () Bool)

(assert (=> b!7750446 (= e!4594688 e!4594689)))

(declare-fun c!1429440 () Bool)

(assert (=> b!7750446 (= c!1429440 ((_ is Star!20609) r!25892))))

(declare-fun b!7750447 () Bool)

(declare-fun e!4594686 () Bool)

(assert (=> b!7750447 (= e!4594689 e!4594686)))

(declare-fun res!3090482 () Bool)

(declare-fun nullable!9075 (Regex!20609) Bool)

(assert (=> b!7750447 (= res!3090482 (not (nullable!9075 (reg!20938 r!25892))))))

(assert (=> b!7750447 (=> (not res!3090482) (not e!4594686))))

(declare-fun c!1429439 () Bool)

(declare-fun call!718279 () Bool)

(declare-fun bm!718272 () Bool)

(assert (=> bm!718272 (= call!718279 (validRegex!11027 (ite c!1429440 (reg!20938 r!25892) (ite c!1429439 (regTwo!41731 r!25892) (regTwo!41730 r!25892)))))))

(declare-fun b!7750449 () Bool)

(declare-fun res!3090480 () Bool)

(declare-fun e!4594687 () Bool)

(assert (=> b!7750449 (=> (not res!3090480) (not e!4594687))))

(declare-fun call!718278 () Bool)

(assert (=> b!7750449 (= res!3090480 call!718278)))

(declare-fun e!4594691 () Bool)

(assert (=> b!7750449 (= e!4594691 e!4594687)))

(declare-fun bm!718273 () Bool)

(assert (=> bm!718273 (= call!718278 (validRegex!11027 (ite c!1429439 (regOne!41731 r!25892) (regOne!41730 r!25892))))))

(declare-fun b!7750450 () Bool)

(declare-fun e!4594690 () Bool)

(declare-fun call!718277 () Bool)

(assert (=> b!7750450 (= e!4594690 call!718277)))

(declare-fun b!7750451 () Bool)

(declare-fun res!3090483 () Bool)

(declare-fun e!4594692 () Bool)

(assert (=> b!7750451 (=> res!3090483 e!4594692)))

(assert (=> b!7750451 (= res!3090483 (not ((_ is Concat!29454) r!25892)))))

(assert (=> b!7750451 (= e!4594691 e!4594692)))

(declare-fun b!7750452 () Bool)

(assert (=> b!7750452 (= e!4594686 call!718279)))

(declare-fun b!7750453 () Bool)

(assert (=> b!7750453 (= e!4594692 e!4594690)))

(declare-fun res!3090479 () Bool)

(assert (=> b!7750453 (=> (not res!3090479) (not e!4594690))))

(assert (=> b!7750453 (= res!3090479 call!718278)))

(declare-fun b!7750448 () Bool)

(assert (=> b!7750448 (= e!4594689 e!4594691)))

(assert (=> b!7750448 (= c!1429439 ((_ is Union!20609) r!25892))))

(declare-fun d!2342664 () Bool)

(declare-fun res!3090481 () Bool)

(assert (=> d!2342664 (=> res!3090481 e!4594688)))

(assert (=> d!2342664 (= res!3090481 ((_ is ElementMatch!20609) r!25892))))

(assert (=> d!2342664 (= (validRegex!11027 r!25892) e!4594688)))

(declare-fun b!7750454 () Bool)

(assert (=> b!7750454 (= e!4594687 call!718277)))

(declare-fun bm!718274 () Bool)

(assert (=> bm!718274 (= call!718277 call!718279)))

(assert (= (and d!2342664 (not res!3090481)) b!7750446))

(assert (= (and b!7750446 c!1429440) b!7750447))

(assert (= (and b!7750446 (not c!1429440)) b!7750448))

(assert (= (and b!7750447 res!3090482) b!7750452))

(assert (= (and b!7750448 c!1429439) b!7750449))

(assert (= (and b!7750448 (not c!1429439)) b!7750451))

(assert (= (and b!7750449 res!3090480) b!7750454))

(assert (= (and b!7750451 (not res!3090483)) b!7750453))

(assert (= (and b!7750453 res!3090479) b!7750450))

(assert (= (or b!7750449 b!7750453) bm!718273))

(assert (= (or b!7750454 b!7750450) bm!718274))

(assert (= (or b!7750452 bm!718274) bm!718272))

(declare-fun m!8216462 () Bool)

(assert (=> b!7750447 m!8216462))

(declare-fun m!8216464 () Bool)

(assert (=> bm!718272 m!8216464))

(declare-fun m!8216466 () Bool)

(assert (=> bm!718273 m!8216466))

(assert (=> b!7750403 d!2342664))

(declare-fun b!7750455 () Bool)

(declare-fun e!4594695 () Bool)

(declare-fun e!4594696 () Bool)

(assert (=> b!7750455 (= e!4594695 e!4594696)))

(declare-fun c!1429442 () Bool)

(assert (=> b!7750455 (= c!1429442 ((_ is Star!20609) lt!2669350))))

(declare-fun b!7750456 () Bool)

(declare-fun e!4594693 () Bool)

(assert (=> b!7750456 (= e!4594696 e!4594693)))

(declare-fun res!3090487 () Bool)

(assert (=> b!7750456 (= res!3090487 (not (nullable!9075 (reg!20938 lt!2669350))))))

(assert (=> b!7750456 (=> (not res!3090487) (not e!4594693))))

(declare-fun c!1429441 () Bool)

(declare-fun bm!718275 () Bool)

(declare-fun call!718282 () Bool)

(assert (=> bm!718275 (= call!718282 (validRegex!11027 (ite c!1429442 (reg!20938 lt!2669350) (ite c!1429441 (regTwo!41731 lt!2669350) (regTwo!41730 lt!2669350)))))))

(declare-fun b!7750458 () Bool)

(declare-fun res!3090485 () Bool)

(declare-fun e!4594694 () Bool)

(assert (=> b!7750458 (=> (not res!3090485) (not e!4594694))))

(declare-fun call!718281 () Bool)

(assert (=> b!7750458 (= res!3090485 call!718281)))

(declare-fun e!4594698 () Bool)

(assert (=> b!7750458 (= e!4594698 e!4594694)))

(declare-fun bm!718276 () Bool)

(assert (=> bm!718276 (= call!718281 (validRegex!11027 (ite c!1429441 (regOne!41731 lt!2669350) (regOne!41730 lt!2669350))))))

(declare-fun b!7750459 () Bool)

(declare-fun e!4594697 () Bool)

(declare-fun call!718280 () Bool)

(assert (=> b!7750459 (= e!4594697 call!718280)))

(declare-fun b!7750460 () Bool)

(declare-fun res!3090488 () Bool)

(declare-fun e!4594699 () Bool)

(assert (=> b!7750460 (=> res!3090488 e!4594699)))

(assert (=> b!7750460 (= res!3090488 (not ((_ is Concat!29454) lt!2669350)))))

(assert (=> b!7750460 (= e!4594698 e!4594699)))

(declare-fun b!7750461 () Bool)

(assert (=> b!7750461 (= e!4594693 call!718282)))

(declare-fun b!7750462 () Bool)

(assert (=> b!7750462 (= e!4594699 e!4594697)))

(declare-fun res!3090484 () Bool)

(assert (=> b!7750462 (=> (not res!3090484) (not e!4594697))))

(assert (=> b!7750462 (= res!3090484 call!718281)))

(declare-fun b!7750457 () Bool)

(assert (=> b!7750457 (= e!4594696 e!4594698)))

(assert (=> b!7750457 (= c!1429441 ((_ is Union!20609) lt!2669350))))

(declare-fun d!2342668 () Bool)

(declare-fun res!3090486 () Bool)

(assert (=> d!2342668 (=> res!3090486 e!4594695)))

(assert (=> d!2342668 (= res!3090486 ((_ is ElementMatch!20609) lt!2669350))))

(assert (=> d!2342668 (= (validRegex!11027 lt!2669350) e!4594695)))

(declare-fun b!7750463 () Bool)

(assert (=> b!7750463 (= e!4594694 call!718280)))

(declare-fun bm!718277 () Bool)

(assert (=> bm!718277 (= call!718280 call!718282)))

(assert (= (and d!2342668 (not res!3090486)) b!7750455))

(assert (= (and b!7750455 c!1429442) b!7750456))

(assert (= (and b!7750455 (not c!1429442)) b!7750457))

(assert (= (and b!7750456 res!3090487) b!7750461))

(assert (= (and b!7750457 c!1429441) b!7750458))

(assert (= (and b!7750457 (not c!1429441)) b!7750460))

(assert (= (and b!7750458 res!3090485) b!7750463))

(assert (= (and b!7750460 (not res!3090488)) b!7750462))

(assert (= (and b!7750462 res!3090484) b!7750459))

(assert (= (or b!7750458 b!7750462) bm!718276))

(assert (= (or b!7750463 b!7750459) bm!718277))

(assert (= (or b!7750461 bm!718277) bm!718275))

(declare-fun m!8216468 () Bool)

(assert (=> b!7750456 m!8216468))

(declare-fun m!8216470 () Bool)

(assert (=> bm!718275 m!8216470))

(declare-fun m!8216472 () Bool)

(assert (=> bm!718276 m!8216472))

(assert (=> start!738900 d!2342668))

(declare-fun b!7750521 () Bool)

(declare-fun e!4594733 () Bool)

(declare-fun head!15831 (List!73454) C!41544)

(assert (=> b!7750521 (= e!4594733 (= (head!15831 s2!3963) (c!1429430 lt!2669350)))))

(declare-fun b!7750522 () Bool)

(declare-fun e!4594736 () Bool)

(declare-fun lt!2669355 () Bool)

(assert (=> b!7750522 (= e!4594736 (not lt!2669355))))

(declare-fun b!7750523 () Bool)

(declare-fun res!3090510 () Bool)

(declare-fun e!4594735 () Bool)

(assert (=> b!7750523 (=> res!3090510 e!4594735)))

(assert (=> b!7750523 (= res!3090510 e!4594733)))

(declare-fun res!3090512 () Bool)

(assert (=> b!7750523 (=> (not res!3090512) (not e!4594733))))

(assert (=> b!7750523 (= res!3090512 lt!2669355)))

(declare-fun b!7750524 () Bool)

(declare-fun res!3090517 () Bool)

(assert (=> b!7750524 (=> (not res!3090517) (not e!4594733))))

(declare-fun call!718296 () Bool)

(assert (=> b!7750524 (= res!3090517 (not call!718296))))

(declare-fun b!7750525 () Bool)

(declare-fun res!3090515 () Bool)

(declare-fun e!4594734 () Bool)

(assert (=> b!7750525 (=> res!3090515 e!4594734)))

(declare-fun isEmpty!42022 (List!73454) Bool)

(declare-fun tail!15371 (List!73454) List!73454)

(assert (=> b!7750525 (= res!3090515 (not (isEmpty!42022 (tail!15371 s2!3963))))))

(declare-fun bm!718291 () Bool)

(assert (=> bm!718291 (= call!718296 (isEmpty!42022 s2!3963))))

(declare-fun b!7750526 () Bool)

(declare-fun e!4594731 () Bool)

(assert (=> b!7750526 (= e!4594731 e!4594734)))

(declare-fun res!3090516 () Bool)

(assert (=> b!7750526 (=> res!3090516 e!4594734)))

(assert (=> b!7750526 (= res!3090516 call!718296)))

(declare-fun b!7750528 () Bool)

(assert (=> b!7750528 (= e!4594734 (not (= (head!15831 s2!3963) (c!1429430 lt!2669350))))))

(declare-fun b!7750529 () Bool)

(declare-fun res!3090511 () Bool)

(assert (=> b!7750529 (=> res!3090511 e!4594735)))

(assert (=> b!7750529 (= res!3090511 (not ((_ is ElementMatch!20609) lt!2669350)))))

(assert (=> b!7750529 (= e!4594736 e!4594735)))

(declare-fun b!7750530 () Bool)

(declare-fun e!4594737 () Bool)

(assert (=> b!7750530 (= e!4594737 (nullable!9075 lt!2669350))))

(declare-fun b!7750531 () Bool)

(declare-fun e!4594732 () Bool)

(assert (=> b!7750531 (= e!4594732 e!4594736)))

(declare-fun c!1429462 () Bool)

(assert (=> b!7750531 (= c!1429462 ((_ is EmptyLang!20609) lt!2669350))))

(declare-fun b!7750532 () Bool)

(assert (=> b!7750532 (= e!4594737 (matchR!10099 (derivativeStep!6032 lt!2669350 (head!15831 s2!3963)) (tail!15371 s2!3963)))))

(declare-fun b!7750533 () Bool)

(declare-fun res!3090514 () Bool)

(assert (=> b!7750533 (=> (not res!3090514) (not e!4594733))))

(assert (=> b!7750533 (= res!3090514 (isEmpty!42022 (tail!15371 s2!3963)))))

(declare-fun b!7750534 () Bool)

(assert (=> b!7750534 (= e!4594735 e!4594731)))

(declare-fun res!3090513 () Bool)

(assert (=> b!7750534 (=> (not res!3090513) (not e!4594731))))

(assert (=> b!7750534 (= res!3090513 (not lt!2669355))))

(declare-fun b!7750527 () Bool)

(assert (=> b!7750527 (= e!4594732 (= lt!2669355 call!718296))))

(declare-fun d!2342670 () Bool)

(assert (=> d!2342670 e!4594732))

(declare-fun c!1429461 () Bool)

(assert (=> d!2342670 (= c!1429461 ((_ is EmptyExpr!20609) lt!2669350))))

(assert (=> d!2342670 (= lt!2669355 e!4594737)))

(declare-fun c!1429463 () Bool)

(assert (=> d!2342670 (= c!1429463 (isEmpty!42022 s2!3963))))

(assert (=> d!2342670 (validRegex!11027 lt!2669350)))

(assert (=> d!2342670 (= (matchR!10099 lt!2669350 s2!3963) lt!2669355)))

(assert (= (and d!2342670 c!1429463) b!7750530))

(assert (= (and d!2342670 (not c!1429463)) b!7750532))

(assert (= (and d!2342670 c!1429461) b!7750527))

(assert (= (and d!2342670 (not c!1429461)) b!7750531))

(assert (= (and b!7750531 c!1429462) b!7750522))

(assert (= (and b!7750531 (not c!1429462)) b!7750529))

(assert (= (and b!7750529 (not res!3090511)) b!7750523))

(assert (= (and b!7750523 res!3090512) b!7750524))

(assert (= (and b!7750524 res!3090517) b!7750533))

(assert (= (and b!7750533 res!3090514) b!7750521))

(assert (= (and b!7750523 (not res!3090510)) b!7750534))

(assert (= (and b!7750534 res!3090513) b!7750526))

(assert (= (and b!7750526 (not res!3090516)) b!7750525))

(assert (= (and b!7750525 (not res!3090515)) b!7750528))

(assert (= (or b!7750527 b!7750524 b!7750526) bm!718291))

(declare-fun m!8216480 () Bool)

(assert (=> b!7750528 m!8216480))

(assert (=> b!7750521 m!8216480))

(declare-fun m!8216482 () Bool)

(assert (=> bm!718291 m!8216482))

(declare-fun m!8216484 () Bool)

(assert (=> b!7750533 m!8216484))

(assert (=> b!7750533 m!8216484))

(declare-fun m!8216486 () Bool)

(assert (=> b!7750533 m!8216486))

(assert (=> b!7750532 m!8216480))

(assert (=> b!7750532 m!8216480))

(declare-fun m!8216488 () Bool)

(assert (=> b!7750532 m!8216488))

(assert (=> b!7750532 m!8216484))

(assert (=> b!7750532 m!8216488))

(assert (=> b!7750532 m!8216484))

(declare-fun m!8216490 () Bool)

(assert (=> b!7750532 m!8216490))

(assert (=> b!7750525 m!8216484))

(assert (=> b!7750525 m!8216484))

(assert (=> b!7750525 m!8216486))

(assert (=> d!2342670 m!8216482))

(assert (=> d!2342670 m!8216450))

(declare-fun m!8216492 () Bool)

(assert (=> b!7750530 m!8216492))

(assert (=> b!7750399 d!2342670))

(declare-fun b!7750545 () Bool)

(declare-fun e!4594745 () Bool)

(assert (=> b!7750545 (= e!4594745 (= (head!15831 s1!4391) (c!1429430 r!25892)))))

(declare-fun b!7750546 () Bool)

(declare-fun e!4594748 () Bool)

(declare-fun lt!2669357 () Bool)

(assert (=> b!7750546 (= e!4594748 (not lt!2669357))))

(declare-fun b!7750547 () Bool)

(declare-fun res!3090518 () Bool)

(declare-fun e!4594747 () Bool)

(assert (=> b!7750547 (=> res!3090518 e!4594747)))

(assert (=> b!7750547 (= res!3090518 e!4594745)))

(declare-fun res!3090520 () Bool)

(assert (=> b!7750547 (=> (not res!3090520) (not e!4594745))))

(assert (=> b!7750547 (= res!3090520 lt!2669357)))

(declare-fun b!7750548 () Bool)

(declare-fun res!3090525 () Bool)

(assert (=> b!7750548 (=> (not res!3090525) (not e!4594745))))

(declare-fun call!718301 () Bool)

(assert (=> b!7750548 (= res!3090525 (not call!718301))))

(declare-fun b!7750549 () Bool)

(declare-fun res!3090523 () Bool)

(declare-fun e!4594746 () Bool)

(assert (=> b!7750549 (=> res!3090523 e!4594746)))

(assert (=> b!7750549 (= res!3090523 (not (isEmpty!42022 (tail!15371 s1!4391))))))

(declare-fun bm!718296 () Bool)

(assert (=> bm!718296 (= call!718301 (isEmpty!42022 s1!4391))))

(declare-fun b!7750550 () Bool)

(declare-fun e!4594743 () Bool)

(assert (=> b!7750550 (= e!4594743 e!4594746)))

(declare-fun res!3090524 () Bool)

(assert (=> b!7750550 (=> res!3090524 e!4594746)))

(assert (=> b!7750550 (= res!3090524 call!718301)))

(declare-fun b!7750552 () Bool)

(assert (=> b!7750552 (= e!4594746 (not (= (head!15831 s1!4391) (c!1429430 r!25892))))))

(declare-fun b!7750553 () Bool)

(declare-fun res!3090519 () Bool)

(assert (=> b!7750553 (=> res!3090519 e!4594747)))

(assert (=> b!7750553 (= res!3090519 (not ((_ is ElementMatch!20609) r!25892)))))

(assert (=> b!7750553 (= e!4594748 e!4594747)))

(declare-fun b!7750554 () Bool)

(declare-fun e!4594749 () Bool)

(assert (=> b!7750554 (= e!4594749 (nullable!9075 r!25892))))

(declare-fun b!7750555 () Bool)

(declare-fun e!4594744 () Bool)

(assert (=> b!7750555 (= e!4594744 e!4594748)))

(declare-fun c!1429470 () Bool)

(assert (=> b!7750555 (= c!1429470 ((_ is EmptyLang!20609) r!25892))))

(declare-fun b!7750556 () Bool)

(assert (=> b!7750556 (= e!4594749 (matchR!10099 (derivativeStep!6032 r!25892 (head!15831 s1!4391)) (tail!15371 s1!4391)))))

(declare-fun b!7750557 () Bool)

(declare-fun res!3090522 () Bool)

(assert (=> b!7750557 (=> (not res!3090522) (not e!4594745))))

(assert (=> b!7750557 (= res!3090522 (isEmpty!42022 (tail!15371 s1!4391)))))

(declare-fun b!7750558 () Bool)

(assert (=> b!7750558 (= e!4594747 e!4594743)))

(declare-fun res!3090521 () Bool)

(assert (=> b!7750558 (=> (not res!3090521) (not e!4594743))))

(assert (=> b!7750558 (= res!3090521 (not lt!2669357))))

(declare-fun b!7750551 () Bool)

(assert (=> b!7750551 (= e!4594744 (= lt!2669357 call!718301))))

(declare-fun d!2342674 () Bool)

(assert (=> d!2342674 e!4594744))

(declare-fun c!1429469 () Bool)

(assert (=> d!2342674 (= c!1429469 ((_ is EmptyExpr!20609) r!25892))))

(assert (=> d!2342674 (= lt!2669357 e!4594749)))

(declare-fun c!1429471 () Bool)

(assert (=> d!2342674 (= c!1429471 (isEmpty!42022 s1!4391))))

(assert (=> d!2342674 (validRegex!11027 r!25892)))

(assert (=> d!2342674 (= (matchR!10099 r!25892 s1!4391) lt!2669357)))

(assert (= (and d!2342674 c!1429471) b!7750554))

(assert (= (and d!2342674 (not c!1429471)) b!7750556))

(assert (= (and d!2342674 c!1429469) b!7750551))

(assert (= (and d!2342674 (not c!1429469)) b!7750555))

(assert (= (and b!7750555 c!1429470) b!7750546))

(assert (= (and b!7750555 (not c!1429470)) b!7750553))

(assert (= (and b!7750553 (not res!3090519)) b!7750547))

(assert (= (and b!7750547 res!3090520) b!7750548))

(assert (= (and b!7750548 res!3090525) b!7750557))

(assert (= (and b!7750557 res!3090522) b!7750545))

(assert (= (and b!7750547 (not res!3090518)) b!7750558))

(assert (= (and b!7750558 res!3090521) b!7750550))

(assert (= (and b!7750550 (not res!3090524)) b!7750549))

(assert (= (and b!7750549 (not res!3090523)) b!7750552))

(assert (= (or b!7750551 b!7750548 b!7750550) bm!718296))

(declare-fun m!8216502 () Bool)

(assert (=> b!7750552 m!8216502))

(assert (=> b!7750545 m!8216502))

(declare-fun m!8216504 () Bool)

(assert (=> bm!718296 m!8216504))

(declare-fun m!8216506 () Bool)

(assert (=> b!7750557 m!8216506))

(assert (=> b!7750557 m!8216506))

(declare-fun m!8216508 () Bool)

(assert (=> b!7750557 m!8216508))

(assert (=> b!7750556 m!8216502))

(assert (=> b!7750556 m!8216502))

(declare-fun m!8216510 () Bool)

(assert (=> b!7750556 m!8216510))

(assert (=> b!7750556 m!8216506))

(assert (=> b!7750556 m!8216510))

(assert (=> b!7750556 m!8216506))

(declare-fun m!8216512 () Bool)

(assert (=> b!7750556 m!8216512))

(assert (=> b!7750549 m!8216506))

(assert (=> b!7750549 m!8216506))

(assert (=> b!7750549 m!8216508))

(assert (=> d!2342674 m!8216504))

(assert (=> d!2342674 m!8216452))

(declare-fun m!8216514 () Bool)

(assert (=> b!7750554 m!8216514))

(assert (=> b!7750405 d!2342674))

(declare-fun b!7750626 () Bool)

(declare-fun e!4594787 () Regex!20609)

(declare-fun e!4594788 () Regex!20609)

(assert (=> b!7750626 (= e!4594787 e!4594788)))

(declare-fun c!1429497 () Bool)

(assert (=> b!7750626 (= c!1429497 ((_ is Star!20609) lt!2669350))))

(declare-fun b!7750627 () Bool)

(declare-fun e!4594790 () Regex!20609)

(assert (=> b!7750627 (= e!4594790 EmptyLang!20609)))

(declare-fun b!7750628 () Bool)

(declare-fun e!4594786 () Regex!20609)

(declare-fun call!718322 () Regex!20609)

(assert (=> b!7750628 (= e!4594786 (Union!20609 (Concat!29454 call!718322 (regTwo!41730 lt!2669350)) EmptyLang!20609))))

(declare-fun b!7750629 () Bool)

(declare-fun call!718321 () Regex!20609)

(declare-fun call!718319 () Regex!20609)

(assert (=> b!7750629 (= e!4594787 (Union!20609 call!718321 call!718319))))

(declare-fun b!7750630 () Bool)

(declare-fun c!1429496 () Bool)

(assert (=> b!7750630 (= c!1429496 ((_ is Union!20609) lt!2669350))))

(declare-fun e!4594789 () Regex!20609)

(assert (=> b!7750630 (= e!4594789 e!4594787)))

(declare-fun b!7750631 () Bool)

(assert (=> b!7750631 (= e!4594786 (Union!20609 (Concat!29454 call!718322 (regTwo!41730 lt!2669350)) call!718321))))

(declare-fun b!7750632 () Bool)

(assert (=> b!7750632 (= e!4594789 (ite (= (h!79778 s1!4391) (c!1429430 lt!2669350)) EmptyExpr!20609 EmptyLang!20609))))

(declare-fun bm!718314 () Bool)

(assert (=> bm!718314 (= call!718319 (derivativeStep!6032 (ite c!1429496 (regTwo!41731 lt!2669350) (ite c!1429497 (reg!20938 lt!2669350) (regOne!41730 lt!2669350))) (h!79778 s1!4391)))))

(declare-fun b!7750633 () Bool)

(declare-fun c!1429495 () Bool)

(assert (=> b!7750633 (= c!1429495 (nullable!9075 (regOne!41730 lt!2669350)))))

(assert (=> b!7750633 (= e!4594788 e!4594786)))

(declare-fun bm!718315 () Bool)

(assert (=> bm!718315 (= call!718321 (derivativeStep!6032 (ite c!1429496 (regOne!41731 lt!2669350) (regTwo!41730 lt!2669350)) (h!79778 s1!4391)))))

(declare-fun b!7750634 () Bool)

(assert (=> b!7750634 (= e!4594790 e!4594789)))

(declare-fun c!1429498 () Bool)

(assert (=> b!7750634 (= c!1429498 ((_ is ElementMatch!20609) lt!2669350))))

(declare-fun bm!718316 () Bool)

(declare-fun call!718320 () Regex!20609)

(assert (=> bm!718316 (= call!718320 call!718319)))

(declare-fun b!7750635 () Bool)

(assert (=> b!7750635 (= e!4594788 (Concat!29454 call!718320 lt!2669350))))

(declare-fun bm!718317 () Bool)

(assert (=> bm!718317 (= call!718322 call!718320)))

(declare-fun d!2342678 () Bool)

(declare-fun lt!2669363 () Regex!20609)

(assert (=> d!2342678 (validRegex!11027 lt!2669363)))

(assert (=> d!2342678 (= lt!2669363 e!4594790)))

(declare-fun c!1429499 () Bool)

(assert (=> d!2342678 (= c!1429499 (or ((_ is EmptyExpr!20609) lt!2669350) ((_ is EmptyLang!20609) lt!2669350)))))

(assert (=> d!2342678 (validRegex!11027 lt!2669350)))

(assert (=> d!2342678 (= (derivativeStep!6032 lt!2669350 (h!79778 s1!4391)) lt!2669363)))

(assert (= (and d!2342678 c!1429499) b!7750627))

(assert (= (and d!2342678 (not c!1429499)) b!7750634))

(assert (= (and b!7750634 c!1429498) b!7750632))

(assert (= (and b!7750634 (not c!1429498)) b!7750630))

(assert (= (and b!7750630 c!1429496) b!7750629))

(assert (= (and b!7750630 (not c!1429496)) b!7750626))

(assert (= (and b!7750626 c!1429497) b!7750635))

(assert (= (and b!7750626 (not c!1429497)) b!7750633))

(assert (= (and b!7750633 c!1429495) b!7750631))

(assert (= (and b!7750633 (not c!1429495)) b!7750628))

(assert (= (or b!7750631 b!7750628) bm!718317))

(assert (= (or b!7750635 bm!718317) bm!718316))

(assert (= (or b!7750629 bm!718316) bm!718314))

(assert (= (or b!7750629 b!7750631) bm!718315))

(declare-fun m!8216530 () Bool)

(assert (=> bm!718314 m!8216530))

(declare-fun m!8216532 () Bool)

(assert (=> b!7750633 m!8216532))

(declare-fun m!8216534 () Bool)

(assert (=> bm!718315 m!8216534))

(declare-fun m!8216536 () Bool)

(assert (=> d!2342678 m!8216536))

(assert (=> d!2342678 m!8216450))

(assert (=> b!7750401 d!2342678))

(declare-fun b!7750636 () Bool)

(declare-fun e!4594792 () Regex!20609)

(declare-fun e!4594793 () Regex!20609)

(assert (=> b!7750636 (= e!4594792 e!4594793)))

(declare-fun c!1429502 () Bool)

(assert (=> b!7750636 (= c!1429502 ((_ is Star!20609) r!25892))))

(declare-fun b!7750637 () Bool)

(declare-fun e!4594795 () Regex!20609)

(assert (=> b!7750637 (= e!4594795 EmptyLang!20609)))

(declare-fun b!7750638 () Bool)

(declare-fun e!4594791 () Regex!20609)

(declare-fun call!718326 () Regex!20609)

(assert (=> b!7750638 (= e!4594791 (Union!20609 (Concat!29454 call!718326 (regTwo!41730 r!25892)) EmptyLang!20609))))

(declare-fun b!7750639 () Bool)

(declare-fun call!718325 () Regex!20609)

(declare-fun call!718323 () Regex!20609)

(assert (=> b!7750639 (= e!4594792 (Union!20609 call!718325 call!718323))))

(declare-fun b!7750640 () Bool)

(declare-fun c!1429501 () Bool)

(assert (=> b!7750640 (= c!1429501 ((_ is Union!20609) r!25892))))

(declare-fun e!4594794 () Regex!20609)

(assert (=> b!7750640 (= e!4594794 e!4594792)))

(declare-fun b!7750641 () Bool)

(assert (=> b!7750641 (= e!4594791 (Union!20609 (Concat!29454 call!718326 (regTwo!41730 r!25892)) call!718325))))

(declare-fun b!7750642 () Bool)

(assert (=> b!7750642 (= e!4594794 (ite (= (h!79778 s1!4391) (c!1429430 r!25892)) EmptyExpr!20609 EmptyLang!20609))))

(declare-fun bm!718318 () Bool)

(assert (=> bm!718318 (= call!718323 (derivativeStep!6032 (ite c!1429501 (regTwo!41731 r!25892) (ite c!1429502 (reg!20938 r!25892) (regOne!41730 r!25892))) (h!79778 s1!4391)))))

(declare-fun b!7750643 () Bool)

(declare-fun c!1429500 () Bool)

(assert (=> b!7750643 (= c!1429500 (nullable!9075 (regOne!41730 r!25892)))))

(assert (=> b!7750643 (= e!4594793 e!4594791)))

(declare-fun bm!718319 () Bool)

(assert (=> bm!718319 (= call!718325 (derivativeStep!6032 (ite c!1429501 (regOne!41731 r!25892) (regTwo!41730 r!25892)) (h!79778 s1!4391)))))

(declare-fun b!7750644 () Bool)

(assert (=> b!7750644 (= e!4594795 e!4594794)))

(declare-fun c!1429503 () Bool)

(assert (=> b!7750644 (= c!1429503 ((_ is ElementMatch!20609) r!25892))))

(declare-fun bm!718320 () Bool)

(declare-fun call!718324 () Regex!20609)

(assert (=> bm!718320 (= call!718324 call!718323)))

(declare-fun b!7750645 () Bool)

(assert (=> b!7750645 (= e!4594793 (Concat!29454 call!718324 r!25892))))

(declare-fun bm!718321 () Bool)

(assert (=> bm!718321 (= call!718326 call!718324)))

(declare-fun d!2342684 () Bool)

(declare-fun lt!2669364 () Regex!20609)

(assert (=> d!2342684 (validRegex!11027 lt!2669364)))

(assert (=> d!2342684 (= lt!2669364 e!4594795)))

(declare-fun c!1429504 () Bool)

(assert (=> d!2342684 (= c!1429504 (or ((_ is EmptyExpr!20609) r!25892) ((_ is EmptyLang!20609) r!25892)))))

(assert (=> d!2342684 (validRegex!11027 r!25892)))

(assert (=> d!2342684 (= (derivativeStep!6032 r!25892 (h!79778 s1!4391)) lt!2669364)))

(assert (= (and d!2342684 c!1429504) b!7750637))

(assert (= (and d!2342684 (not c!1429504)) b!7750644))

(assert (= (and b!7750644 c!1429503) b!7750642))

(assert (= (and b!7750644 (not c!1429503)) b!7750640))

(assert (= (and b!7750640 c!1429501) b!7750639))

(assert (= (and b!7750640 (not c!1429501)) b!7750636))

(assert (= (and b!7750636 c!1429502) b!7750645))

(assert (= (and b!7750636 (not c!1429502)) b!7750643))

(assert (= (and b!7750643 c!1429500) b!7750641))

(assert (= (and b!7750643 (not c!1429500)) b!7750638))

(assert (= (or b!7750641 b!7750638) bm!718321))

(assert (= (or b!7750645 bm!718321) bm!718320))

(assert (= (or b!7750639 bm!718320) bm!718318))

(assert (= (or b!7750639 b!7750641) bm!718319))

(declare-fun m!8216538 () Bool)

(assert (=> bm!718318 m!8216538))

(declare-fun m!8216540 () Bool)

(assert (=> b!7750643 m!8216540))

(declare-fun m!8216542 () Bool)

(assert (=> bm!718319 m!8216542))

(declare-fun m!8216544 () Bool)

(assert (=> d!2342684 m!8216544))

(assert (=> d!2342684 m!8216452))

(assert (=> b!7750401 d!2342684))

(declare-fun e!4594812 () Bool)

(assert (=> b!7750407 (= tp!2273895 e!4594812)))

(declare-fun b!7750686 () Bool)

(declare-fun tp!2273913 () Bool)

(assert (=> b!7750686 (= e!4594812 tp!2273913)))

(declare-fun b!7750685 () Bool)

(declare-fun tp!2273914 () Bool)

(declare-fun tp!2273916 () Bool)

(assert (=> b!7750685 (= e!4594812 (and tp!2273914 tp!2273916))))

(declare-fun b!7750684 () Bool)

(assert (=> b!7750684 (= e!4594812 tp_is_empty!51573)))

(declare-fun b!7750687 () Bool)

(declare-fun tp!2273915 () Bool)

(declare-fun tp!2273912 () Bool)

(assert (=> b!7750687 (= e!4594812 (and tp!2273915 tp!2273912))))

(assert (= (and b!7750407 ((_ is ElementMatch!20609) (reg!20938 r!25892))) b!7750684))

(assert (= (and b!7750407 ((_ is Concat!29454) (reg!20938 r!25892))) b!7750685))

(assert (= (and b!7750407 ((_ is Star!20609) (reg!20938 r!25892))) b!7750686))

(assert (= (and b!7750407 ((_ is Union!20609) (reg!20938 r!25892))) b!7750687))

(declare-fun e!4594813 () Bool)

(assert (=> b!7750402 (= tp!2273897 e!4594813)))

(declare-fun b!7750690 () Bool)

(declare-fun tp!2273918 () Bool)

(assert (=> b!7750690 (= e!4594813 tp!2273918)))

(declare-fun b!7750689 () Bool)

(declare-fun tp!2273919 () Bool)

(declare-fun tp!2273921 () Bool)

(assert (=> b!7750689 (= e!4594813 (and tp!2273919 tp!2273921))))

(declare-fun b!7750688 () Bool)

(assert (=> b!7750688 (= e!4594813 tp_is_empty!51573)))

(declare-fun b!7750691 () Bool)

(declare-fun tp!2273920 () Bool)

(declare-fun tp!2273917 () Bool)

(assert (=> b!7750691 (= e!4594813 (and tp!2273920 tp!2273917))))

(assert (= (and b!7750402 ((_ is ElementMatch!20609) (regOne!41730 r!25892))) b!7750688))

(assert (= (and b!7750402 ((_ is Concat!29454) (regOne!41730 r!25892))) b!7750689))

(assert (= (and b!7750402 ((_ is Star!20609) (regOne!41730 r!25892))) b!7750690))

(assert (= (and b!7750402 ((_ is Union!20609) (regOne!41730 r!25892))) b!7750691))

(declare-fun e!4594814 () Bool)

(assert (=> b!7750402 (= tp!2273900 e!4594814)))

(declare-fun b!7750694 () Bool)

(declare-fun tp!2273923 () Bool)

(assert (=> b!7750694 (= e!4594814 tp!2273923)))

(declare-fun b!7750693 () Bool)

(declare-fun tp!2273924 () Bool)

(declare-fun tp!2273926 () Bool)

(assert (=> b!7750693 (= e!4594814 (and tp!2273924 tp!2273926))))

(declare-fun b!7750692 () Bool)

(assert (=> b!7750692 (= e!4594814 tp_is_empty!51573)))

(declare-fun b!7750695 () Bool)

(declare-fun tp!2273925 () Bool)

(declare-fun tp!2273922 () Bool)

(assert (=> b!7750695 (= e!4594814 (and tp!2273925 tp!2273922))))

(assert (= (and b!7750402 ((_ is ElementMatch!20609) (regTwo!41730 r!25892))) b!7750692))

(assert (= (and b!7750402 ((_ is Concat!29454) (regTwo!41730 r!25892))) b!7750693))

(assert (= (and b!7750402 ((_ is Star!20609) (regTwo!41730 r!25892))) b!7750694))

(assert (= (and b!7750402 ((_ is Union!20609) (regTwo!41730 r!25892))) b!7750695))

(declare-fun b!7750710 () Bool)

(declare-fun e!4594819 () Bool)

(declare-fun tp!2273935 () Bool)

(assert (=> b!7750710 (= e!4594819 (and tp_is_empty!51573 tp!2273935))))

(assert (=> b!7750408 (= tp!2273901 e!4594819)))

(assert (= (and b!7750408 ((_ is Cons!73330) (t!388189 s2!3963))) b!7750710))

(declare-fun b!7750711 () Bool)

(declare-fun e!4594820 () Bool)

(declare-fun tp!2273940 () Bool)

(assert (=> b!7750711 (= e!4594820 (and tp_is_empty!51573 tp!2273940))))

(assert (=> b!7750409 (= tp!2273899 e!4594820)))

(assert (= (and b!7750409 ((_ is Cons!73330) (t!388189 s1!4391))) b!7750711))

(declare-fun e!4594821 () Bool)

(assert (=> b!7750400 (= tp!2273896 e!4594821)))

(declare-fun b!7750714 () Bool)

(declare-fun tp!2273942 () Bool)

(assert (=> b!7750714 (= e!4594821 tp!2273942)))

(declare-fun b!7750713 () Bool)

(declare-fun tp!2273943 () Bool)

(declare-fun tp!2273945 () Bool)

(assert (=> b!7750713 (= e!4594821 (and tp!2273943 tp!2273945))))

(declare-fun b!7750712 () Bool)

(assert (=> b!7750712 (= e!4594821 tp_is_empty!51573)))

(declare-fun b!7750715 () Bool)

(declare-fun tp!2273944 () Bool)

(declare-fun tp!2273941 () Bool)

(assert (=> b!7750715 (= e!4594821 (and tp!2273944 tp!2273941))))

(assert (= (and b!7750400 ((_ is ElementMatch!20609) (regOne!41731 r!25892))) b!7750712))

(assert (= (and b!7750400 ((_ is Concat!29454) (regOne!41731 r!25892))) b!7750713))

(assert (= (and b!7750400 ((_ is Star!20609) (regOne!41731 r!25892))) b!7750714))

(assert (= (and b!7750400 ((_ is Union!20609) (regOne!41731 r!25892))) b!7750715))

(declare-fun e!4594822 () Bool)

(assert (=> b!7750400 (= tp!2273898 e!4594822)))

(declare-fun b!7750718 () Bool)

(declare-fun tp!2273947 () Bool)

(assert (=> b!7750718 (= e!4594822 tp!2273947)))

(declare-fun b!7750717 () Bool)

(declare-fun tp!2273948 () Bool)

(declare-fun tp!2273950 () Bool)

(assert (=> b!7750717 (= e!4594822 (and tp!2273948 tp!2273950))))

(declare-fun b!7750716 () Bool)

(assert (=> b!7750716 (= e!4594822 tp_is_empty!51573)))

(declare-fun b!7750719 () Bool)

(declare-fun tp!2273949 () Bool)

(declare-fun tp!2273946 () Bool)

(assert (=> b!7750719 (= e!4594822 (and tp!2273949 tp!2273946))))

(assert (= (and b!7750400 ((_ is ElementMatch!20609) (regTwo!41731 r!25892))) b!7750716))

(assert (= (and b!7750400 ((_ is Concat!29454) (regTwo!41731 r!25892))) b!7750717))

(assert (= (and b!7750400 ((_ is Star!20609) (regTwo!41731 r!25892))) b!7750718))

(assert (= (and b!7750400 ((_ is Union!20609) (regTwo!41731 r!25892))) b!7750719))

(check-sat (not b!7750447) (not b!7750690) (not b!7750711) (not bm!718314) (not d!2342684) (not bm!718276) (not bm!718296) (not b!7750556) (not b!7750718) (not b!7750532) (not b!7750545) (not b!7750643) (not bm!718315) (not b!7750633) (not b!7750528) (not b!7750521) (not bm!718291) (not b!7750530) (not b!7750554) (not b!7750689) (not b!7750685) (not b!7750717) (not d!2342670) (not d!2342674) (not b!7750693) (not b!7750695) (not b!7750691) (not b!7750710) (not b!7750525) (not b!7750719) (not d!2342678) (not b!7750552) (not bm!718272) (not b!7750533) (not b!7750557) (not b!7750714) (not b!7750687) (not b!7750686) (not b!7750713) (not bm!718273) (not bm!718318) (not b!7750694) (not bm!718319) (not b!7750456) (not b!7750715) (not b!7750549) (not bm!718275) tp_is_empty!51573)
(check-sat)
