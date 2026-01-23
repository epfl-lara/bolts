; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742754 () Bool)

(assert start!742754)

(declare-fun b!7842488 () Bool)

(declare-fun e!4636867 () Bool)

(declare-fun tp_is_empty!52441 () Bool)

(declare-fun tp!2321159 () Bool)

(assert (=> b!7842488 (= e!4636867 (and tp_is_empty!52441 tp!2321159))))

(declare-fun res!3119287 () Bool)

(declare-fun e!4636863 () Bool)

(assert (=> start!742754 (=> (not res!3119287) (not e!4636863))))

(declare-datatypes ((B!4009 0))(
  ( (B!4010 (val!31646 Int)) )
))
(declare-datatypes ((List!73880 0))(
  ( (Nil!73756) (Cons!73756 (h!80204 B!4009) (t!388615 List!73880)) )
))
(declare-fun s1!502 () List!73880)

(declare-fun l!3495 () List!73880)

(declare-fun isPrefix!6357 (List!73880 List!73880) Bool)

(assert (=> start!742754 (= res!3119287 (isPrefix!6357 s1!502 l!3495))))

(assert (=> start!742754 e!4636863))

(declare-fun e!4636866 () Bool)

(assert (=> start!742754 e!4636866))

(declare-fun e!4636865 () Bool)

(assert (=> start!742754 e!4636865))

(assert (=> start!742754 e!4636867))

(declare-fun b!7842489 () Bool)

(declare-fun tp!2321158 () Bool)

(assert (=> b!7842489 (= e!4636866 (and tp_is_empty!52441 tp!2321158))))

(declare-fun b!7842490 () Bool)

(declare-fun res!3119290 () Bool)

(assert (=> b!7842490 (=> (not res!3119290) (not e!4636863))))

(declare-fun s2!461 () List!73880)

(get-info :version)

(assert (=> b!7842490 (= res!3119290 ((_ is Cons!73756) s2!461))))

(declare-fun b!7842491 () Bool)

(declare-fun res!3119286 () Bool)

(declare-fun e!4636864 () Bool)

(assert (=> b!7842491 (=> (not res!3119286) (not e!4636864))))

(declare-fun lt!2678742 () List!73880)

(assert (=> b!7842491 (= res!3119286 (isPrefix!6357 (t!388615 s2!461) lt!2678742))))

(declare-fun b!7842492 () Bool)

(assert (=> b!7842492 (= e!4636863 e!4636864)))

(declare-fun res!3119291 () Bool)

(assert (=> b!7842492 (=> (not res!3119291) (not e!4636864))))

(declare-fun lt!2678741 () List!73880)

(assert (=> b!7842492 (= res!3119291 (isPrefix!6357 lt!2678741 lt!2678742))))

(declare-fun tail!15561 (List!73880) List!73880)

(assert (=> b!7842492 (= lt!2678742 (tail!15561 l!3495))))

(assert (=> b!7842492 (= lt!2678741 (tail!15561 s1!502))))

(declare-fun b!7842493 () Bool)

(declare-fun res!3119288 () Bool)

(assert (=> b!7842493 (=> (not res!3119288) (not e!4636863))))

(declare-fun size!42805 (List!73880) Int)

(assert (=> b!7842493 (= res!3119288 (<= (size!42805 s2!461) (size!42805 s1!502)))))

(declare-fun b!7842494 () Bool)

(declare-fun res!3119289 () Bool)

(assert (=> b!7842494 (=> (not res!3119289) (not e!4636864))))

(assert (=> b!7842494 (= res!3119289 (<= (size!42805 (t!388615 s2!461)) (size!42805 lt!2678741)))))

(declare-fun b!7842495 () Bool)

(declare-fun ListPrimitiveSize!458 (List!73880) Int)

(assert (=> b!7842495 (= e!4636864 (>= (ListPrimitiveSize!458 (t!388615 s2!461)) (ListPrimitiveSize!458 s2!461)))))

(declare-fun b!7842496 () Bool)

(declare-fun res!3119292 () Bool)

(assert (=> b!7842496 (=> (not res!3119292) (not e!4636863))))

(assert (=> b!7842496 (= res!3119292 (isPrefix!6357 s2!461 l!3495))))

(declare-fun b!7842497 () Bool)

(declare-fun tp!2321157 () Bool)

(assert (=> b!7842497 (= e!4636865 (and tp_is_empty!52441 tp!2321157))))

(assert (= (and start!742754 res!3119287) b!7842496))

(assert (= (and b!7842496 res!3119292) b!7842493))

(assert (= (and b!7842493 res!3119288) b!7842490))

(assert (= (and b!7842490 res!3119290) b!7842492))

(assert (= (and b!7842492 res!3119291) b!7842491))

(assert (= (and b!7842491 res!3119286) b!7842494))

(assert (= (and b!7842494 res!3119289) b!7842495))

(assert (= (and start!742754 ((_ is Cons!73756) s1!502)) b!7842489))

(assert (= (and start!742754 ((_ is Cons!73756) l!3495)) b!7842497))

(assert (= (and start!742754 ((_ is Cons!73756) s2!461)) b!7842488))

(declare-fun m!8254654 () Bool)

(assert (=> b!7842496 m!8254654))

(declare-fun m!8254656 () Bool)

(assert (=> b!7842492 m!8254656))

(declare-fun m!8254658 () Bool)

(assert (=> b!7842492 m!8254658))

(declare-fun m!8254660 () Bool)

(assert (=> b!7842492 m!8254660))

(declare-fun m!8254662 () Bool)

(assert (=> b!7842495 m!8254662))

(declare-fun m!8254664 () Bool)

(assert (=> b!7842495 m!8254664))

(declare-fun m!8254666 () Bool)

(assert (=> start!742754 m!8254666))

(declare-fun m!8254668 () Bool)

(assert (=> b!7842494 m!8254668))

(declare-fun m!8254670 () Bool)

(assert (=> b!7842494 m!8254670))

(declare-fun m!8254672 () Bool)

(assert (=> b!7842493 m!8254672))

(declare-fun m!8254674 () Bool)

(assert (=> b!7842493 m!8254674))

(declare-fun m!8254676 () Bool)

(assert (=> b!7842491 m!8254676))

(check-sat (not b!7842489) (not b!7842495) (not b!7842491) tp_is_empty!52441 (not b!7842493) (not start!742754) (not b!7842492) (not b!7842497) (not b!7842494) (not b!7842496) (not b!7842488))
(check-sat)
(get-model)

(declare-fun b!7842557 () Bool)

(declare-fun e!4636909 () Bool)

(declare-fun e!4636908 () Bool)

(assert (=> b!7842557 (= e!4636909 e!4636908)))

(declare-fun res!3119328 () Bool)

(assert (=> b!7842557 (=> (not res!3119328) (not e!4636908))))

(assert (=> b!7842557 (= res!3119328 (not ((_ is Nil!73756) lt!2678742)))))

(declare-fun b!7842560 () Bool)

(declare-fun e!4636907 () Bool)

(assert (=> b!7842560 (= e!4636907 (>= (size!42805 lt!2678742) (size!42805 (t!388615 s2!461))))))

(declare-fun b!7842559 () Bool)

(assert (=> b!7842559 (= e!4636908 (isPrefix!6357 (tail!15561 (t!388615 s2!461)) (tail!15561 lt!2678742)))))

(declare-fun b!7842558 () Bool)

(declare-fun res!3119325 () Bool)

(assert (=> b!7842558 (=> (not res!3119325) (not e!4636908))))

(declare-fun head!16018 (List!73880) B!4009)

(assert (=> b!7842558 (= res!3119325 (= (head!16018 (t!388615 s2!461)) (head!16018 lt!2678742)))))

(declare-fun d!2352463 () Bool)

(assert (=> d!2352463 e!4636907))

(declare-fun res!3119326 () Bool)

(assert (=> d!2352463 (=> res!3119326 e!4636907)))

(declare-fun lt!2678761 () Bool)

(assert (=> d!2352463 (= res!3119326 (not lt!2678761))))

(assert (=> d!2352463 (= lt!2678761 e!4636909)))

(declare-fun res!3119327 () Bool)

(assert (=> d!2352463 (=> res!3119327 e!4636909)))

(assert (=> d!2352463 (= res!3119327 ((_ is Nil!73756) (t!388615 s2!461)))))

(assert (=> d!2352463 (= (isPrefix!6357 (t!388615 s2!461) lt!2678742) lt!2678761)))

(assert (= (and d!2352463 (not res!3119327)) b!7842557))

(assert (= (and b!7842557 res!3119328) b!7842558))

(assert (= (and b!7842558 res!3119325) b!7842559))

(assert (= (and d!2352463 (not res!3119326)) b!7842560))

(declare-fun m!8254718 () Bool)

(assert (=> b!7842560 m!8254718))

(assert (=> b!7842560 m!8254668))

(declare-fun m!8254720 () Bool)

(assert (=> b!7842559 m!8254720))

(declare-fun m!8254722 () Bool)

(assert (=> b!7842559 m!8254722))

(assert (=> b!7842559 m!8254720))

(assert (=> b!7842559 m!8254722))

(declare-fun m!8254724 () Bool)

(assert (=> b!7842559 m!8254724))

(declare-fun m!8254726 () Bool)

(assert (=> b!7842558 m!8254726))

(declare-fun m!8254728 () Bool)

(assert (=> b!7842558 m!8254728))

(assert (=> b!7842491 d!2352463))

(declare-fun b!7842561 () Bool)

(declare-fun e!4636912 () Bool)

(declare-fun e!4636911 () Bool)

(assert (=> b!7842561 (= e!4636912 e!4636911)))

(declare-fun res!3119332 () Bool)

(assert (=> b!7842561 (=> (not res!3119332) (not e!4636911))))

(assert (=> b!7842561 (= res!3119332 (not ((_ is Nil!73756) l!3495)))))

(declare-fun b!7842564 () Bool)

(declare-fun e!4636910 () Bool)

(assert (=> b!7842564 (= e!4636910 (>= (size!42805 l!3495) (size!42805 s2!461)))))

(declare-fun b!7842563 () Bool)

(assert (=> b!7842563 (= e!4636911 (isPrefix!6357 (tail!15561 s2!461) (tail!15561 l!3495)))))

(declare-fun b!7842562 () Bool)

(declare-fun res!3119329 () Bool)

(assert (=> b!7842562 (=> (not res!3119329) (not e!4636911))))

(assert (=> b!7842562 (= res!3119329 (= (head!16018 s2!461) (head!16018 l!3495)))))

(declare-fun d!2352487 () Bool)

(assert (=> d!2352487 e!4636910))

(declare-fun res!3119330 () Bool)

(assert (=> d!2352487 (=> res!3119330 e!4636910)))

(declare-fun lt!2678762 () Bool)

(assert (=> d!2352487 (= res!3119330 (not lt!2678762))))

(assert (=> d!2352487 (= lt!2678762 e!4636912)))

(declare-fun res!3119331 () Bool)

(assert (=> d!2352487 (=> res!3119331 e!4636912)))

(assert (=> d!2352487 (= res!3119331 ((_ is Nil!73756) s2!461))))

(assert (=> d!2352487 (= (isPrefix!6357 s2!461 l!3495) lt!2678762)))

(assert (= (and d!2352487 (not res!3119331)) b!7842561))

(assert (= (and b!7842561 res!3119332) b!7842562))

(assert (= (and b!7842562 res!3119329) b!7842563))

(assert (= (and d!2352487 (not res!3119330)) b!7842564))

(declare-fun m!8254730 () Bool)

(assert (=> b!7842564 m!8254730))

(assert (=> b!7842564 m!8254672))

(declare-fun m!8254732 () Bool)

(assert (=> b!7842563 m!8254732))

(assert (=> b!7842563 m!8254658))

(assert (=> b!7842563 m!8254732))

(assert (=> b!7842563 m!8254658))

(declare-fun m!8254734 () Bool)

(assert (=> b!7842563 m!8254734))

(declare-fun m!8254736 () Bool)

(assert (=> b!7842562 m!8254736))

(declare-fun m!8254738 () Bool)

(assert (=> b!7842562 m!8254738))

(assert (=> b!7842496 d!2352487))

(declare-fun d!2352489 () Bool)

(declare-fun lt!2678765 () Int)

(assert (=> d!2352489 (>= lt!2678765 0)))

(declare-fun e!4636915 () Int)

(assert (=> d!2352489 (= lt!2678765 e!4636915)))

(declare-fun c!1441727 () Bool)

(assert (=> d!2352489 (= c!1441727 ((_ is Nil!73756) (t!388615 s2!461)))))

(assert (=> d!2352489 (= (size!42805 (t!388615 s2!461)) lt!2678765)))

(declare-fun b!7842569 () Bool)

(assert (=> b!7842569 (= e!4636915 0)))

(declare-fun b!7842570 () Bool)

(assert (=> b!7842570 (= e!4636915 (+ 1 (size!42805 (t!388615 (t!388615 s2!461)))))))

(assert (= (and d!2352489 c!1441727) b!7842569))

(assert (= (and d!2352489 (not c!1441727)) b!7842570))

(declare-fun m!8254740 () Bool)

(assert (=> b!7842570 m!8254740))

(assert (=> b!7842494 d!2352489))

(declare-fun d!2352491 () Bool)

(declare-fun lt!2678766 () Int)

(assert (=> d!2352491 (>= lt!2678766 0)))

(declare-fun e!4636916 () Int)

(assert (=> d!2352491 (= lt!2678766 e!4636916)))

(declare-fun c!1441728 () Bool)

(assert (=> d!2352491 (= c!1441728 ((_ is Nil!73756) lt!2678741))))

(assert (=> d!2352491 (= (size!42805 lt!2678741) lt!2678766)))

(declare-fun b!7842571 () Bool)

(assert (=> b!7842571 (= e!4636916 0)))

(declare-fun b!7842572 () Bool)

(assert (=> b!7842572 (= e!4636916 (+ 1 (size!42805 (t!388615 lt!2678741))))))

(assert (= (and d!2352491 c!1441728) b!7842571))

(assert (= (and d!2352491 (not c!1441728)) b!7842572))

(declare-fun m!8254742 () Bool)

(assert (=> b!7842572 m!8254742))

(assert (=> b!7842494 d!2352491))

(declare-fun b!7842573 () Bool)

(declare-fun e!4636919 () Bool)

(declare-fun e!4636918 () Bool)

(assert (=> b!7842573 (= e!4636919 e!4636918)))

(declare-fun res!3119336 () Bool)

(assert (=> b!7842573 (=> (not res!3119336) (not e!4636918))))

(assert (=> b!7842573 (= res!3119336 (not ((_ is Nil!73756) l!3495)))))

(declare-fun b!7842576 () Bool)

(declare-fun e!4636917 () Bool)

(assert (=> b!7842576 (= e!4636917 (>= (size!42805 l!3495) (size!42805 s1!502)))))

(declare-fun b!7842575 () Bool)

(assert (=> b!7842575 (= e!4636918 (isPrefix!6357 (tail!15561 s1!502) (tail!15561 l!3495)))))

(declare-fun b!7842574 () Bool)

(declare-fun res!3119333 () Bool)

(assert (=> b!7842574 (=> (not res!3119333) (not e!4636918))))

(assert (=> b!7842574 (= res!3119333 (= (head!16018 s1!502) (head!16018 l!3495)))))

(declare-fun d!2352493 () Bool)

(assert (=> d!2352493 e!4636917))

(declare-fun res!3119334 () Bool)

(assert (=> d!2352493 (=> res!3119334 e!4636917)))

(declare-fun lt!2678767 () Bool)

(assert (=> d!2352493 (= res!3119334 (not lt!2678767))))

(assert (=> d!2352493 (= lt!2678767 e!4636919)))

(declare-fun res!3119335 () Bool)

(assert (=> d!2352493 (=> res!3119335 e!4636919)))

(assert (=> d!2352493 (= res!3119335 ((_ is Nil!73756) s1!502))))

(assert (=> d!2352493 (= (isPrefix!6357 s1!502 l!3495) lt!2678767)))

(assert (= (and d!2352493 (not res!3119335)) b!7842573))

(assert (= (and b!7842573 res!3119336) b!7842574))

(assert (= (and b!7842574 res!3119333) b!7842575))

(assert (= (and d!2352493 (not res!3119334)) b!7842576))

(assert (=> b!7842576 m!8254730))

(assert (=> b!7842576 m!8254674))

(assert (=> b!7842575 m!8254660))

(assert (=> b!7842575 m!8254658))

(assert (=> b!7842575 m!8254660))

(assert (=> b!7842575 m!8254658))

(declare-fun m!8254744 () Bool)

(assert (=> b!7842575 m!8254744))

(declare-fun m!8254746 () Bool)

(assert (=> b!7842574 m!8254746))

(assert (=> b!7842574 m!8254738))

(assert (=> start!742754 d!2352493))

(declare-fun d!2352495 () Bool)

(declare-fun lt!2678770 () Int)

(assert (=> d!2352495 (>= lt!2678770 0)))

(declare-fun e!4636922 () Int)

(assert (=> d!2352495 (= lt!2678770 e!4636922)))

(declare-fun c!1441731 () Bool)

(assert (=> d!2352495 (= c!1441731 ((_ is Nil!73756) (t!388615 s2!461)))))

(assert (=> d!2352495 (= (ListPrimitiveSize!458 (t!388615 s2!461)) lt!2678770)))

(declare-fun b!7842581 () Bool)

(assert (=> b!7842581 (= e!4636922 0)))

(declare-fun b!7842582 () Bool)

(assert (=> b!7842582 (= e!4636922 (+ 1 (ListPrimitiveSize!458 (t!388615 (t!388615 s2!461)))))))

(assert (= (and d!2352495 c!1441731) b!7842581))

(assert (= (and d!2352495 (not c!1441731)) b!7842582))

(declare-fun m!8254748 () Bool)

(assert (=> b!7842582 m!8254748))

(assert (=> b!7842495 d!2352495))

(declare-fun d!2352497 () Bool)

(declare-fun lt!2678771 () Int)

(assert (=> d!2352497 (>= lt!2678771 0)))

(declare-fun e!4636923 () Int)

(assert (=> d!2352497 (= lt!2678771 e!4636923)))

(declare-fun c!1441732 () Bool)

(assert (=> d!2352497 (= c!1441732 ((_ is Nil!73756) s2!461))))

(assert (=> d!2352497 (= (ListPrimitiveSize!458 s2!461) lt!2678771)))

(declare-fun b!7842583 () Bool)

(assert (=> b!7842583 (= e!4636923 0)))

(declare-fun b!7842584 () Bool)

(assert (=> b!7842584 (= e!4636923 (+ 1 (ListPrimitiveSize!458 (t!388615 s2!461))))))

(assert (= (and d!2352497 c!1441732) b!7842583))

(assert (= (and d!2352497 (not c!1441732)) b!7842584))

(assert (=> b!7842584 m!8254662))

(assert (=> b!7842495 d!2352497))

(declare-fun d!2352499 () Bool)

(declare-fun lt!2678772 () Int)

(assert (=> d!2352499 (>= lt!2678772 0)))

(declare-fun e!4636924 () Int)

(assert (=> d!2352499 (= lt!2678772 e!4636924)))

(declare-fun c!1441733 () Bool)

(assert (=> d!2352499 (= c!1441733 ((_ is Nil!73756) s2!461))))

(assert (=> d!2352499 (= (size!42805 s2!461) lt!2678772)))

(declare-fun b!7842585 () Bool)

(assert (=> b!7842585 (= e!4636924 0)))

(declare-fun b!7842586 () Bool)

(assert (=> b!7842586 (= e!4636924 (+ 1 (size!42805 (t!388615 s2!461))))))

(assert (= (and d!2352499 c!1441733) b!7842585))

(assert (= (and d!2352499 (not c!1441733)) b!7842586))

(assert (=> b!7842586 m!8254668))

(assert (=> b!7842493 d!2352499))

(declare-fun d!2352501 () Bool)

(declare-fun lt!2678773 () Int)

(assert (=> d!2352501 (>= lt!2678773 0)))

(declare-fun e!4636925 () Int)

(assert (=> d!2352501 (= lt!2678773 e!4636925)))

(declare-fun c!1441734 () Bool)

(assert (=> d!2352501 (= c!1441734 ((_ is Nil!73756) s1!502))))

(assert (=> d!2352501 (= (size!42805 s1!502) lt!2678773)))

(declare-fun b!7842587 () Bool)

(assert (=> b!7842587 (= e!4636925 0)))

(declare-fun b!7842588 () Bool)

(assert (=> b!7842588 (= e!4636925 (+ 1 (size!42805 (t!388615 s1!502))))))

(assert (= (and d!2352501 c!1441734) b!7842587))

(assert (= (and d!2352501 (not c!1441734)) b!7842588))

(declare-fun m!8254750 () Bool)

(assert (=> b!7842588 m!8254750))

(assert (=> b!7842493 d!2352501))

(declare-fun b!7842589 () Bool)

(declare-fun e!4636928 () Bool)

(declare-fun e!4636927 () Bool)

(assert (=> b!7842589 (= e!4636928 e!4636927)))

(declare-fun res!3119340 () Bool)

(assert (=> b!7842589 (=> (not res!3119340) (not e!4636927))))

(assert (=> b!7842589 (= res!3119340 (not ((_ is Nil!73756) lt!2678742)))))

(declare-fun b!7842592 () Bool)

(declare-fun e!4636926 () Bool)

(assert (=> b!7842592 (= e!4636926 (>= (size!42805 lt!2678742) (size!42805 lt!2678741)))))

(declare-fun b!7842591 () Bool)

(assert (=> b!7842591 (= e!4636927 (isPrefix!6357 (tail!15561 lt!2678741) (tail!15561 lt!2678742)))))

(declare-fun b!7842590 () Bool)

(declare-fun res!3119337 () Bool)

(assert (=> b!7842590 (=> (not res!3119337) (not e!4636927))))

(assert (=> b!7842590 (= res!3119337 (= (head!16018 lt!2678741) (head!16018 lt!2678742)))))

(declare-fun d!2352503 () Bool)

(assert (=> d!2352503 e!4636926))

(declare-fun res!3119338 () Bool)

(assert (=> d!2352503 (=> res!3119338 e!4636926)))

(declare-fun lt!2678774 () Bool)

(assert (=> d!2352503 (= res!3119338 (not lt!2678774))))

(assert (=> d!2352503 (= lt!2678774 e!4636928)))

(declare-fun res!3119339 () Bool)

(assert (=> d!2352503 (=> res!3119339 e!4636928)))

(assert (=> d!2352503 (= res!3119339 ((_ is Nil!73756) lt!2678741))))

(assert (=> d!2352503 (= (isPrefix!6357 lt!2678741 lt!2678742) lt!2678774)))

(assert (= (and d!2352503 (not res!3119339)) b!7842589))

(assert (= (and b!7842589 res!3119340) b!7842590))

(assert (= (and b!7842590 res!3119337) b!7842591))

(assert (= (and d!2352503 (not res!3119338)) b!7842592))

(assert (=> b!7842592 m!8254718))

(assert (=> b!7842592 m!8254670))

(declare-fun m!8254752 () Bool)

(assert (=> b!7842591 m!8254752))

(assert (=> b!7842591 m!8254722))

(assert (=> b!7842591 m!8254752))

(assert (=> b!7842591 m!8254722))

(declare-fun m!8254754 () Bool)

(assert (=> b!7842591 m!8254754))

(declare-fun m!8254756 () Bool)

(assert (=> b!7842590 m!8254756))

(assert (=> b!7842590 m!8254728))

(assert (=> b!7842492 d!2352503))

(declare-fun d!2352505 () Bool)

(assert (=> d!2352505 (= (tail!15561 l!3495) (t!388615 l!3495))))

(assert (=> b!7842492 d!2352505))

(declare-fun d!2352507 () Bool)

(assert (=> d!2352507 (= (tail!15561 s1!502) (t!388615 s1!502))))

(assert (=> b!7842492 d!2352507))

(declare-fun b!7842597 () Bool)

(declare-fun e!4636931 () Bool)

(declare-fun tp!2321167 () Bool)

(assert (=> b!7842597 (= e!4636931 (and tp_is_empty!52441 tp!2321167))))

(assert (=> b!7842489 (= tp!2321158 e!4636931)))

(assert (= (and b!7842489 ((_ is Cons!73756) (t!388615 s1!502))) b!7842597))

(declare-fun b!7842598 () Bool)

(declare-fun e!4636932 () Bool)

(declare-fun tp!2321168 () Bool)

(assert (=> b!7842598 (= e!4636932 (and tp_is_empty!52441 tp!2321168))))

(assert (=> b!7842488 (= tp!2321159 e!4636932)))

(assert (= (and b!7842488 ((_ is Cons!73756) (t!388615 s2!461))) b!7842598))

(declare-fun b!7842599 () Bool)

(declare-fun e!4636933 () Bool)

(declare-fun tp!2321169 () Bool)

(assert (=> b!7842599 (= e!4636933 (and tp_is_empty!52441 tp!2321169))))

(assert (=> b!7842497 (= tp!2321157 e!4636933)))

(assert (= (and b!7842497 ((_ is Cons!73756) (t!388615 l!3495))) b!7842599))

(check-sat (not b!7842591) tp_is_empty!52441 (not b!7842558) (not b!7842599) (not b!7842590) (not b!7842592) (not b!7842576) (not b!7842598) (not b!7842572) (not b!7842570) (not b!7842584) (not b!7842563) (not b!7842564) (not b!7842586) (not b!7842575) (not b!7842588) (not b!7842560) (not b!7842574) (not b!7842597) (not b!7842559) (not b!7842582) (not b!7842562))
(check-sat)
