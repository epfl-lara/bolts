; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200744 () Bool)

(assert start!200744)

(declare-fun b_free!56819 () Bool)

(declare-fun b_next!57523 () Bool)

(assert (=> start!200744 (= b_free!56819 (not b_next!57523))))

(declare-fun tp!604977 () Bool)

(declare-fun b_and!162647 () Bool)

(assert (=> start!200744 (= tp!604977 b_and!162647)))

(declare-fun b!2037461 () Bool)

(declare-fun e!1286590 () Bool)

(declare-fun tp!604976 () Bool)

(assert (=> b!2037461 (= e!1286590 tp!604976)))

(declare-fun b!2037462 () Bool)

(declare-fun e!1286589 () Bool)

(declare-datatypes ((T!35976 0))(
  ( (T!35977 (val!6472 Int)) )
))
(declare-datatypes ((List!22355 0))(
  ( (Nil!22273) (Cons!22273 (h!27674 T!35976) (t!191312 List!22355)) )
))
(declare-datatypes ((IArray!14935 0))(
  ( (IArray!14936 (innerList!7525 List!22355)) )
))
(declare-datatypes ((Conc!7465 0))(
  ( (Node!7465 (left!17734 Conc!7465) (right!18064 Conc!7465) (csize!15160 Int) (cheight!7676 Int)) (Leaf!10939 (xs!10367 IArray!14935) (csize!15161 Int)) (Empty!7465) )
))
(declare-fun t!4319 () Conc!7465)

(declare-fun inv!29560 (IArray!14935) Bool)

(assert (=> b!2037462 (= e!1286589 (and (inv!29560 (xs!10367 t!4319)) e!1286590))))

(declare-fun b!2037463 () Bool)

(declare-fun e!1286591 () Bool)

(declare-fun lt!764933 () IArray!14935)

(declare-fun lt!764934 () Int)

(declare-fun inv!29561 (Conc!7465) Bool)

(assert (=> b!2037463 (= e!1286591 (not (inv!29561 (Leaf!10939 lt!764933 lt!764934))))))

(declare-fun b!2037464 () Bool)

(declare-fun e!1286588 () Bool)

(assert (=> b!2037464 (= e!1286588 e!1286591)))

(declare-fun res!893313 () Bool)

(assert (=> b!2037464 (=> (not res!893313) (not e!1286591))))

(assert (=> b!2037464 (= res!893313 (not (= lt!764934 0)))))

(declare-fun size!17417 (IArray!14935) Int)

(assert (=> b!2037464 (= lt!764934 (size!17417 lt!764933))))

(declare-fun p!1489 () Int)

(declare-fun filter!466 (IArray!14935 Int) IArray!14935)

(assert (=> b!2037464 (= lt!764933 (filter!466 (xs!10367 t!4319) p!1489))))

(declare-fun b!2037465 () Bool)

(declare-fun tp!604978 () Bool)

(declare-fun tp!604975 () Bool)

(assert (=> b!2037465 (= e!1286589 (and (inv!29561 (left!17734 t!4319)) tp!604975 (inv!29561 (right!18064 t!4319)) tp!604978))))

(declare-fun b!2037466 () Bool)

(declare-fun res!893312 () Bool)

(assert (=> b!2037466 (=> (not res!893312) (not e!1286588))))

(get-info :version)

(assert (=> b!2037466 (= res!893312 (and (not ((_ is Empty!7465) t!4319)) ((_ is Leaf!10939) t!4319)))))

(declare-fun res!893311 () Bool)

(assert (=> start!200744 (=> (not res!893311) (not e!1286588))))

(declare-fun isBalanced!2343 (Conc!7465) Bool)

(assert (=> start!200744 (= res!893311 (isBalanced!2343 t!4319))))

(assert (=> start!200744 e!1286588))

(assert (=> start!200744 (and (inv!29561 t!4319) e!1286589)))

(assert (=> start!200744 tp!604977))

(assert (= (and start!200744 res!893311) b!2037466))

(assert (= (and b!2037466 res!893312) b!2037464))

(assert (= (and b!2037464 res!893313) b!2037463))

(assert (= (and start!200744 ((_ is Node!7465) t!4319)) b!2037465))

(assert (= b!2037462 b!2037461))

(assert (= (and start!200744 ((_ is Leaf!10939) t!4319)) b!2037462))

(declare-fun m!2480529 () Bool)

(assert (=> b!2037462 m!2480529))

(declare-fun m!2480531 () Bool)

(assert (=> b!2037465 m!2480531))

(declare-fun m!2480533 () Bool)

(assert (=> b!2037465 m!2480533))

(declare-fun m!2480535 () Bool)

(assert (=> b!2037463 m!2480535))

(declare-fun m!2480537 () Bool)

(assert (=> b!2037464 m!2480537))

(declare-fun m!2480539 () Bool)

(assert (=> b!2037464 m!2480539))

(declare-fun m!2480541 () Bool)

(assert (=> start!200744 m!2480541))

(declare-fun m!2480543 () Bool)

(assert (=> start!200744 m!2480543))

(check-sat b_and!162647 (not b!2037462) (not b!2037461) (not b_next!57523) (not b!2037465) (not b!2037463) (not start!200744) (not b!2037464))
(check-sat b_and!162647 (not b_next!57523))
(get-model)

(declare-fun d!623818 () Bool)

(declare-fun lt!764937 () Int)

(declare-fun size!17418 (List!22355) Int)

(declare-fun list!9126 (IArray!14935) List!22355)

(assert (=> d!623818 (= lt!764937 (size!17418 (list!9126 lt!764933)))))

(declare-fun choose!12433 (IArray!14935) Int)

(assert (=> d!623818 (= lt!764937 (choose!12433 lt!764933))))

(assert (=> d!623818 (= (size!17417 lt!764933) lt!764937)))

(declare-fun bs!421401 () Bool)

(assert (= bs!421401 d!623818))

(declare-fun m!2480545 () Bool)

(assert (=> bs!421401 m!2480545))

(assert (=> bs!421401 m!2480545))

(declare-fun m!2480547 () Bool)

(assert (=> bs!421401 m!2480547))

(declare-fun m!2480549 () Bool)

(assert (=> bs!421401 m!2480549))

(assert (=> b!2037464 d!623818))

(declare-fun d!623820 () Bool)

(declare-fun lt!764940 () IArray!14935)

(declare-fun filter!467 (List!22355 Int) List!22355)

(assert (=> d!623820 (= lt!764940 (IArray!14936 (filter!467 (list!9126 (xs!10367 t!4319)) p!1489)))))

(declare-fun choose!12434 (IArray!14935 Int) IArray!14935)

(assert (=> d!623820 (= lt!764940 (choose!12434 (xs!10367 t!4319) p!1489))))

(assert (=> d!623820 (= (filter!466 (xs!10367 t!4319) p!1489) lt!764940)))

(declare-fun bs!421402 () Bool)

(assert (= bs!421402 d!623820))

(declare-fun m!2480551 () Bool)

(assert (=> bs!421402 m!2480551))

(assert (=> bs!421402 m!2480551))

(declare-fun m!2480553 () Bool)

(assert (=> bs!421402 m!2480553))

(declare-fun m!2480555 () Bool)

(assert (=> bs!421402 m!2480555))

(assert (=> b!2037464 d!623820))

(declare-fun d!623822 () Bool)

(declare-fun c!329990 () Bool)

(assert (=> d!623822 (= c!329990 ((_ is Node!7465) (left!17734 t!4319)))))

(declare-fun e!1286596 () Bool)

(assert (=> d!623822 (= (inv!29561 (left!17734 t!4319)) e!1286596)))

(declare-fun b!2037473 () Bool)

(declare-fun inv!29562 (Conc!7465) Bool)

(assert (=> b!2037473 (= e!1286596 (inv!29562 (left!17734 t!4319)))))

(declare-fun b!2037474 () Bool)

(declare-fun e!1286597 () Bool)

(assert (=> b!2037474 (= e!1286596 e!1286597)))

(declare-fun res!893316 () Bool)

(assert (=> b!2037474 (= res!893316 (not ((_ is Leaf!10939) (left!17734 t!4319))))))

(assert (=> b!2037474 (=> res!893316 e!1286597)))

(declare-fun b!2037475 () Bool)

(declare-fun inv!29563 (Conc!7465) Bool)

(assert (=> b!2037475 (= e!1286597 (inv!29563 (left!17734 t!4319)))))

(assert (= (and d!623822 c!329990) b!2037473))

(assert (= (and d!623822 (not c!329990)) b!2037474))

(assert (= (and b!2037474 (not res!893316)) b!2037475))

(declare-fun m!2480557 () Bool)

(assert (=> b!2037473 m!2480557))

(declare-fun m!2480559 () Bool)

(assert (=> b!2037475 m!2480559))

(assert (=> b!2037465 d!623822))

(declare-fun d!623824 () Bool)

(declare-fun c!329991 () Bool)

(assert (=> d!623824 (= c!329991 ((_ is Node!7465) (right!18064 t!4319)))))

(declare-fun e!1286598 () Bool)

(assert (=> d!623824 (= (inv!29561 (right!18064 t!4319)) e!1286598)))

(declare-fun b!2037476 () Bool)

(assert (=> b!2037476 (= e!1286598 (inv!29562 (right!18064 t!4319)))))

(declare-fun b!2037477 () Bool)

(declare-fun e!1286599 () Bool)

(assert (=> b!2037477 (= e!1286598 e!1286599)))

(declare-fun res!893317 () Bool)

(assert (=> b!2037477 (= res!893317 (not ((_ is Leaf!10939) (right!18064 t!4319))))))

(assert (=> b!2037477 (=> res!893317 e!1286599)))

(declare-fun b!2037478 () Bool)

(assert (=> b!2037478 (= e!1286599 (inv!29563 (right!18064 t!4319)))))

(assert (= (and d!623824 c!329991) b!2037476))

(assert (= (and d!623824 (not c!329991)) b!2037477))

(assert (= (and b!2037477 (not res!893317)) b!2037478))

(declare-fun m!2480561 () Bool)

(assert (=> b!2037476 m!2480561))

(declare-fun m!2480563 () Bool)

(assert (=> b!2037478 m!2480563))

(assert (=> b!2037465 d!623824))

(declare-fun d!623826 () Bool)

(assert (=> d!623826 (= (inv!29560 (xs!10367 t!4319)) (<= (size!17418 (innerList!7525 (xs!10367 t!4319))) 2147483647))))

(declare-fun bs!421403 () Bool)

(assert (= bs!421403 d!623826))

(declare-fun m!2480565 () Bool)

(assert (=> bs!421403 m!2480565))

(assert (=> b!2037462 d!623826))

(declare-fun b!2037491 () Bool)

(declare-fun res!893330 () Bool)

(declare-fun e!1286605 () Bool)

(assert (=> b!2037491 (=> (not res!893330) (not e!1286605))))

(assert (=> b!2037491 (= res!893330 (isBalanced!2343 (right!18064 t!4319)))))

(declare-fun b!2037492 () Bool)

(declare-fun res!893331 () Bool)

(assert (=> b!2037492 (=> (not res!893331) (not e!1286605))))

(declare-fun isEmpty!13924 (Conc!7465) Bool)

(assert (=> b!2037492 (= res!893331 (not (isEmpty!13924 (left!17734 t!4319))))))

(declare-fun b!2037493 () Bool)

(declare-fun e!1286604 () Bool)

(assert (=> b!2037493 (= e!1286604 e!1286605)))

(declare-fun res!893334 () Bool)

(assert (=> b!2037493 (=> (not res!893334) (not e!1286605))))

(declare-fun height!1164 (Conc!7465) Int)

(assert (=> b!2037493 (= res!893334 (<= (- 1) (- (height!1164 (left!17734 t!4319)) (height!1164 (right!18064 t!4319)))))))

(declare-fun b!2037494 () Bool)

(declare-fun res!893333 () Bool)

(assert (=> b!2037494 (=> (not res!893333) (not e!1286605))))

(assert (=> b!2037494 (= res!893333 (<= (- (height!1164 (left!17734 t!4319)) (height!1164 (right!18064 t!4319))) 1))))

(declare-fun b!2037495 () Bool)

(declare-fun res!893335 () Bool)

(assert (=> b!2037495 (=> (not res!893335) (not e!1286605))))

(assert (=> b!2037495 (= res!893335 (isBalanced!2343 (left!17734 t!4319)))))

(declare-fun d!623828 () Bool)

(declare-fun res!893332 () Bool)

(assert (=> d!623828 (=> res!893332 e!1286604)))

(assert (=> d!623828 (= res!893332 (not ((_ is Node!7465) t!4319)))))

(assert (=> d!623828 (= (isBalanced!2343 t!4319) e!1286604)))

(declare-fun b!2037496 () Bool)

(assert (=> b!2037496 (= e!1286605 (not (isEmpty!13924 (right!18064 t!4319))))))

(assert (= (and d!623828 (not res!893332)) b!2037493))

(assert (= (and b!2037493 res!893334) b!2037494))

(assert (= (and b!2037494 res!893333) b!2037495))

(assert (= (and b!2037495 res!893335) b!2037491))

(assert (= (and b!2037491 res!893330) b!2037492))

(assert (= (and b!2037492 res!893331) b!2037496))

(declare-fun m!2480569 () Bool)

(assert (=> b!2037494 m!2480569))

(declare-fun m!2480571 () Bool)

(assert (=> b!2037494 m!2480571))

(declare-fun m!2480573 () Bool)

(assert (=> b!2037491 m!2480573))

(declare-fun m!2480575 () Bool)

(assert (=> b!2037492 m!2480575))

(declare-fun m!2480577 () Bool)

(assert (=> b!2037495 m!2480577))

(assert (=> b!2037493 m!2480569))

(assert (=> b!2037493 m!2480571))

(declare-fun m!2480579 () Bool)

(assert (=> b!2037496 m!2480579))

(assert (=> start!200744 d!623828))

(declare-fun d!623834 () Bool)

(declare-fun c!329992 () Bool)

(assert (=> d!623834 (= c!329992 ((_ is Node!7465) t!4319))))

(declare-fun e!1286606 () Bool)

(assert (=> d!623834 (= (inv!29561 t!4319) e!1286606)))

(declare-fun b!2037497 () Bool)

(assert (=> b!2037497 (= e!1286606 (inv!29562 t!4319))))

(declare-fun b!2037498 () Bool)

(declare-fun e!1286607 () Bool)

(assert (=> b!2037498 (= e!1286606 e!1286607)))

(declare-fun res!893336 () Bool)

(assert (=> b!2037498 (= res!893336 (not ((_ is Leaf!10939) t!4319)))))

(assert (=> b!2037498 (=> res!893336 e!1286607)))

(declare-fun b!2037499 () Bool)

(assert (=> b!2037499 (= e!1286607 (inv!29563 t!4319))))

(assert (= (and d!623834 c!329992) b!2037497))

(assert (= (and d!623834 (not c!329992)) b!2037498))

(assert (= (and b!2037498 (not res!893336)) b!2037499))

(declare-fun m!2480581 () Bool)

(assert (=> b!2037497 m!2480581))

(declare-fun m!2480583 () Bool)

(assert (=> b!2037499 m!2480583))

(assert (=> start!200744 d!623834))

(declare-fun d!623836 () Bool)

(declare-fun c!329993 () Bool)

(assert (=> d!623836 (= c!329993 ((_ is Node!7465) (Leaf!10939 lt!764933 lt!764934)))))

(declare-fun e!1286608 () Bool)

(assert (=> d!623836 (= (inv!29561 (Leaf!10939 lt!764933 lt!764934)) e!1286608)))

(declare-fun b!2037500 () Bool)

(assert (=> b!2037500 (= e!1286608 (inv!29562 (Leaf!10939 lt!764933 lt!764934)))))

(declare-fun b!2037501 () Bool)

(declare-fun e!1286609 () Bool)

(assert (=> b!2037501 (= e!1286608 e!1286609)))

(declare-fun res!893337 () Bool)

(assert (=> b!2037501 (= res!893337 (not ((_ is Leaf!10939) (Leaf!10939 lt!764933 lt!764934))))))

(assert (=> b!2037501 (=> res!893337 e!1286609)))

(declare-fun b!2037502 () Bool)

(assert (=> b!2037502 (= e!1286609 (inv!29563 (Leaf!10939 lt!764933 lt!764934)))))

(assert (= (and d!623836 c!329993) b!2037500))

(assert (= (and d!623836 (not c!329993)) b!2037501))

(assert (= (and b!2037501 (not res!893337)) b!2037502))

(declare-fun m!2480585 () Bool)

(assert (=> b!2037500 m!2480585))

(declare-fun m!2480587 () Bool)

(assert (=> b!2037502 m!2480587))

(assert (=> b!2037463 d!623836))

(declare-fun e!1286614 () Bool)

(declare-fun tp!604986 () Bool)

(declare-fun b!2037511 () Bool)

(declare-fun tp!604985 () Bool)

(assert (=> b!2037511 (= e!1286614 (and (inv!29561 (left!17734 (left!17734 t!4319))) tp!604986 (inv!29561 (right!18064 (left!17734 t!4319))) tp!604985))))

(declare-fun b!2037513 () Bool)

(declare-fun e!1286615 () Bool)

(declare-fun tp!604987 () Bool)

(assert (=> b!2037513 (= e!1286615 tp!604987)))

(declare-fun b!2037512 () Bool)

(assert (=> b!2037512 (= e!1286614 (and (inv!29560 (xs!10367 (left!17734 t!4319))) e!1286615))))

(assert (=> b!2037465 (= tp!604975 (and (inv!29561 (left!17734 t!4319)) e!1286614))))

(assert (= (and b!2037465 ((_ is Node!7465) (left!17734 t!4319))) b!2037511))

(assert (= b!2037512 b!2037513))

(assert (= (and b!2037465 ((_ is Leaf!10939) (left!17734 t!4319))) b!2037512))

(declare-fun m!2480595 () Bool)

(assert (=> b!2037511 m!2480595))

(declare-fun m!2480597 () Bool)

(assert (=> b!2037511 m!2480597))

(declare-fun m!2480599 () Bool)

(assert (=> b!2037512 m!2480599))

(assert (=> b!2037465 m!2480531))

(declare-fun tp!604988 () Bool)

(declare-fun tp!604989 () Bool)

(declare-fun e!1286616 () Bool)

(declare-fun b!2037514 () Bool)

(assert (=> b!2037514 (= e!1286616 (and (inv!29561 (left!17734 (right!18064 t!4319))) tp!604989 (inv!29561 (right!18064 (right!18064 t!4319))) tp!604988))))

(declare-fun b!2037516 () Bool)

(declare-fun e!1286617 () Bool)

(declare-fun tp!604990 () Bool)

(assert (=> b!2037516 (= e!1286617 tp!604990)))

(declare-fun b!2037515 () Bool)

(assert (=> b!2037515 (= e!1286616 (and (inv!29560 (xs!10367 (right!18064 t!4319))) e!1286617))))

(assert (=> b!2037465 (= tp!604978 (and (inv!29561 (right!18064 t!4319)) e!1286616))))

(assert (= (and b!2037465 ((_ is Node!7465) (right!18064 t!4319))) b!2037514))

(assert (= b!2037515 b!2037516))

(assert (= (and b!2037465 ((_ is Leaf!10939) (right!18064 t!4319))) b!2037515))

(declare-fun m!2480601 () Bool)

(assert (=> b!2037514 m!2480601))

(declare-fun m!2480603 () Bool)

(assert (=> b!2037514 m!2480603))

(declare-fun m!2480605 () Bool)

(assert (=> b!2037515 m!2480605))

(assert (=> b!2037465 m!2480533))

(declare-fun b!2037521 () Bool)

(declare-fun e!1286620 () Bool)

(declare-fun tp_is_empty!9267 () Bool)

(declare-fun tp!604993 () Bool)

(assert (=> b!2037521 (= e!1286620 (and tp_is_empty!9267 tp!604993))))

(assert (=> b!2037461 (= tp!604976 e!1286620)))

(assert (= (and b!2037461 ((_ is Cons!22273) (innerList!7525 (xs!10367 t!4319)))) b!2037521))

(check-sat (not d!623818) (not b!2037476) (not b!2037475) b_and!162647 (not b!2037497) (not b!2037512) (not b!2037511) (not b!2037491) tp_is_empty!9267 (not b!2037493) (not b!2037492) (not b!2037473) (not b!2037515) (not b!2037500) (not b!2037499) (not b!2037521) (not b!2037513) (not b!2037496) (not b_next!57523) (not b!2037494) (not d!623820) (not b!2037495) (not b!2037514) (not b!2037502) (not b!2037478) (not b!2037516) (not d!623826) (not b!2037465))
(check-sat b_and!162647 (not b_next!57523))
(get-model)

(declare-fun d!623850 () Bool)

(declare-fun lt!764949 () Int)

(assert (=> d!623850 (>= lt!764949 0)))

(declare-fun e!1286652 () Int)

(assert (=> d!623850 (= lt!764949 e!1286652)))

(declare-fun c!330002 () Bool)

(assert (=> d!623850 (= c!330002 ((_ is Nil!22273) (innerList!7525 (xs!10367 t!4319))))))

(assert (=> d!623850 (= (size!17418 (innerList!7525 (xs!10367 t!4319))) lt!764949)))

(declare-fun b!2037581 () Bool)

(assert (=> b!2037581 (= e!1286652 0)))

(declare-fun b!2037582 () Bool)

(assert (=> b!2037582 (= e!1286652 (+ 1 (size!17418 (t!191312 (innerList!7525 (xs!10367 t!4319))))))))

(assert (= (and d!623850 c!330002) b!2037581))

(assert (= (and d!623850 (not c!330002)) b!2037582))

(declare-fun m!2480653 () Bool)

(assert (=> b!2037582 m!2480653))

(assert (=> d!623826 d!623850))

(declare-fun d!623852 () Bool)

(assert (=> d!623852 (= (inv!29560 (xs!10367 (right!18064 t!4319))) (<= (size!17418 (innerList!7525 (xs!10367 (right!18064 t!4319)))) 2147483647))))

(declare-fun bs!421407 () Bool)

(assert (= bs!421407 d!623852))

(declare-fun m!2480655 () Bool)

(assert (=> bs!421407 m!2480655))

(assert (=> b!2037515 d!623852))

(declare-fun d!623854 () Bool)

(declare-fun lt!764952 () Bool)

(declare-fun isEmpty!13926 (List!22355) Bool)

(declare-fun list!9128 (Conc!7465) List!22355)

(assert (=> d!623854 (= lt!764952 (isEmpty!13926 (list!9128 (right!18064 t!4319))))))

(declare-fun size!17420 (Conc!7465) Int)

(assert (=> d!623854 (= lt!764952 (= (size!17420 (right!18064 t!4319)) 0))))

(assert (=> d!623854 (= (isEmpty!13924 (right!18064 t!4319)) lt!764952)))

(declare-fun bs!421408 () Bool)

(assert (= bs!421408 d!623854))

(declare-fun m!2480657 () Bool)

(assert (=> bs!421408 m!2480657))

(assert (=> bs!421408 m!2480657))

(declare-fun m!2480659 () Bool)

(assert (=> bs!421408 m!2480659))

(declare-fun m!2480661 () Bool)

(assert (=> bs!421408 m!2480661))

(assert (=> b!2037496 d!623854))

(assert (=> b!2037465 d!623822))

(assert (=> b!2037465 d!623824))

(declare-fun d!623856 () Bool)

(declare-fun c!330003 () Bool)

(assert (=> d!623856 (= c!330003 ((_ is Node!7465) (left!17734 (right!18064 t!4319))))))

(declare-fun e!1286653 () Bool)

(assert (=> d!623856 (= (inv!29561 (left!17734 (right!18064 t!4319))) e!1286653)))

(declare-fun b!2037583 () Bool)

(assert (=> b!2037583 (= e!1286653 (inv!29562 (left!17734 (right!18064 t!4319))))))

(declare-fun b!2037584 () Bool)

(declare-fun e!1286654 () Bool)

(assert (=> b!2037584 (= e!1286653 e!1286654)))

(declare-fun res!893362 () Bool)

(assert (=> b!2037584 (= res!893362 (not ((_ is Leaf!10939) (left!17734 (right!18064 t!4319)))))))

(assert (=> b!2037584 (=> res!893362 e!1286654)))

(declare-fun b!2037585 () Bool)

(assert (=> b!2037585 (= e!1286654 (inv!29563 (left!17734 (right!18064 t!4319))))))

(assert (= (and d!623856 c!330003) b!2037583))

(assert (= (and d!623856 (not c!330003)) b!2037584))

(assert (= (and b!2037584 (not res!893362)) b!2037585))

(declare-fun m!2480663 () Bool)

(assert (=> b!2037583 m!2480663))

(declare-fun m!2480665 () Bool)

(assert (=> b!2037585 m!2480665))

(assert (=> b!2037514 d!623856))

(declare-fun d!623858 () Bool)

(declare-fun c!330004 () Bool)

(assert (=> d!623858 (= c!330004 ((_ is Node!7465) (right!18064 (right!18064 t!4319))))))

(declare-fun e!1286655 () Bool)

(assert (=> d!623858 (= (inv!29561 (right!18064 (right!18064 t!4319))) e!1286655)))

(declare-fun b!2037586 () Bool)

(assert (=> b!2037586 (= e!1286655 (inv!29562 (right!18064 (right!18064 t!4319))))))

(declare-fun b!2037587 () Bool)

(declare-fun e!1286656 () Bool)

(assert (=> b!2037587 (= e!1286655 e!1286656)))

(declare-fun res!893363 () Bool)

(assert (=> b!2037587 (= res!893363 (not ((_ is Leaf!10939) (right!18064 (right!18064 t!4319)))))))

(assert (=> b!2037587 (=> res!893363 e!1286656)))

(declare-fun b!2037588 () Bool)

(assert (=> b!2037588 (= e!1286656 (inv!29563 (right!18064 (right!18064 t!4319))))))

(assert (= (and d!623858 c!330004) b!2037586))

(assert (= (and d!623858 (not c!330004)) b!2037587))

(assert (= (and b!2037587 (not res!893363)) b!2037588))

(declare-fun m!2480667 () Bool)

(assert (=> b!2037586 m!2480667))

(declare-fun m!2480669 () Bool)

(assert (=> b!2037588 m!2480669))

(assert (=> b!2037514 d!623858))

(declare-fun b!2037589 () Bool)

(declare-fun res!893364 () Bool)

(declare-fun e!1286658 () Bool)

(assert (=> b!2037589 (=> (not res!893364) (not e!1286658))))

(assert (=> b!2037589 (= res!893364 (isBalanced!2343 (right!18064 (left!17734 t!4319))))))

(declare-fun b!2037590 () Bool)

(declare-fun res!893365 () Bool)

(assert (=> b!2037590 (=> (not res!893365) (not e!1286658))))

(assert (=> b!2037590 (= res!893365 (not (isEmpty!13924 (left!17734 (left!17734 t!4319)))))))

(declare-fun b!2037591 () Bool)

(declare-fun e!1286657 () Bool)

(assert (=> b!2037591 (= e!1286657 e!1286658)))

(declare-fun res!893368 () Bool)

(assert (=> b!2037591 (=> (not res!893368) (not e!1286658))))

(assert (=> b!2037591 (= res!893368 (<= (- 1) (- (height!1164 (left!17734 (left!17734 t!4319))) (height!1164 (right!18064 (left!17734 t!4319))))))))

(declare-fun b!2037592 () Bool)

(declare-fun res!893367 () Bool)

(assert (=> b!2037592 (=> (not res!893367) (not e!1286658))))

(assert (=> b!2037592 (= res!893367 (<= (- (height!1164 (left!17734 (left!17734 t!4319))) (height!1164 (right!18064 (left!17734 t!4319)))) 1))))

(declare-fun b!2037593 () Bool)

(declare-fun res!893369 () Bool)

(assert (=> b!2037593 (=> (not res!893369) (not e!1286658))))

(assert (=> b!2037593 (= res!893369 (isBalanced!2343 (left!17734 (left!17734 t!4319))))))

(declare-fun d!623860 () Bool)

(declare-fun res!893366 () Bool)

(assert (=> d!623860 (=> res!893366 e!1286657)))

(assert (=> d!623860 (= res!893366 (not ((_ is Node!7465) (left!17734 t!4319))))))

(assert (=> d!623860 (= (isBalanced!2343 (left!17734 t!4319)) e!1286657)))

(declare-fun b!2037594 () Bool)

(assert (=> b!2037594 (= e!1286658 (not (isEmpty!13924 (right!18064 (left!17734 t!4319)))))))

(assert (= (and d!623860 (not res!893366)) b!2037591))

(assert (= (and b!2037591 res!893368) b!2037592))

(assert (= (and b!2037592 res!893367) b!2037593))

(assert (= (and b!2037593 res!893369) b!2037589))

(assert (= (and b!2037589 res!893364) b!2037590))

(assert (= (and b!2037590 res!893365) b!2037594))

(declare-fun m!2480671 () Bool)

(assert (=> b!2037592 m!2480671))

(declare-fun m!2480673 () Bool)

(assert (=> b!2037592 m!2480673))

(declare-fun m!2480675 () Bool)

(assert (=> b!2037589 m!2480675))

(declare-fun m!2480677 () Bool)

(assert (=> b!2037590 m!2480677))

(declare-fun m!2480679 () Bool)

(assert (=> b!2037593 m!2480679))

(assert (=> b!2037591 m!2480671))

(assert (=> b!2037591 m!2480673))

(declare-fun m!2480681 () Bool)

(assert (=> b!2037594 m!2480681))

(assert (=> b!2037495 d!623860))

(declare-fun d!623862 () Bool)

(assert (=> d!623862 (= (height!1164 (left!17734 t!4319)) (ite ((_ is Empty!7465) (left!17734 t!4319)) 0 (ite ((_ is Leaf!10939) (left!17734 t!4319)) 1 (cheight!7676 (left!17734 t!4319)))))))

(assert (=> b!2037494 d!623862))

(declare-fun d!623864 () Bool)

(assert (=> d!623864 (= (height!1164 (right!18064 t!4319)) (ite ((_ is Empty!7465) (right!18064 t!4319)) 0 (ite ((_ is Leaf!10939) (right!18064 t!4319)) 1 (cheight!7676 (right!18064 t!4319)))))))

(assert (=> b!2037494 d!623864))

(declare-fun d!623866 () Bool)

(declare-fun lt!764953 () Int)

(assert (=> d!623866 (>= lt!764953 0)))

(declare-fun e!1286659 () Int)

(assert (=> d!623866 (= lt!764953 e!1286659)))

(declare-fun c!330005 () Bool)

(assert (=> d!623866 (= c!330005 ((_ is Nil!22273) (list!9126 lt!764933)))))

(assert (=> d!623866 (= (size!17418 (list!9126 lt!764933)) lt!764953)))

(declare-fun b!2037595 () Bool)

(assert (=> b!2037595 (= e!1286659 0)))

(declare-fun b!2037596 () Bool)

(assert (=> b!2037596 (= e!1286659 (+ 1 (size!17418 (t!191312 (list!9126 lt!764933)))))))

(assert (= (and d!623866 c!330005) b!2037595))

(assert (= (and d!623866 (not c!330005)) b!2037596))

(declare-fun m!2480683 () Bool)

(assert (=> b!2037596 m!2480683))

(assert (=> d!623818 d!623866))

(declare-fun d!623868 () Bool)

(assert (=> d!623868 (= (list!9126 lt!764933) (innerList!7525 lt!764933))))

(assert (=> d!623818 d!623868))

(declare-fun d!623870 () Bool)

(declare-fun _$1!10165 () Int)

(assert (=> d!623870 (= _$1!10165 (size!17418 (list!9126 lt!764933)))))

(assert (=> d!623870 true))

(assert (=> d!623870 (= (choose!12433 lt!764933) _$1!10165)))

(declare-fun bs!421409 () Bool)

(assert (= bs!421409 d!623870))

(assert (=> bs!421409 m!2480545))

(assert (=> bs!421409 m!2480545))

(assert (=> bs!421409 m!2480547))

(assert (=> d!623818 d!623870))

(assert (=> b!2037493 d!623862))

(assert (=> b!2037493 d!623864))

(declare-fun d!623872 () Bool)

(assert (=> d!623872 (= (inv!29560 (xs!10367 (left!17734 t!4319))) (<= (size!17418 (innerList!7525 (xs!10367 (left!17734 t!4319)))) 2147483647))))

(declare-fun bs!421410 () Bool)

(assert (= bs!421410 d!623872))

(declare-fun m!2480685 () Bool)

(assert (=> bs!421410 m!2480685))

(assert (=> b!2037512 d!623872))

(declare-fun d!623874 () Bool)

(declare-fun res!893374 () Bool)

(declare-fun e!1286662 () Bool)

(assert (=> d!623874 (=> (not res!893374) (not e!1286662))))

(assert (=> d!623874 (= res!893374 (<= (size!17418 (list!9126 (xs!10367 (Leaf!10939 lt!764933 lt!764934)))) 512))))

(assert (=> d!623874 (= (inv!29563 (Leaf!10939 lt!764933 lt!764934)) e!1286662)))

(declare-fun b!2037601 () Bool)

(declare-fun res!893375 () Bool)

(assert (=> b!2037601 (=> (not res!893375) (not e!1286662))))

(assert (=> b!2037601 (= res!893375 (= (csize!15161 (Leaf!10939 lt!764933 lt!764934)) (size!17418 (list!9126 (xs!10367 (Leaf!10939 lt!764933 lt!764934))))))))

(declare-fun b!2037602 () Bool)

(assert (=> b!2037602 (= e!1286662 (and (> (csize!15161 (Leaf!10939 lt!764933 lt!764934)) 0) (<= (csize!15161 (Leaf!10939 lt!764933 lt!764934)) 512)))))

(assert (= (and d!623874 res!893374) b!2037601))

(assert (= (and b!2037601 res!893375) b!2037602))

(declare-fun m!2480687 () Bool)

(assert (=> d!623874 m!2480687))

(assert (=> d!623874 m!2480687))

(declare-fun m!2480689 () Bool)

(assert (=> d!623874 m!2480689))

(assert (=> b!2037601 m!2480687))

(assert (=> b!2037601 m!2480687))

(assert (=> b!2037601 m!2480689))

(assert (=> b!2037502 d!623874))

(declare-fun d!623876 () Bool)

(declare-fun lt!764954 () Bool)

(assert (=> d!623876 (= lt!764954 (isEmpty!13926 (list!9128 (left!17734 t!4319))))))

(assert (=> d!623876 (= lt!764954 (= (size!17420 (left!17734 t!4319)) 0))))

(assert (=> d!623876 (= (isEmpty!13924 (left!17734 t!4319)) lt!764954)))

(declare-fun bs!421411 () Bool)

(assert (= bs!421411 d!623876))

(declare-fun m!2480691 () Bool)

(assert (=> bs!421411 m!2480691))

(assert (=> bs!421411 m!2480691))

(declare-fun m!2480693 () Bool)

(assert (=> bs!421411 m!2480693))

(declare-fun m!2480695 () Bool)

(assert (=> bs!421411 m!2480695))

(assert (=> b!2037492 d!623876))

(declare-fun d!623878 () Bool)

(declare-fun c!330006 () Bool)

(assert (=> d!623878 (= c!330006 ((_ is Node!7465) (left!17734 (left!17734 t!4319))))))

(declare-fun e!1286663 () Bool)

(assert (=> d!623878 (= (inv!29561 (left!17734 (left!17734 t!4319))) e!1286663)))

(declare-fun b!2037603 () Bool)

(assert (=> b!2037603 (= e!1286663 (inv!29562 (left!17734 (left!17734 t!4319))))))

(declare-fun b!2037604 () Bool)

(declare-fun e!1286664 () Bool)

(assert (=> b!2037604 (= e!1286663 e!1286664)))

(declare-fun res!893376 () Bool)

(assert (=> b!2037604 (= res!893376 (not ((_ is Leaf!10939) (left!17734 (left!17734 t!4319)))))))

(assert (=> b!2037604 (=> res!893376 e!1286664)))

(declare-fun b!2037605 () Bool)

(assert (=> b!2037605 (= e!1286664 (inv!29563 (left!17734 (left!17734 t!4319))))))

(assert (= (and d!623878 c!330006) b!2037603))

(assert (= (and d!623878 (not c!330006)) b!2037604))

(assert (= (and b!2037604 (not res!893376)) b!2037605))

(declare-fun m!2480697 () Bool)

(assert (=> b!2037603 m!2480697))

(declare-fun m!2480699 () Bool)

(assert (=> b!2037605 m!2480699))

(assert (=> b!2037511 d!623878))

(declare-fun d!623880 () Bool)

(declare-fun c!330007 () Bool)

(assert (=> d!623880 (= c!330007 ((_ is Node!7465) (right!18064 (left!17734 t!4319))))))

(declare-fun e!1286665 () Bool)

(assert (=> d!623880 (= (inv!29561 (right!18064 (left!17734 t!4319))) e!1286665)))

(declare-fun b!2037606 () Bool)

(assert (=> b!2037606 (= e!1286665 (inv!29562 (right!18064 (left!17734 t!4319))))))

(declare-fun b!2037607 () Bool)

(declare-fun e!1286666 () Bool)

(assert (=> b!2037607 (= e!1286665 e!1286666)))

(declare-fun res!893377 () Bool)

(assert (=> b!2037607 (= res!893377 (not ((_ is Leaf!10939) (right!18064 (left!17734 t!4319)))))))

(assert (=> b!2037607 (=> res!893377 e!1286666)))

(declare-fun b!2037608 () Bool)

(assert (=> b!2037608 (= e!1286666 (inv!29563 (right!18064 (left!17734 t!4319))))))

(assert (= (and d!623880 c!330007) b!2037606))

(assert (= (and d!623880 (not c!330007)) b!2037607))

(assert (= (and b!2037607 (not res!893377)) b!2037608))

(declare-fun m!2480701 () Bool)

(assert (=> b!2037606 m!2480701))

(declare-fun m!2480703 () Bool)

(assert (=> b!2037608 m!2480703))

(assert (=> b!2037511 d!623880))

(declare-fun d!623882 () Bool)

(declare-fun res!893378 () Bool)

(declare-fun e!1286667 () Bool)

(assert (=> d!623882 (=> (not res!893378) (not e!1286667))))

(assert (=> d!623882 (= res!893378 (<= (size!17418 (list!9126 (xs!10367 (right!18064 t!4319)))) 512))))

(assert (=> d!623882 (= (inv!29563 (right!18064 t!4319)) e!1286667)))

(declare-fun b!2037609 () Bool)

(declare-fun res!893379 () Bool)

(assert (=> b!2037609 (=> (not res!893379) (not e!1286667))))

(assert (=> b!2037609 (= res!893379 (= (csize!15161 (right!18064 t!4319)) (size!17418 (list!9126 (xs!10367 (right!18064 t!4319))))))))

(declare-fun b!2037610 () Bool)

(assert (=> b!2037610 (= e!1286667 (and (> (csize!15161 (right!18064 t!4319)) 0) (<= (csize!15161 (right!18064 t!4319)) 512)))))

(assert (= (and d!623882 res!893378) b!2037609))

(assert (= (and b!2037609 res!893379) b!2037610))

(declare-fun m!2480705 () Bool)

(assert (=> d!623882 m!2480705))

(assert (=> d!623882 m!2480705))

(declare-fun m!2480707 () Bool)

(assert (=> d!623882 m!2480707))

(assert (=> b!2037609 m!2480705))

(assert (=> b!2037609 m!2480705))

(assert (=> b!2037609 m!2480707))

(assert (=> b!2037478 d!623882))

(declare-fun b!2037611 () Bool)

(declare-fun res!893380 () Bool)

(declare-fun e!1286669 () Bool)

(assert (=> b!2037611 (=> (not res!893380) (not e!1286669))))

(assert (=> b!2037611 (= res!893380 (isBalanced!2343 (right!18064 (right!18064 t!4319))))))

(declare-fun b!2037612 () Bool)

(declare-fun res!893381 () Bool)

(assert (=> b!2037612 (=> (not res!893381) (not e!1286669))))

(assert (=> b!2037612 (= res!893381 (not (isEmpty!13924 (left!17734 (right!18064 t!4319)))))))

(declare-fun b!2037613 () Bool)

(declare-fun e!1286668 () Bool)

(assert (=> b!2037613 (= e!1286668 e!1286669)))

(declare-fun res!893384 () Bool)

(assert (=> b!2037613 (=> (not res!893384) (not e!1286669))))

(assert (=> b!2037613 (= res!893384 (<= (- 1) (- (height!1164 (left!17734 (right!18064 t!4319))) (height!1164 (right!18064 (right!18064 t!4319))))))))

(declare-fun b!2037614 () Bool)

(declare-fun res!893383 () Bool)

(assert (=> b!2037614 (=> (not res!893383) (not e!1286669))))

(assert (=> b!2037614 (= res!893383 (<= (- (height!1164 (left!17734 (right!18064 t!4319))) (height!1164 (right!18064 (right!18064 t!4319)))) 1))))

(declare-fun b!2037615 () Bool)

(declare-fun res!893385 () Bool)

(assert (=> b!2037615 (=> (not res!893385) (not e!1286669))))

(assert (=> b!2037615 (= res!893385 (isBalanced!2343 (left!17734 (right!18064 t!4319))))))

(declare-fun d!623884 () Bool)

(declare-fun res!893382 () Bool)

(assert (=> d!623884 (=> res!893382 e!1286668)))

(assert (=> d!623884 (= res!893382 (not ((_ is Node!7465) (right!18064 t!4319))))))

(assert (=> d!623884 (= (isBalanced!2343 (right!18064 t!4319)) e!1286668)))

(declare-fun b!2037616 () Bool)

(assert (=> b!2037616 (= e!1286669 (not (isEmpty!13924 (right!18064 (right!18064 t!4319)))))))

(assert (= (and d!623884 (not res!893382)) b!2037613))

(assert (= (and b!2037613 res!893384) b!2037614))

(assert (= (and b!2037614 res!893383) b!2037615))

(assert (= (and b!2037615 res!893385) b!2037611))

(assert (= (and b!2037611 res!893380) b!2037612))

(assert (= (and b!2037612 res!893381) b!2037616))

(declare-fun m!2480709 () Bool)

(assert (=> b!2037614 m!2480709))

(declare-fun m!2480711 () Bool)

(assert (=> b!2037614 m!2480711))

(declare-fun m!2480713 () Bool)

(assert (=> b!2037611 m!2480713))

(declare-fun m!2480715 () Bool)

(assert (=> b!2037612 m!2480715))

(declare-fun m!2480717 () Bool)

(assert (=> b!2037615 m!2480717))

(assert (=> b!2037613 m!2480709))

(assert (=> b!2037613 m!2480711))

(declare-fun m!2480719 () Bool)

(assert (=> b!2037616 m!2480719))

(assert (=> b!2037491 d!623884))

(declare-fun d!623886 () Bool)

(declare-fun res!893392 () Bool)

(declare-fun e!1286672 () Bool)

(assert (=> d!623886 (=> (not res!893392) (not e!1286672))))

(assert (=> d!623886 (= res!893392 (= (csize!15160 (Leaf!10939 lt!764933 lt!764934)) (+ (size!17420 (left!17734 (Leaf!10939 lt!764933 lt!764934))) (size!17420 (right!18064 (Leaf!10939 lt!764933 lt!764934))))))))

(assert (=> d!623886 (= (inv!29562 (Leaf!10939 lt!764933 lt!764934)) e!1286672)))

(declare-fun b!2037623 () Bool)

(declare-fun res!893393 () Bool)

(assert (=> b!2037623 (=> (not res!893393) (not e!1286672))))

(assert (=> b!2037623 (= res!893393 (and (not (= (left!17734 (Leaf!10939 lt!764933 lt!764934)) Empty!7465)) (not (= (right!18064 (Leaf!10939 lt!764933 lt!764934)) Empty!7465))))))

(declare-fun b!2037624 () Bool)

(declare-fun res!893394 () Bool)

(assert (=> b!2037624 (=> (not res!893394) (not e!1286672))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2037624 (= res!893394 (= (cheight!7676 (Leaf!10939 lt!764933 lt!764934)) (+ (max!0 (height!1164 (left!17734 (Leaf!10939 lt!764933 lt!764934))) (height!1164 (right!18064 (Leaf!10939 lt!764933 lt!764934)))) 1)))))

(declare-fun b!2037625 () Bool)

(assert (=> b!2037625 (= e!1286672 (<= 0 (cheight!7676 (Leaf!10939 lt!764933 lt!764934))))))

(assert (= (and d!623886 res!893392) b!2037623))

(assert (= (and b!2037623 res!893393) b!2037624))

(assert (= (and b!2037624 res!893394) b!2037625))

(declare-fun m!2480721 () Bool)

(assert (=> d!623886 m!2480721))

(declare-fun m!2480723 () Bool)

(assert (=> d!623886 m!2480723))

(declare-fun m!2480725 () Bool)

(assert (=> b!2037624 m!2480725))

(declare-fun m!2480727 () Bool)

(assert (=> b!2037624 m!2480727))

(assert (=> b!2037624 m!2480725))

(assert (=> b!2037624 m!2480727))

(declare-fun m!2480729 () Bool)

(assert (=> b!2037624 m!2480729))

(assert (=> b!2037500 d!623886))

(declare-fun d!623888 () Bool)

(declare-fun res!893395 () Bool)

(declare-fun e!1286673 () Bool)

(assert (=> d!623888 (=> (not res!893395) (not e!1286673))))

(assert (=> d!623888 (= res!893395 (<= (size!17418 (list!9126 (xs!10367 t!4319))) 512))))

(assert (=> d!623888 (= (inv!29563 t!4319) e!1286673)))

(declare-fun b!2037626 () Bool)

(declare-fun res!893396 () Bool)

(assert (=> b!2037626 (=> (not res!893396) (not e!1286673))))

(assert (=> b!2037626 (= res!893396 (= (csize!15161 t!4319) (size!17418 (list!9126 (xs!10367 t!4319)))))))

(declare-fun b!2037627 () Bool)

(assert (=> b!2037627 (= e!1286673 (and (> (csize!15161 t!4319) 0) (<= (csize!15161 t!4319) 512)))))

(assert (= (and d!623888 res!893395) b!2037626))

(assert (= (and b!2037626 res!893396) b!2037627))

(assert (=> d!623888 m!2480551))

(assert (=> d!623888 m!2480551))

(declare-fun m!2480731 () Bool)

(assert (=> d!623888 m!2480731))

(assert (=> b!2037626 m!2480551))

(assert (=> b!2037626 m!2480551))

(assert (=> b!2037626 m!2480731))

(assert (=> b!2037499 d!623888))

(declare-fun d!623890 () Bool)

(declare-fun res!893397 () Bool)

(declare-fun e!1286674 () Bool)

(assert (=> d!623890 (=> (not res!893397) (not e!1286674))))

(assert (=> d!623890 (= res!893397 (= (csize!15160 (right!18064 t!4319)) (+ (size!17420 (left!17734 (right!18064 t!4319))) (size!17420 (right!18064 (right!18064 t!4319))))))))

(assert (=> d!623890 (= (inv!29562 (right!18064 t!4319)) e!1286674)))

(declare-fun b!2037628 () Bool)

(declare-fun res!893398 () Bool)

(assert (=> b!2037628 (=> (not res!893398) (not e!1286674))))

(assert (=> b!2037628 (= res!893398 (and (not (= (left!17734 (right!18064 t!4319)) Empty!7465)) (not (= (right!18064 (right!18064 t!4319)) Empty!7465))))))

(declare-fun b!2037629 () Bool)

(declare-fun res!893399 () Bool)

(assert (=> b!2037629 (=> (not res!893399) (not e!1286674))))

(assert (=> b!2037629 (= res!893399 (= (cheight!7676 (right!18064 t!4319)) (+ (max!0 (height!1164 (left!17734 (right!18064 t!4319))) (height!1164 (right!18064 (right!18064 t!4319)))) 1)))))

(declare-fun b!2037630 () Bool)

(assert (=> b!2037630 (= e!1286674 (<= 0 (cheight!7676 (right!18064 t!4319))))))

(assert (= (and d!623890 res!893397) b!2037628))

(assert (= (and b!2037628 res!893398) b!2037629))

(assert (= (and b!2037629 res!893399) b!2037630))

(declare-fun m!2480733 () Bool)

(assert (=> d!623890 m!2480733))

(declare-fun m!2480735 () Bool)

(assert (=> d!623890 m!2480735))

(assert (=> b!2037629 m!2480709))

(assert (=> b!2037629 m!2480711))

(assert (=> b!2037629 m!2480709))

(assert (=> b!2037629 m!2480711))

(declare-fun m!2480737 () Bool)

(assert (=> b!2037629 m!2480737))

(assert (=> b!2037476 d!623890))

(declare-fun d!623892 () Bool)

(declare-fun res!893400 () Bool)

(declare-fun e!1286675 () Bool)

(assert (=> d!623892 (=> (not res!893400) (not e!1286675))))

(assert (=> d!623892 (= res!893400 (<= (size!17418 (list!9126 (xs!10367 (left!17734 t!4319)))) 512))))

(assert (=> d!623892 (= (inv!29563 (left!17734 t!4319)) e!1286675)))

(declare-fun b!2037631 () Bool)

(declare-fun res!893401 () Bool)

(assert (=> b!2037631 (=> (not res!893401) (not e!1286675))))

(assert (=> b!2037631 (= res!893401 (= (csize!15161 (left!17734 t!4319)) (size!17418 (list!9126 (xs!10367 (left!17734 t!4319))))))))

(declare-fun b!2037632 () Bool)

(assert (=> b!2037632 (= e!1286675 (and (> (csize!15161 (left!17734 t!4319)) 0) (<= (csize!15161 (left!17734 t!4319)) 512)))))

(assert (= (and d!623892 res!893400) b!2037631))

(assert (= (and b!2037631 res!893401) b!2037632))

(declare-fun m!2480739 () Bool)

(assert (=> d!623892 m!2480739))

(assert (=> d!623892 m!2480739))

(declare-fun m!2480741 () Bool)

(assert (=> d!623892 m!2480741))

(assert (=> b!2037631 m!2480739))

(assert (=> b!2037631 m!2480739))

(assert (=> b!2037631 m!2480741))

(assert (=> b!2037475 d!623892))

(declare-fun d!623894 () Bool)

(declare-fun res!893402 () Bool)

(declare-fun e!1286676 () Bool)

(assert (=> d!623894 (=> (not res!893402) (not e!1286676))))

(assert (=> d!623894 (= res!893402 (= (csize!15160 t!4319) (+ (size!17420 (left!17734 t!4319)) (size!17420 (right!18064 t!4319)))))))

(assert (=> d!623894 (= (inv!29562 t!4319) e!1286676)))

(declare-fun b!2037633 () Bool)

(declare-fun res!893403 () Bool)

(assert (=> b!2037633 (=> (not res!893403) (not e!1286676))))

(assert (=> b!2037633 (= res!893403 (and (not (= (left!17734 t!4319) Empty!7465)) (not (= (right!18064 t!4319) Empty!7465))))))

(declare-fun b!2037634 () Bool)

(declare-fun res!893404 () Bool)

(assert (=> b!2037634 (=> (not res!893404) (not e!1286676))))

(assert (=> b!2037634 (= res!893404 (= (cheight!7676 t!4319) (+ (max!0 (height!1164 (left!17734 t!4319)) (height!1164 (right!18064 t!4319))) 1)))))

(declare-fun b!2037635 () Bool)

(assert (=> b!2037635 (= e!1286676 (<= 0 (cheight!7676 t!4319)))))

(assert (= (and d!623894 res!893402) b!2037633))

(assert (= (and b!2037633 res!893403) b!2037634))

(assert (= (and b!2037634 res!893404) b!2037635))

(assert (=> d!623894 m!2480695))

(assert (=> d!623894 m!2480661))

(assert (=> b!2037634 m!2480569))

(assert (=> b!2037634 m!2480571))

(assert (=> b!2037634 m!2480569))

(assert (=> b!2037634 m!2480571))

(declare-fun m!2480743 () Bool)

(assert (=> b!2037634 m!2480743))

(assert (=> b!2037497 d!623894))

(declare-fun b!2037648 () Bool)

(declare-fun e!1286683 () List!22355)

(declare-fun e!1286684 () List!22355)

(assert (=> b!2037648 (= e!1286683 e!1286684)))

(declare-fun c!330013 () Bool)

(declare-fun dynLambda!11102 (Int T!35976) Bool)

(assert (=> b!2037648 (= c!330013 (dynLambda!11102 p!1489 (h!27674 (list!9126 (xs!10367 t!4319)))))))

(declare-fun b!2037649 () Bool)

(declare-fun call!124949 () List!22355)

(assert (=> b!2037649 (= e!1286684 call!124949)))

(declare-fun b!2037650 () Bool)

(declare-fun res!893410 () Bool)

(declare-fun e!1286685 () Bool)

(assert (=> b!2037650 (=> (not res!893410) (not e!1286685))))

(declare-fun lt!764957 () List!22355)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3305 (List!22355) (InoxSet T!35976))

(assert (=> b!2037650 (= res!893410 (= ((_ map implies) (content!3305 lt!764957) (content!3305 (list!9126 (xs!10367 t!4319)))) ((as const (InoxSet T!35976)) true)))))

(declare-fun b!2037651 () Bool)

(assert (=> b!2037651 (= e!1286683 Nil!22273)))

(declare-fun b!2037652 () Bool)

(assert (=> b!2037652 (= e!1286684 (Cons!22273 (h!27674 (list!9126 (xs!10367 t!4319))) call!124949))))

(declare-fun d!623896 () Bool)

(assert (=> d!623896 e!1286685))

(declare-fun res!893409 () Bool)

(assert (=> d!623896 (=> (not res!893409) (not e!1286685))))

(assert (=> d!623896 (= res!893409 (<= (size!17418 lt!764957) (size!17418 (list!9126 (xs!10367 t!4319)))))))

(assert (=> d!623896 (= lt!764957 e!1286683)))

(declare-fun c!330012 () Bool)

(assert (=> d!623896 (= c!330012 ((_ is Nil!22273) (list!9126 (xs!10367 t!4319))))))

(assert (=> d!623896 (= (filter!467 (list!9126 (xs!10367 t!4319)) p!1489) lt!764957)))

(declare-fun bm!124944 () Bool)

(assert (=> bm!124944 (= call!124949 (filter!467 (t!191312 (list!9126 (xs!10367 t!4319))) p!1489))))

(declare-fun b!2037653 () Bool)

(declare-fun forall!4752 (List!22355 Int) Bool)

(assert (=> b!2037653 (= e!1286685 (forall!4752 lt!764957 p!1489))))

(assert (= (and d!623896 c!330012) b!2037651))

(assert (= (and d!623896 (not c!330012)) b!2037648))

(assert (= (and b!2037648 c!330013) b!2037652))

(assert (= (and b!2037648 (not c!330013)) b!2037649))

(assert (= (or b!2037652 b!2037649) bm!124944))

(assert (= (and d!623896 res!893409) b!2037650))

(assert (= (and b!2037650 res!893410) b!2037653))

(declare-fun b_lambda!68829 () Bool)

(assert (=> (not b_lambda!68829) (not b!2037648)))

(declare-fun t!191318 () Bool)

(declare-fun tb!128869 () Bool)

(assert (=> (and start!200744 (= p!1489 p!1489) t!191318) tb!128869))

(declare-fun result!154164 () Bool)

(assert (=> tb!128869 (= result!154164 true)))

(assert (=> b!2037648 t!191318))

(declare-fun b_and!162649 () Bool)

(assert (= b_and!162647 (and (=> t!191318 result!154164) b_and!162649)))

(declare-fun m!2480745 () Bool)

(assert (=> b!2037650 m!2480745))

(assert (=> b!2037650 m!2480551))

(declare-fun m!2480747 () Bool)

(assert (=> b!2037650 m!2480747))

(declare-fun m!2480749 () Bool)

(assert (=> b!2037648 m!2480749))

(declare-fun m!2480751 () Bool)

(assert (=> bm!124944 m!2480751))

(declare-fun m!2480753 () Bool)

(assert (=> d!623896 m!2480753))

(assert (=> d!623896 m!2480551))

(assert (=> d!623896 m!2480731))

(declare-fun m!2480755 () Bool)

(assert (=> b!2037653 m!2480755))

(assert (=> d!623820 d!623896))

(declare-fun d!623898 () Bool)

(assert (=> d!623898 (= (list!9126 (xs!10367 t!4319)) (innerList!7525 (xs!10367 t!4319)))))

(assert (=> d!623820 d!623898))

(declare-fun d!623900 () Bool)

(declare-fun _$11!1068 () IArray!14935)

(assert (=> d!623900 (= _$11!1068 (IArray!14936 (filter!467 (list!9126 (xs!10367 t!4319)) p!1489)))))

(declare-fun e!1286688 () Bool)

(assert (=> d!623900 (and (inv!29560 _$11!1068) e!1286688)))

(assert (=> d!623900 (= (choose!12434 (xs!10367 t!4319) p!1489) _$11!1068)))

(declare-fun b!2037656 () Bool)

(declare-fun tp!605011 () Bool)

(assert (=> b!2037656 (= e!1286688 tp!605011)))

(assert (= d!623900 b!2037656))

(assert (=> d!623900 m!2480551))

(assert (=> d!623900 m!2480551))

(assert (=> d!623900 m!2480553))

(declare-fun m!2480757 () Bool)

(assert (=> d!623900 m!2480757))

(assert (=> d!623820 d!623900))

(declare-fun d!623902 () Bool)

(declare-fun res!893411 () Bool)

(declare-fun e!1286689 () Bool)

(assert (=> d!623902 (=> (not res!893411) (not e!1286689))))

(assert (=> d!623902 (= res!893411 (= (csize!15160 (left!17734 t!4319)) (+ (size!17420 (left!17734 (left!17734 t!4319))) (size!17420 (right!18064 (left!17734 t!4319))))))))

(assert (=> d!623902 (= (inv!29562 (left!17734 t!4319)) e!1286689)))

(declare-fun b!2037657 () Bool)

(declare-fun res!893412 () Bool)

(assert (=> b!2037657 (=> (not res!893412) (not e!1286689))))

(assert (=> b!2037657 (= res!893412 (and (not (= (left!17734 (left!17734 t!4319)) Empty!7465)) (not (= (right!18064 (left!17734 t!4319)) Empty!7465))))))

(declare-fun b!2037658 () Bool)

(declare-fun res!893413 () Bool)

(assert (=> b!2037658 (=> (not res!893413) (not e!1286689))))

(assert (=> b!2037658 (= res!893413 (= (cheight!7676 (left!17734 t!4319)) (+ (max!0 (height!1164 (left!17734 (left!17734 t!4319))) (height!1164 (right!18064 (left!17734 t!4319)))) 1)))))

(declare-fun b!2037659 () Bool)

(assert (=> b!2037659 (= e!1286689 (<= 0 (cheight!7676 (left!17734 t!4319))))))

(assert (= (and d!623902 res!893411) b!2037657))

(assert (= (and b!2037657 res!893412) b!2037658))

(assert (= (and b!2037658 res!893413) b!2037659))

(declare-fun m!2480759 () Bool)

(assert (=> d!623902 m!2480759))

(declare-fun m!2480761 () Bool)

(assert (=> d!623902 m!2480761))

(assert (=> b!2037658 m!2480671))

(assert (=> b!2037658 m!2480673))

(assert (=> b!2037658 m!2480671))

(assert (=> b!2037658 m!2480673))

(declare-fun m!2480763 () Bool)

(assert (=> b!2037658 m!2480763))

(assert (=> b!2037473 d!623902))

(declare-fun b!2037660 () Bool)

(declare-fun e!1286690 () Bool)

(declare-fun tp!605012 () Bool)

(assert (=> b!2037660 (= e!1286690 (and tp_is_empty!9267 tp!605012))))

(assert (=> b!2037516 (= tp!604990 e!1286690)))

(assert (= (and b!2037516 ((_ is Cons!22273) (innerList!7525 (xs!10367 (right!18064 t!4319))))) b!2037660))

(declare-fun tp!605014 () Bool)

(declare-fun b!2037661 () Bool)

(declare-fun e!1286691 () Bool)

(declare-fun tp!605013 () Bool)

(assert (=> b!2037661 (= e!1286691 (and (inv!29561 (left!17734 (left!17734 (left!17734 t!4319)))) tp!605014 (inv!29561 (right!18064 (left!17734 (left!17734 t!4319)))) tp!605013))))

(declare-fun b!2037663 () Bool)

(declare-fun e!1286692 () Bool)

(declare-fun tp!605015 () Bool)

(assert (=> b!2037663 (= e!1286692 tp!605015)))

(declare-fun b!2037662 () Bool)

(assert (=> b!2037662 (= e!1286691 (and (inv!29560 (xs!10367 (left!17734 (left!17734 t!4319)))) e!1286692))))

(assert (=> b!2037511 (= tp!604986 (and (inv!29561 (left!17734 (left!17734 t!4319))) e!1286691))))

(assert (= (and b!2037511 ((_ is Node!7465) (left!17734 (left!17734 t!4319)))) b!2037661))

(assert (= b!2037662 b!2037663))

(assert (= (and b!2037511 ((_ is Leaf!10939) (left!17734 (left!17734 t!4319)))) b!2037662))

(declare-fun m!2480765 () Bool)

(assert (=> b!2037661 m!2480765))

(declare-fun m!2480767 () Bool)

(assert (=> b!2037661 m!2480767))

(declare-fun m!2480769 () Bool)

(assert (=> b!2037662 m!2480769))

(assert (=> b!2037511 m!2480595))

(declare-fun tp!605016 () Bool)

(declare-fun b!2037664 () Bool)

(declare-fun e!1286693 () Bool)

(declare-fun tp!605017 () Bool)

(assert (=> b!2037664 (= e!1286693 (and (inv!29561 (left!17734 (right!18064 (left!17734 t!4319)))) tp!605017 (inv!29561 (right!18064 (right!18064 (left!17734 t!4319)))) tp!605016))))

(declare-fun b!2037666 () Bool)

(declare-fun e!1286694 () Bool)

(declare-fun tp!605018 () Bool)

(assert (=> b!2037666 (= e!1286694 tp!605018)))

(declare-fun b!2037665 () Bool)

(assert (=> b!2037665 (= e!1286693 (and (inv!29560 (xs!10367 (right!18064 (left!17734 t!4319)))) e!1286694))))

(assert (=> b!2037511 (= tp!604985 (and (inv!29561 (right!18064 (left!17734 t!4319))) e!1286693))))

(assert (= (and b!2037511 ((_ is Node!7465) (right!18064 (left!17734 t!4319)))) b!2037664))

(assert (= b!2037665 b!2037666))

(assert (= (and b!2037511 ((_ is Leaf!10939) (right!18064 (left!17734 t!4319)))) b!2037665))

(declare-fun m!2480771 () Bool)

(assert (=> b!2037664 m!2480771))

(declare-fun m!2480773 () Bool)

(assert (=> b!2037664 m!2480773))

(declare-fun m!2480775 () Bool)

(assert (=> b!2037665 m!2480775))

(assert (=> b!2037511 m!2480597))

(declare-fun e!1286695 () Bool)

(declare-fun b!2037667 () Bool)

(declare-fun tp!605020 () Bool)

(declare-fun tp!605019 () Bool)

(assert (=> b!2037667 (= e!1286695 (and (inv!29561 (left!17734 (left!17734 (right!18064 t!4319)))) tp!605020 (inv!29561 (right!18064 (left!17734 (right!18064 t!4319)))) tp!605019))))

(declare-fun b!2037669 () Bool)

(declare-fun e!1286696 () Bool)

(declare-fun tp!605021 () Bool)

(assert (=> b!2037669 (= e!1286696 tp!605021)))

(declare-fun b!2037668 () Bool)

(assert (=> b!2037668 (= e!1286695 (and (inv!29560 (xs!10367 (left!17734 (right!18064 t!4319)))) e!1286696))))

(assert (=> b!2037514 (= tp!604989 (and (inv!29561 (left!17734 (right!18064 t!4319))) e!1286695))))

(assert (= (and b!2037514 ((_ is Node!7465) (left!17734 (right!18064 t!4319)))) b!2037667))

(assert (= b!2037668 b!2037669))

(assert (= (and b!2037514 ((_ is Leaf!10939) (left!17734 (right!18064 t!4319)))) b!2037668))

(declare-fun m!2480777 () Bool)

(assert (=> b!2037667 m!2480777))

(declare-fun m!2480779 () Bool)

(assert (=> b!2037667 m!2480779))

(declare-fun m!2480781 () Bool)

(assert (=> b!2037668 m!2480781))

(assert (=> b!2037514 m!2480601))

(declare-fun tp!605023 () Bool)

(declare-fun tp!605022 () Bool)

(declare-fun b!2037670 () Bool)

(declare-fun e!1286697 () Bool)

(assert (=> b!2037670 (= e!1286697 (and (inv!29561 (left!17734 (right!18064 (right!18064 t!4319)))) tp!605023 (inv!29561 (right!18064 (right!18064 (right!18064 t!4319)))) tp!605022))))

(declare-fun b!2037672 () Bool)

(declare-fun e!1286698 () Bool)

(declare-fun tp!605024 () Bool)

(assert (=> b!2037672 (= e!1286698 tp!605024)))

(declare-fun b!2037671 () Bool)

(assert (=> b!2037671 (= e!1286697 (and (inv!29560 (xs!10367 (right!18064 (right!18064 t!4319)))) e!1286698))))

(assert (=> b!2037514 (= tp!604988 (and (inv!29561 (right!18064 (right!18064 t!4319))) e!1286697))))

(assert (= (and b!2037514 ((_ is Node!7465) (right!18064 (right!18064 t!4319)))) b!2037670))

(assert (= b!2037671 b!2037672))

(assert (= (and b!2037514 ((_ is Leaf!10939) (right!18064 (right!18064 t!4319)))) b!2037671))

(declare-fun m!2480783 () Bool)

(assert (=> b!2037670 m!2480783))

(declare-fun m!2480785 () Bool)

(assert (=> b!2037670 m!2480785))

(declare-fun m!2480787 () Bool)

(assert (=> b!2037671 m!2480787))

(assert (=> b!2037514 m!2480603))

(declare-fun b!2037673 () Bool)

(declare-fun e!1286699 () Bool)

(declare-fun tp!605025 () Bool)

(assert (=> b!2037673 (= e!1286699 (and tp_is_empty!9267 tp!605025))))

(assert (=> b!2037513 (= tp!604987 e!1286699)))

(assert (= (and b!2037513 ((_ is Cons!22273) (innerList!7525 (xs!10367 (left!17734 t!4319))))) b!2037673))

(declare-fun b!2037674 () Bool)

(declare-fun e!1286700 () Bool)

(declare-fun tp!605026 () Bool)

(assert (=> b!2037674 (= e!1286700 (and tp_is_empty!9267 tp!605026))))

(assert (=> b!2037521 (= tp!604993 e!1286700)))

(assert (= (and b!2037521 ((_ is Cons!22273) (t!191312 (innerList!7525 (xs!10367 t!4319))))) b!2037674))

(declare-fun b_lambda!68831 () Bool)

(assert (= b_lambda!68829 (or (and start!200744 b_free!56819) b_lambda!68831)))

(check-sat (not b!2037658) b_and!162649 (not b!2037666) tp_is_empty!9267 (not b!2037615) (not b!2037596) (not b!2037674) (not b_next!57523) (not b!2037663) (not d!623882) (not b!2037672) (not b!2037616) (not b!2037624) (not b!2037650) (not b!2037585) (not d!623874) (not b!2037660) (not d!623876) (not b!2037673) (not b!2037586) (not b!2037670) (not b!2037664) (not b!2037583) (not b!2037634) (not b!2037661) (not b!2037656) (not b!2037589) (not b!2037653) (not b!2037626) (not d!623852) (not b!2037669) (not d!623854) (not b!2037593) (not b!2037603) (not b!2037609) (not b!2037590) (not d!623872) (not b!2037591) (not d!623892) (not b!2037662) (not b!2037612) (not b!2037608) (not b!2037614) (not b!2037667) (not b!2037613) (not d!623896) (not b!2037629) (not b!2037511) (not d!623870) (not d!623888) (not bm!124944) (not b!2037605) (not b!2037594) (not b!2037592) (not d!623902) (not b!2037671) (not b!2037668) (not b!2037611) (not b!2037582) (not b!2037665) (not d!623900) (not b!2037514) (not b!2037588) (not b!2037631) (not b!2037601) (not d!623886) (not b!2037606) (not b_lambda!68831) (not d!623890) (not d!623894))
(check-sat b_and!162649 (not b_next!57523))
