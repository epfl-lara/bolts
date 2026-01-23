; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184388 () Bool)

(assert start!184388)

(declare-fun b!1847429 () Bool)

(assert (=> b!1847429 true))

(assert (=> b!1847429 true))

(declare-fun b!1847425 () Bool)

(declare-fun e!1180578 () Bool)

(declare-fun tp!522364 () Bool)

(assert (=> b!1847425 (= e!1180578 tp!522364)))

(declare-fun b!1847426 () Bool)

(declare-fun res!829487 () Bool)

(declare-fun e!1180582 () Bool)

(assert (=> b!1847426 (=> (not res!829487) (not e!1180582))))

(declare-datatypes ((C!10154 0))(
  ( (C!10155 (val!5803 Int)) )
))
(declare-datatypes ((Regex!5002 0))(
  ( (ElementMatch!5002 (c!301627 C!10154)) (Concat!8780 (regOne!10516 Regex!5002) (regTwo!10516 Regex!5002)) (EmptyExpr!5002) (Star!5002 (reg!5331 Regex!5002)) (EmptyLang!5002) (Union!5002 (regOne!10517 Regex!5002) (regTwo!10517 Regex!5002)) )
))
(declare-fun r!26091 () Regex!5002)

(declare-datatypes ((List!20483 0))(
  ( (Nil!20411) (Cons!20411 (h!25812 C!10154) (t!172256 List!20483)) )
))
(declare-fun prefix!1614 () List!20483)

(declare-fun prefixMatch!779 (Regex!5002 List!20483) Bool)

(assert (=> b!1847426 (= res!829487 (prefixMatch!779 r!26091 prefix!1614))))

(declare-fun b!1847427 () Bool)

(declare-fun tp_is_empty!8453 () Bool)

(assert (=> b!1847427 (= e!1180578 tp_is_empty!8453)))

(declare-fun b!1847428 () Bool)

(declare-fun e!1180579 () Bool)

(declare-fun tp!522368 () Bool)

(assert (=> b!1847428 (= e!1180579 (and tp_is_empty!8453 tp!522368))))

(declare-fun e!1180580 () Bool)

(assert (=> b!1847429 (= e!1180582 (not e!1180580))))

(declare-fun res!829490 () Bool)

(assert (=> b!1847429 (=> res!829490 e!1180580)))

(declare-fun lambda!73003 () Int)

(declare-fun Exists!956 (Int) Bool)

(assert (=> b!1847429 (= res!829490 (not (Exists!956 lambda!73003)))))

(assert (=> b!1847429 (Exists!956 lambda!73003)))

(declare-datatypes ((Unit!35079 0))(
  ( (Unit!35080) )
))
(declare-fun lt!715106 () Unit!35079)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!274 (Regex!5002 List!20483) Unit!35079)

(assert (=> b!1847429 (= lt!715106 (lemmaPrefixMatchThenExistsStringThatMatches!274 r!26091 prefix!1614))))

(declare-fun b!1847430 () Bool)

(declare-fun res!829492 () Bool)

(declare-fun e!1180581 () Bool)

(assert (=> b!1847430 (=> res!829492 e!1180581)))

(declare-fun lt!715105 () List!20483)

(declare-fun isPrefix!1878 (List!20483 List!20483) Bool)

(assert (=> b!1847430 (= res!829492 (not (isPrefix!1878 prefix!1614 lt!715105)))))

(declare-fun b!1847431 () Bool)

(declare-fun tp!522367 () Bool)

(declare-fun tp!522366 () Bool)

(assert (=> b!1847431 (= e!1180578 (and tp!522367 tp!522366))))

(declare-fun res!829489 () Bool)

(assert (=> start!184388 (=> (not res!829489) (not e!1180582))))

(declare-fun validRegex!2046 (Regex!5002) Bool)

(assert (=> start!184388 (= res!829489 (validRegex!2046 r!26091))))

(assert (=> start!184388 e!1180582))

(assert (=> start!184388 e!1180578))

(assert (=> start!184388 e!1180579))

(assert (=> start!184388 tp_is_empty!8453))

(declare-fun b!1847432 () Bool)

(declare-fun size!16137 (List!20483) Int)

(assert (=> b!1847432 (= e!1180581 (>= (size!16137 lt!715105) (size!16137 prefix!1614)))))

(declare-fun b!1847433 () Bool)

(declare-fun res!829488 () Bool)

(assert (=> b!1847433 (=> (not res!829488) (not e!1180582))))

(declare-fun c!13459 () C!10154)

(declare-fun contains!3767 (List!20483 C!10154) Bool)

(declare-fun usedCharacters!307 (Regex!5002) List!20483)

(assert (=> b!1847433 (= res!829488 (not (contains!3767 (usedCharacters!307 r!26091) c!13459)))))

(declare-fun b!1847434 () Bool)

(declare-fun res!829491 () Bool)

(assert (=> b!1847434 (=> (not res!829491) (not e!1180582))))

(assert (=> b!1847434 (= res!829491 (contains!3767 prefix!1614 c!13459))))

(declare-fun b!1847435 () Bool)

(declare-fun tp!522369 () Bool)

(declare-fun tp!522365 () Bool)

(assert (=> b!1847435 (= e!1180578 (and tp!522369 tp!522365))))

(declare-fun b!1847436 () Bool)

(assert (=> b!1847436 (= e!1180580 e!1180581)))

(declare-fun res!829493 () Bool)

(assert (=> b!1847436 (=> res!829493 e!1180581)))

(declare-fun matchR!2441 (Regex!5002 List!20483) Bool)

(assert (=> b!1847436 (= res!829493 (not (matchR!2441 r!26091 lt!715105)))))

(declare-fun pickWitness!255 (Int) List!20483)

(assert (=> b!1847436 (= lt!715105 (pickWitness!255 lambda!73003))))

(assert (= (and start!184388 res!829489) b!1847434))

(assert (= (and b!1847434 res!829491) b!1847433))

(assert (= (and b!1847433 res!829488) b!1847426))

(assert (= (and b!1847426 res!829487) b!1847429))

(assert (= (and b!1847429 (not res!829490)) b!1847436))

(assert (= (and b!1847436 (not res!829493)) b!1847430))

(assert (= (and b!1847430 (not res!829492)) b!1847432))

(assert (= (and start!184388 (is-ElementMatch!5002 r!26091)) b!1847427))

(assert (= (and start!184388 (is-Concat!8780 r!26091)) b!1847435))

(assert (= (and start!184388 (is-Star!5002 r!26091)) b!1847425))

(assert (= (and start!184388 (is-Union!5002 r!26091)) b!1847431))

(assert (= (and start!184388 (is-Cons!20411 prefix!1614)) b!1847428))

(declare-fun m!2275657 () Bool)

(assert (=> b!1847434 m!2275657))

(declare-fun m!2275659 () Bool)

(assert (=> b!1847429 m!2275659))

(assert (=> b!1847429 m!2275659))

(declare-fun m!2275661 () Bool)

(assert (=> b!1847429 m!2275661))

(declare-fun m!2275663 () Bool)

(assert (=> start!184388 m!2275663))

(declare-fun m!2275665 () Bool)

(assert (=> b!1847433 m!2275665))

(assert (=> b!1847433 m!2275665))

(declare-fun m!2275667 () Bool)

(assert (=> b!1847433 m!2275667))

(declare-fun m!2275669 () Bool)

(assert (=> b!1847430 m!2275669))

(declare-fun m!2275671 () Bool)

(assert (=> b!1847432 m!2275671))

(declare-fun m!2275673 () Bool)

(assert (=> b!1847432 m!2275673))

(declare-fun m!2275675 () Bool)

(assert (=> b!1847436 m!2275675))

(declare-fun m!2275677 () Bool)

(assert (=> b!1847436 m!2275677))

(declare-fun m!2275679 () Bool)

(assert (=> b!1847426 m!2275679))

(push 1)

(assert (not b!1847434))

(assert (not b!1847426))

(assert (not b!1847428))

(assert tp_is_empty!8453)

(assert (not b!1847431))

(assert (not b!1847429))

(assert (not b!1847432))

(assert (not b!1847430))

(assert (not b!1847435))

(assert (not start!184388))

(assert (not b!1847436))

(assert (not b!1847433))

(assert (not b!1847425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1847515 () Bool)

(declare-fun e!1180623 () Bool)

(declare-fun head!4322 (List!20483) C!10154)

(assert (=> b!1847515 (= e!1180623 (not (= (head!4322 lt!715105) (c!301627 r!26091))))))

(declare-fun b!1847516 () Bool)

(declare-fun e!1180618 () Bool)

(declare-fun lt!715115 () Bool)

(declare-fun call!115133 () Bool)

(assert (=> b!1847516 (= e!1180618 (= lt!715115 call!115133))))

(declare-fun d!565446 () Bool)

(assert (=> d!565446 e!1180618))

(declare-fun c!301637 () Bool)

(assert (=> d!565446 (= c!301637 (is-EmptyExpr!5002 r!26091))))

(declare-fun e!1180622 () Bool)

(assert (=> d!565446 (= lt!715115 e!1180622)))

(declare-fun c!301636 () Bool)

(declare-fun isEmpty!12771 (List!20483) Bool)

(assert (=> d!565446 (= c!301636 (isEmpty!12771 lt!715105))))

(assert (=> d!565446 (validRegex!2046 r!26091)))

(assert (=> d!565446 (= (matchR!2441 r!26091 lt!715105) lt!715115)))

(declare-fun b!1847517 () Bool)

(declare-fun res!829540 () Bool)

(declare-fun e!1180619 () Bool)

(assert (=> b!1847517 (=> res!829540 e!1180619)))

(assert (=> b!1847517 (= res!829540 (not (is-ElementMatch!5002 r!26091)))))

(declare-fun e!1180620 () Bool)

(assert (=> b!1847517 (= e!1180620 e!1180619)))

(declare-fun b!1847518 () Bool)

(declare-fun res!829544 () Bool)

(assert (=> b!1847518 (=> res!829544 e!1180623)))

(declare-fun tail!2785 (List!20483) List!20483)

(assert (=> b!1847518 (= res!829544 (not (isEmpty!12771 (tail!2785 lt!715105))))))

(declare-fun b!1847519 () Bool)

(assert (=> b!1847519 (= e!1180620 (not lt!715115))))

(declare-fun b!1847520 () Bool)

(assert (=> b!1847520 (= e!1180618 e!1180620)))

(declare-fun c!301635 () Bool)

(assert (=> b!1847520 (= c!301635 (is-EmptyLang!5002 r!26091))))

(declare-fun b!1847521 () Bool)

(declare-fun nullable!1554 (Regex!5002) Bool)

(assert (=> b!1847521 (= e!1180622 (nullable!1554 r!26091))))

(declare-fun b!1847522 () Bool)

(declare-fun e!1180624 () Bool)

(assert (=> b!1847522 (= e!1180619 e!1180624)))

(declare-fun res!829541 () Bool)

(assert (=> b!1847522 (=> (not res!829541) (not e!1180624))))

(assert (=> b!1847522 (= res!829541 (not lt!715115))))

(declare-fun b!1847523 () Bool)

(declare-fun res!829537 () Bool)

(assert (=> b!1847523 (=> res!829537 e!1180619)))

(declare-fun e!1180621 () Bool)

(assert (=> b!1847523 (= res!829537 e!1180621)))

(declare-fun res!829542 () Bool)

(assert (=> b!1847523 (=> (not res!829542) (not e!1180621))))

(assert (=> b!1847523 (= res!829542 lt!715115)))

(declare-fun b!1847524 () Bool)

(declare-fun derivativeStep!1318 (Regex!5002 C!10154) Regex!5002)

(assert (=> b!1847524 (= e!1180622 (matchR!2441 (derivativeStep!1318 r!26091 (head!4322 lt!715105)) (tail!2785 lt!715105)))))

(declare-fun bm!115128 () Bool)

(assert (=> bm!115128 (= call!115133 (isEmpty!12771 lt!715105))))

(declare-fun b!1847525 () Bool)

(assert (=> b!1847525 (= e!1180621 (= (head!4322 lt!715105) (c!301627 r!26091)))))

(declare-fun b!1847526 () Bool)

(assert (=> b!1847526 (= e!1180624 e!1180623)))

(declare-fun res!829543 () Bool)

(assert (=> b!1847526 (=> res!829543 e!1180623)))

(assert (=> b!1847526 (= res!829543 call!115133)))

(declare-fun b!1847527 () Bool)

(declare-fun res!829538 () Bool)

(assert (=> b!1847527 (=> (not res!829538) (not e!1180621))))

(assert (=> b!1847527 (= res!829538 (isEmpty!12771 (tail!2785 lt!715105)))))

(declare-fun b!1847528 () Bool)

(declare-fun res!829539 () Bool)

(assert (=> b!1847528 (=> (not res!829539) (not e!1180621))))

(assert (=> b!1847528 (= res!829539 (not call!115133))))

(assert (= (and d!565446 c!301636) b!1847521))

(assert (= (and d!565446 (not c!301636)) b!1847524))

(assert (= (and d!565446 c!301637) b!1847516))

(assert (= (and d!565446 (not c!301637)) b!1847520))

(assert (= (and b!1847520 c!301635) b!1847519))

(assert (= (and b!1847520 (not c!301635)) b!1847517))

(assert (= (and b!1847517 (not res!829540)) b!1847523))

(assert (= (and b!1847523 res!829542) b!1847528))

(assert (= (and b!1847528 res!829539) b!1847527))

(assert (= (and b!1847527 res!829538) b!1847525))

(assert (= (and b!1847523 (not res!829537)) b!1847522))

(assert (= (and b!1847522 res!829541) b!1847526))

(assert (= (and b!1847526 (not res!829543)) b!1847518))

(assert (= (and b!1847518 (not res!829544)) b!1847515))

(assert (= (or b!1847516 b!1847526 b!1847528) bm!115128))

(declare-fun m!2275705 () Bool)

(assert (=> b!1847525 m!2275705))

(assert (=> b!1847524 m!2275705))

(assert (=> b!1847524 m!2275705))

(declare-fun m!2275707 () Bool)

(assert (=> b!1847524 m!2275707))

(declare-fun m!2275709 () Bool)

(assert (=> b!1847524 m!2275709))

(assert (=> b!1847524 m!2275707))

(assert (=> b!1847524 m!2275709))

(declare-fun m!2275711 () Bool)

(assert (=> b!1847524 m!2275711))

(declare-fun m!2275713 () Bool)

(assert (=> d!565446 m!2275713))

(assert (=> d!565446 m!2275663))

(declare-fun m!2275715 () Bool)

(assert (=> b!1847521 m!2275715))

(assert (=> bm!115128 m!2275713))

(assert (=> b!1847527 m!2275709))

(assert (=> b!1847527 m!2275709))

(declare-fun m!2275717 () Bool)

(assert (=> b!1847527 m!2275717))

(assert (=> b!1847518 m!2275709))

(assert (=> b!1847518 m!2275709))

(assert (=> b!1847518 m!2275717))

(assert (=> b!1847515 m!2275705))

(assert (=> b!1847436 d!565446))

(declare-fun d!565450 () Bool)

(declare-fun lt!715118 () List!20483)

(declare-fun dynLambda!10151 (Int List!20483) Bool)

(assert (=> d!565450 (dynLambda!10151 lambda!73003 lt!715118)))

(declare-fun choose!11621 (Int) List!20483)

(assert (=> d!565450 (= lt!715118 (choose!11621 lambda!73003))))

(assert (=> d!565450 (Exists!956 lambda!73003)))

(assert (=> d!565450 (= (pickWitness!255 lambda!73003) lt!715118)))

(declare-fun b_lambda!61381 () Bool)

(assert (=> (not b_lambda!61381) (not d!565450)))

(declare-fun bs!409718 () Bool)

(assert (= bs!409718 d!565450))

(declare-fun m!2275719 () Bool)

(assert (=> bs!409718 m!2275719))

(declare-fun m!2275721 () Bool)

(assert (=> bs!409718 m!2275721))

(assert (=> bs!409718 m!2275659))

(assert (=> b!1847436 d!565450))

(declare-fun b!1847547 () Bool)

(declare-fun e!1180635 () Bool)

(assert (=> b!1847547 (= e!1180635 (isPrefix!1878 (tail!2785 prefix!1614) (tail!2785 lt!715105)))))

(declare-fun b!1847546 () Bool)

(declare-fun res!829556 () Bool)

(assert (=> b!1847546 (=> (not res!829556) (not e!1180635))))

(assert (=> b!1847546 (= res!829556 (= (head!4322 prefix!1614) (head!4322 lt!715105)))))

(declare-fun b!1847548 () Bool)

(declare-fun e!1180636 () Bool)

(assert (=> b!1847548 (= e!1180636 (>= (size!16137 lt!715105) (size!16137 prefix!1614)))))

(declare-fun b!1847545 () Bool)

(declare-fun e!1180637 () Bool)

(assert (=> b!1847545 (= e!1180637 e!1180635)))

(declare-fun res!829555 () Bool)

(assert (=> b!1847545 (=> (not res!829555) (not e!1180635))))

(assert (=> b!1847545 (= res!829555 (not (is-Nil!20411 lt!715105)))))

(declare-fun d!565452 () Bool)

(assert (=> d!565452 e!1180636))

(declare-fun res!829554 () Bool)

(assert (=> d!565452 (=> res!829554 e!1180636)))

(declare-fun lt!715125 () Bool)

(assert (=> d!565452 (= res!829554 (not lt!715125))))

(assert (=> d!565452 (= lt!715125 e!1180637)))

(declare-fun res!829553 () Bool)

(assert (=> d!565452 (=> res!829553 e!1180637)))

(assert (=> d!565452 (= res!829553 (is-Nil!20411 prefix!1614))))

(assert (=> d!565452 (= (isPrefix!1878 prefix!1614 lt!715105) lt!715125)))

(assert (= (and d!565452 (not res!829553)) b!1847545))

(assert (= (and b!1847545 res!829555) b!1847546))

(assert (= (and b!1847546 res!829556) b!1847547))

(assert (= (and d!565452 (not res!829554)) b!1847548))

(declare-fun m!2275727 () Bool)

(assert (=> b!1847547 m!2275727))

(assert (=> b!1847547 m!2275709))

(assert (=> b!1847547 m!2275727))

(assert (=> b!1847547 m!2275709))

(declare-fun m!2275729 () Bool)

(assert (=> b!1847547 m!2275729))

(declare-fun m!2275731 () Bool)

(assert (=> b!1847546 m!2275731))

(assert (=> b!1847546 m!2275705))

(assert (=> b!1847548 m!2275671))

(assert (=> b!1847548 m!2275673))

(assert (=> b!1847430 d!565452))

(declare-fun d!565458 () Bool)

(declare-fun lt!715128 () Int)

(assert (=> d!565458 (>= lt!715128 0)))

(declare-fun e!1180640 () Int)

(assert (=> d!565458 (= lt!715128 e!1180640)))

(declare-fun c!301644 () Bool)

(assert (=> d!565458 (= c!301644 (is-Nil!20411 lt!715105))))

(assert (=> d!565458 (= (size!16137 lt!715105) lt!715128)))

(declare-fun b!1847553 () Bool)

(assert (=> b!1847553 (= e!1180640 0)))

(declare-fun b!1847554 () Bool)

(assert (=> b!1847554 (= e!1180640 (+ 1 (size!16137 (t!172256 lt!715105))))))

(assert (= (and d!565458 c!301644) b!1847553))

(assert (= (and d!565458 (not c!301644)) b!1847554))

(declare-fun m!2275733 () Bool)

(assert (=> b!1847554 m!2275733))

(assert (=> b!1847432 d!565458))

(declare-fun d!565460 () Bool)

(declare-fun lt!715129 () Int)

(assert (=> d!565460 (>= lt!715129 0)))

(declare-fun e!1180641 () Int)

(assert (=> d!565460 (= lt!715129 e!1180641)))

(declare-fun c!301645 () Bool)

(assert (=> d!565460 (= c!301645 (is-Nil!20411 prefix!1614))))

(assert (=> d!565460 (= (size!16137 prefix!1614) lt!715129)))

(declare-fun b!1847555 () Bool)

(assert (=> b!1847555 (= e!1180641 0)))

(declare-fun b!1847556 () Bool)

(assert (=> b!1847556 (= e!1180641 (+ 1 (size!16137 (t!172256 prefix!1614))))))

(assert (= (and d!565460 c!301645) b!1847555))

(assert (= (and d!565460 (not c!301645)) b!1847556))

(declare-fun m!2275735 () Bool)

(assert (=> b!1847556 m!2275735))

(assert (=> b!1847432 d!565460))

(declare-fun bm!115139 () Bool)

(declare-fun c!301655 () Bool)

(declare-fun c!301654 () Bool)

(declare-fun call!115148 () Bool)

(assert (=> bm!115139 (= call!115148 (validRegex!2046 (ite c!301655 (reg!5331 r!26091) (ite c!301654 (regTwo!10517 r!26091) (regTwo!10516 r!26091)))))))

(declare-fun b!1847593 () Bool)

(declare-fun res!829580 () Bool)

(declare-fun e!1180674 () Bool)

(assert (=> b!1847593 (=> res!829580 e!1180674)))

(assert (=> b!1847593 (= res!829580 (not (is-Concat!8780 r!26091)))))

(declare-fun e!1180676 () Bool)

(assert (=> b!1847593 (= e!1180676 e!1180674)))

(declare-fun b!1847594 () Bool)

(declare-fun e!1180673 () Bool)

(declare-fun call!115146 () Bool)

(assert (=> b!1847594 (= e!1180673 call!115146)))

(declare-fun b!1847595 () Bool)

(declare-fun e!1180670 () Bool)

(assert (=> b!1847595 (= e!1180670 call!115146)))

(declare-fun bm!115140 () Bool)

(declare-fun call!115147 () Bool)

(assert (=> bm!115140 (= call!115147 (validRegex!2046 (ite c!301654 (regOne!10517 r!26091) (regOne!10516 r!26091))))))

(declare-fun b!1847597 () Bool)

(declare-fun e!1180675 () Bool)

(declare-fun e!1180671 () Bool)

(assert (=> b!1847597 (= e!1180675 e!1180671)))

(declare-fun res!829579 () Bool)

(assert (=> b!1847597 (= res!829579 (not (nullable!1554 (reg!5331 r!26091))))))

(assert (=> b!1847597 (=> (not res!829579) (not e!1180671))))

(declare-fun b!1847598 () Bool)

(declare-fun res!829578 () Bool)

(assert (=> b!1847598 (=> (not res!829578) (not e!1180670))))

(assert (=> b!1847598 (= res!829578 call!115147)))

(assert (=> b!1847598 (= e!1180676 e!1180670)))

(declare-fun b!1847599 () Bool)

(assert (=> b!1847599 (= e!1180675 e!1180676)))

(assert (=> b!1847599 (= c!301654 (is-Union!5002 r!26091))))

(declare-fun b!1847600 () Bool)

(assert (=> b!1847600 (= e!1180671 call!115148)))

(declare-fun d!565462 () Bool)

(declare-fun res!829581 () Bool)

(declare-fun e!1180672 () Bool)

(assert (=> d!565462 (=> res!829581 e!1180672)))

(assert (=> d!565462 (= res!829581 (is-ElementMatch!5002 r!26091))))

(assert (=> d!565462 (= (validRegex!2046 r!26091) e!1180672)))

(declare-fun b!1847596 () Bool)

(assert (=> b!1847596 (= e!1180672 e!1180675)))

(assert (=> b!1847596 (= c!301655 (is-Star!5002 r!26091))))

(declare-fun b!1847601 () Bool)

(assert (=> b!1847601 (= e!1180674 e!1180673)))

(declare-fun res!829577 () Bool)

(assert (=> b!1847601 (=> (not res!829577) (not e!1180673))))

(assert (=> b!1847601 (= res!829577 call!115147)))

(declare-fun bm!115141 () Bool)

(assert (=> bm!115141 (= call!115146 call!115148)))

(assert (= (and d!565462 (not res!829581)) b!1847596))

(assert (= (and b!1847596 c!301655) b!1847597))

(assert (= (and b!1847596 (not c!301655)) b!1847599))

(assert (= (and b!1847597 res!829579) b!1847600))

(assert (= (and b!1847599 c!301654) b!1847598))

(assert (= (and b!1847599 (not c!301654)) b!1847593))

(assert (= (and b!1847598 res!829578) b!1847595))

(assert (= (and b!1847593 (not res!829580)) b!1847601))

(assert (= (and b!1847601 res!829577) b!1847594))

(assert (= (or b!1847595 b!1847594) bm!115141))

(assert (= (or b!1847598 b!1847601) bm!115140))

(assert (= (or b!1847600 bm!115141) bm!115139))

(declare-fun m!2275737 () Bool)

(assert (=> bm!115139 m!2275737))

(declare-fun m!2275739 () Bool)

(assert (=> bm!115140 m!2275739))

(declare-fun m!2275741 () Bool)

(assert (=> b!1847597 m!2275741))

(assert (=> start!184388 d!565462))

(declare-fun d!565464 () Bool)

(declare-fun c!301658 () Bool)

(assert (=> d!565464 (= c!301658 (isEmpty!12771 prefix!1614))))

(declare-fun e!1180679 () Bool)

(assert (=> d!565464 (= (prefixMatch!779 r!26091 prefix!1614) e!1180679)))

(declare-fun b!1847606 () Bool)

(declare-fun lostCause!626 (Regex!5002) Bool)

(assert (=> b!1847606 (= e!1180679 (not (lostCause!626 r!26091)))))

(declare-fun b!1847607 () Bool)

(assert (=> b!1847607 (= e!1180679 (prefixMatch!779 (derivativeStep!1318 r!26091 (head!4322 prefix!1614)) (tail!2785 prefix!1614)))))

(assert (= (and d!565464 c!301658) b!1847606))

(assert (= (and d!565464 (not c!301658)) b!1847607))

(declare-fun m!2275743 () Bool)

(assert (=> d!565464 m!2275743))

(declare-fun m!2275745 () Bool)

(assert (=> b!1847606 m!2275745))

(assert (=> b!1847607 m!2275731))

(assert (=> b!1847607 m!2275731))

(declare-fun m!2275747 () Bool)

(assert (=> b!1847607 m!2275747))

(assert (=> b!1847607 m!2275727))

(assert (=> b!1847607 m!2275747))

(assert (=> b!1847607 m!2275727))

(declare-fun m!2275749 () Bool)

(assert (=> b!1847607 m!2275749))

(assert (=> b!1847426 d!565464))

(declare-fun d!565466 () Bool)

(declare-fun lt!715132 () Bool)

(declare-fun content!3040 (List!20483) (Set C!10154))

(assert (=> d!565466 (= lt!715132 (set.member c!13459 (content!3040 (usedCharacters!307 r!26091))))))

(declare-fun e!1180691 () Bool)

(assert (=> d!565466 (= lt!715132 e!1180691)))

(declare-fun res!829592 () Bool)

(assert (=> d!565466 (=> (not res!829592) (not e!1180691))))

(assert (=> d!565466 (= res!829592 (is-Cons!20411 (usedCharacters!307 r!26091)))))

(assert (=> d!565466 (= (contains!3767 (usedCharacters!307 r!26091) c!13459) lt!715132)))

(declare-fun b!1847621 () Bool)

(declare-fun e!1180692 () Bool)

(assert (=> b!1847621 (= e!1180691 e!1180692)))

(declare-fun res!829591 () Bool)

(assert (=> b!1847621 (=> res!829591 e!1180692)))

(assert (=> b!1847621 (= res!829591 (= (h!25812 (usedCharacters!307 r!26091)) c!13459))))

(declare-fun b!1847622 () Bool)

(assert (=> b!1847622 (= e!1180692 (contains!3767 (t!172256 (usedCharacters!307 r!26091)) c!13459))))

(assert (= (and d!565466 res!829592) b!1847621))

(assert (= (and b!1847621 (not res!829591)) b!1847622))

(assert (=> d!565466 m!2275665))

(declare-fun m!2275751 () Bool)

(assert (=> d!565466 m!2275751))

(declare-fun m!2275753 () Bool)

(assert (=> d!565466 m!2275753))

(declare-fun m!2275755 () Bool)

(assert (=> b!1847622 m!2275755))

(assert (=> b!1847433 d!565466))

(declare-fun d!565468 () Bool)

(declare-fun c!301671 () Bool)

(assert (=> d!565468 (= c!301671 (or (is-EmptyExpr!5002 r!26091) (is-EmptyLang!5002 r!26091)))))

(declare-fun e!1180708 () List!20483)

(assert (=> d!565468 (= (usedCharacters!307 r!26091) e!1180708)))

(declare-fun bm!115155 () Bool)

(declare-fun call!115160 () List!20483)

(declare-fun c!301672 () Bool)

(declare-fun c!301670 () Bool)

(assert (=> bm!115155 (= call!115160 (usedCharacters!307 (ite c!301672 (reg!5331 r!26091) (ite c!301670 (regTwo!10517 r!26091) (regOne!10516 r!26091)))))))

(declare-fun b!1847643 () Bool)

(declare-fun e!1180706 () List!20483)

(declare-fun e!1180705 () List!20483)

(assert (=> b!1847643 (= e!1180706 e!1180705)))

(assert (=> b!1847643 (= c!301670 (is-Union!5002 r!26091))))

(declare-fun bm!115156 () Bool)

(declare-fun call!115163 () List!20483)

(declare-fun call!115161 () List!20483)

(declare-fun call!115162 () List!20483)

(declare-fun ++!5531 (List!20483 List!20483) List!20483)

(assert (=> bm!115156 (= call!115161 (++!5531 (ite c!301670 call!115163 call!115162) (ite c!301670 call!115162 call!115163)))))

(declare-fun b!1847644 () Bool)

(assert (=> b!1847644 (= e!1180705 call!115161)))

(declare-fun b!1847645 () Bool)

(assert (=> b!1847645 (= e!1180705 call!115161)))

(declare-fun b!1847646 () Bool)

(assert (=> b!1847646 (= c!301672 (is-Star!5002 r!26091))))

(declare-fun e!1180707 () List!20483)

(assert (=> b!1847646 (= e!1180707 e!1180706)))

(declare-fun b!1847647 () Bool)

(assert (=> b!1847647 (= e!1180707 (Cons!20411 (c!301627 r!26091) Nil!20411))))

(declare-fun bm!115157 () Bool)

(assert (=> bm!115157 (= call!115162 call!115160)))

(declare-fun b!1847648 () Bool)

(assert (=> b!1847648 (= e!1180706 call!115160)))

(declare-fun b!1847649 () Bool)

(assert (=> b!1847649 (= e!1180708 Nil!20411)))

(declare-fun b!1847650 () Bool)

(assert (=> b!1847650 (= e!1180708 e!1180707)))

(declare-fun c!301669 () Bool)

(assert (=> b!1847650 (= c!301669 (is-ElementMatch!5002 r!26091))))

(declare-fun bm!115158 () Bool)

(assert (=> bm!115158 (= call!115163 (usedCharacters!307 (ite c!301670 (regOne!10517 r!26091) (regTwo!10516 r!26091))))))

(assert (= (and d!565468 c!301671) b!1847649))

(assert (= (and d!565468 (not c!301671)) b!1847650))

(assert (= (and b!1847650 c!301669) b!1847647))

(assert (= (and b!1847650 (not c!301669)) b!1847646))

(assert (= (and b!1847646 c!301672) b!1847648))

(assert (= (and b!1847646 (not c!301672)) b!1847643))

(assert (= (and b!1847643 c!301670) b!1847645))

(assert (= (and b!1847643 (not c!301670)) b!1847644))

(assert (= (or b!1847645 b!1847644) bm!115157))

(assert (= (or b!1847645 b!1847644) bm!115158))

(assert (= (or b!1847645 b!1847644) bm!115156))

(assert (= (or b!1847648 bm!115157) bm!115155))

(declare-fun m!2275763 () Bool)

(assert (=> bm!115155 m!2275763))

(declare-fun m!2275765 () Bool)

(assert (=> bm!115156 m!2275765))

(declare-fun m!2275767 () Bool)

(assert (=> bm!115158 m!2275767))

(assert (=> b!1847433 d!565468))

(declare-fun d!565472 () Bool)

(declare-fun choose!11622 (Int) Bool)

(assert (=> d!565472 (= (Exists!956 lambda!73003) (choose!11622 lambda!73003))))

(declare-fun bs!409719 () Bool)

(assert (= bs!409719 d!565472))

(declare-fun m!2275775 () Bool)

(assert (=> bs!409719 m!2275775))

(assert (=> b!1847429 d!565472))

(declare-fun bs!409720 () Bool)

(declare-fun d!565476 () Bool)

(assert (= bs!409720 (and d!565476 b!1847429)))

(declare-fun lambda!73013 () Int)

(assert (=> bs!409720 (= lambda!73013 lambda!73003)))

(assert (=> d!565476 true))

(assert (=> d!565476 true))

(assert (=> d!565476 (Exists!956 lambda!73013)))

(declare-fun lt!715138 () Unit!35079)

(declare-fun choose!11623 (Regex!5002 List!20483) Unit!35079)

(assert (=> d!565476 (= lt!715138 (choose!11623 r!26091 prefix!1614))))

(assert (=> d!565476 (validRegex!2046 r!26091)))

(assert (=> d!565476 (= (lemmaPrefixMatchThenExistsStringThatMatches!274 r!26091 prefix!1614) lt!715138)))

(declare-fun bs!409721 () Bool)

(assert (= bs!409721 d!565476))

(declare-fun m!2275777 () Bool)

(assert (=> bs!409721 m!2275777))

(declare-fun m!2275779 () Bool)

(assert (=> bs!409721 m!2275779))

(assert (=> bs!409721 m!2275663))

(assert (=> b!1847429 d!565476))

(declare-fun d!565478 () Bool)

(declare-fun lt!715139 () Bool)

(assert (=> d!565478 (= lt!715139 (set.member c!13459 (content!3040 prefix!1614)))))

(declare-fun e!1180721 () Bool)

(assert (=> d!565478 (= lt!715139 e!1180721)))

(declare-fun res!829602 () Bool)

(assert (=> d!565478 (=> (not res!829602) (not e!1180721))))

(assert (=> d!565478 (= res!829602 (is-Cons!20411 prefix!1614))))

(assert (=> d!565478 (= (contains!3767 prefix!1614 c!13459) lt!715139)))

(declare-fun b!1847671 () Bool)

(declare-fun e!1180722 () Bool)

(assert (=> b!1847671 (= e!1180721 e!1180722)))

(declare-fun res!829601 () Bool)

(assert (=> b!1847671 (=> res!829601 e!1180722)))

(assert (=> b!1847671 (= res!829601 (= (h!25812 prefix!1614) c!13459))))

(declare-fun b!1847672 () Bool)

(assert (=> b!1847672 (= e!1180722 (contains!3767 (t!172256 prefix!1614) c!13459))))

(assert (= (and d!565478 res!829602) b!1847671))

(assert (= (and b!1847671 (not res!829601)) b!1847672))

(declare-fun m!2275781 () Bool)

(assert (=> d!565478 m!2275781))

(declare-fun m!2275783 () Bool)

(assert (=> d!565478 m!2275783))

(declare-fun m!2275785 () Bool)

(assert (=> b!1847672 m!2275785))

(assert (=> b!1847434 d!565478))

(declare-fun b!1847684 () Bool)

(declare-fun e!1180725 () Bool)

(declare-fun tp!522400 () Bool)

(declare-fun tp!522402 () Bool)

(assert (=> b!1847684 (= e!1180725 (and tp!522400 tp!522402))))

(declare-fun b!1847686 () Bool)

(declare-fun tp!522399 () Bool)

(declare-fun tp!522398 () Bool)

(assert (=> b!1847686 (= e!1180725 (and tp!522399 tp!522398))))

(declare-fun b!1847685 () Bool)

(declare-fun tp!522401 () Bool)

(assert (=> b!1847685 (= e!1180725 tp!522401)))

(declare-fun b!1847683 () Bool)

(assert (=> b!1847683 (= e!1180725 tp_is_empty!8453)))

(assert (=> b!1847425 (= tp!522364 e!1180725)))

(assert (= (and b!1847425 (is-ElementMatch!5002 (reg!5331 r!26091))) b!1847683))

(assert (= (and b!1847425 (is-Concat!8780 (reg!5331 r!26091))) b!1847684))

(assert (= (and b!1847425 (is-Star!5002 (reg!5331 r!26091))) b!1847685))

(assert (= (and b!1847425 (is-Union!5002 (reg!5331 r!26091))) b!1847686))

(declare-fun b!1847688 () Bool)

(declare-fun e!1180726 () Bool)

(declare-fun tp!522405 () Bool)

(declare-fun tp!522407 () Bool)

(assert (=> b!1847688 (= e!1180726 (and tp!522405 tp!522407))))

(declare-fun b!1847690 () Bool)

(declare-fun tp!522404 () Bool)

(declare-fun tp!522403 () Bool)

(assert (=> b!1847690 (= e!1180726 (and tp!522404 tp!522403))))

(declare-fun b!1847689 () Bool)

(declare-fun tp!522406 () Bool)

(assert (=> b!1847689 (= e!1180726 tp!522406)))

(declare-fun b!1847687 () Bool)

(assert (=> b!1847687 (= e!1180726 tp_is_empty!8453)))

(assert (=> b!1847435 (= tp!522369 e!1180726)))

(assert (= (and b!1847435 (is-ElementMatch!5002 (regOne!10516 r!26091))) b!1847687))

(assert (= (and b!1847435 (is-Concat!8780 (regOne!10516 r!26091))) b!1847688))

(assert (= (and b!1847435 (is-Star!5002 (regOne!10516 r!26091))) b!1847689))

(assert (= (and b!1847435 (is-Union!5002 (regOne!10516 r!26091))) b!1847690))

(declare-fun b!1847692 () Bool)

(declare-fun e!1180727 () Bool)

(declare-fun tp!522410 () Bool)

(declare-fun tp!522412 () Bool)

(assert (=> b!1847692 (= e!1180727 (and tp!522410 tp!522412))))

(declare-fun b!1847694 () Bool)

(declare-fun tp!522409 () Bool)

(declare-fun tp!522408 () Bool)

(assert (=> b!1847694 (= e!1180727 (and tp!522409 tp!522408))))

(declare-fun b!1847693 () Bool)

(declare-fun tp!522411 () Bool)

(assert (=> b!1847693 (= e!1180727 tp!522411)))

(declare-fun b!1847691 () Bool)

(assert (=> b!1847691 (= e!1180727 tp_is_empty!8453)))

(assert (=> b!1847435 (= tp!522365 e!1180727)))

(assert (= (and b!1847435 (is-ElementMatch!5002 (regTwo!10516 r!26091))) b!1847691))

(assert (= (and b!1847435 (is-Concat!8780 (regTwo!10516 r!26091))) b!1847692))

(assert (= (and b!1847435 (is-Star!5002 (regTwo!10516 r!26091))) b!1847693))

(assert (= (and b!1847435 (is-Union!5002 (regTwo!10516 r!26091))) b!1847694))

(declare-fun b!1847696 () Bool)

(declare-fun e!1180728 () Bool)

(declare-fun tp!522415 () Bool)

(declare-fun tp!522417 () Bool)

(assert (=> b!1847696 (= e!1180728 (and tp!522415 tp!522417))))

(declare-fun b!1847698 () Bool)

(declare-fun tp!522414 () Bool)

(declare-fun tp!522413 () Bool)

(assert (=> b!1847698 (= e!1180728 (and tp!522414 tp!522413))))

(declare-fun b!1847697 () Bool)

(declare-fun tp!522416 () Bool)

(assert (=> b!1847697 (= e!1180728 tp!522416)))

(declare-fun b!1847695 () Bool)

(assert (=> b!1847695 (= e!1180728 tp_is_empty!8453)))

(assert (=> b!1847431 (= tp!522367 e!1180728)))

(assert (= (and b!1847431 (is-ElementMatch!5002 (regOne!10517 r!26091))) b!1847695))

(assert (= (and b!1847431 (is-Concat!8780 (regOne!10517 r!26091))) b!1847696))

(assert (= (and b!1847431 (is-Star!5002 (regOne!10517 r!26091))) b!1847697))

(assert (= (and b!1847431 (is-Union!5002 (regOne!10517 r!26091))) b!1847698))

(declare-fun b!1847700 () Bool)

(declare-fun e!1180729 () Bool)

(declare-fun tp!522420 () Bool)

(declare-fun tp!522422 () Bool)

(assert (=> b!1847700 (= e!1180729 (and tp!522420 tp!522422))))

(declare-fun b!1847702 () Bool)

(declare-fun tp!522419 () Bool)

(declare-fun tp!522418 () Bool)

(assert (=> b!1847702 (= e!1180729 (and tp!522419 tp!522418))))

(declare-fun b!1847701 () Bool)

(declare-fun tp!522421 () Bool)

(assert (=> b!1847701 (= e!1180729 tp!522421)))

(declare-fun b!1847699 () Bool)

(assert (=> b!1847699 (= e!1180729 tp_is_empty!8453)))

(assert (=> b!1847431 (= tp!522366 e!1180729)))

(assert (= (and b!1847431 (is-ElementMatch!5002 (regTwo!10517 r!26091))) b!1847699))

(assert (= (and b!1847431 (is-Concat!8780 (regTwo!10517 r!26091))) b!1847700))

(assert (= (and b!1847431 (is-Star!5002 (regTwo!10517 r!26091))) b!1847701))

(assert (= (and b!1847431 (is-Union!5002 (regTwo!10517 r!26091))) b!1847702))

(declare-fun b!1847707 () Bool)

(declare-fun e!1180732 () Bool)

(declare-fun tp!522425 () Bool)

(assert (=> b!1847707 (= e!1180732 (and tp_is_empty!8453 tp!522425))))

(assert (=> b!1847428 (= tp!522368 e!1180732)))

(assert (= (and b!1847428 (is-Cons!20411 (t!172256 prefix!1614))) b!1847707))

(declare-fun b_lambda!61383 () Bool)

(assert (= b_lambda!61381 (or b!1847429 b_lambda!61383)))

(declare-fun bs!409722 () Bool)

(declare-fun d!565480 () Bool)

(assert (= bs!409722 (and d!565480 b!1847429)))

(declare-fun res!829603 () Bool)

(declare-fun e!1180733 () Bool)

(assert (=> bs!409722 (=> (not res!829603) (not e!1180733))))

(assert (=> bs!409722 (= res!829603 (matchR!2441 r!26091 lt!715118))))

(assert (=> bs!409722 (= (dynLambda!10151 lambda!73003 lt!715118) e!1180733)))

(declare-fun b!1847708 () Bool)

(assert (=> b!1847708 (= e!1180733 (isPrefix!1878 prefix!1614 lt!715118))))

(assert (= (and bs!409722 res!829603) b!1847708))

(declare-fun m!2275787 () Bool)

(assert (=> bs!409722 m!2275787))

(declare-fun m!2275789 () Bool)

(assert (=> b!1847708 m!2275789))

(assert (=> d!565450 d!565480))

(push 1)

(assert (not b!1847554))

(assert (not b!1847606))

(assert (not b!1847685))

(assert tp_is_empty!8453)

(assert (not d!565446))

(assert (not b!1847692))

(assert (not b!1847701))

(assert (not b!1847556))

(assert (not b!1847688))

(assert (not b!1847697))

(assert (not b!1847698))

(assert (not bm!115156))

(assert (not b!1847527))

(assert (not b!1847597))

(assert (not bm!115139))

(assert (not bm!115128))

(assert (not bs!409722))

(assert (not b!1847693))

(assert (not bm!115155))

(assert (not d!565466))

(assert (not d!565476))

(assert (not b!1847546))

(assert (not bm!115140))

(assert (not d!565478))

(assert (not b!1847607))

(assert (not b!1847547))

(assert (not b_lambda!61383))

(assert (not b!1847686))

(assert (not b!1847707))

(assert (not d!565472))

(assert (not b!1847524))

(assert (not b!1847672))

(assert (not d!565464))

(assert (not d!565450))

(assert (not b!1847548))

(assert (not b!1847622))

(assert (not b!1847515))

(assert (not bm!115158))

(assert (not b!1847518))

(assert (not b!1847521))

(assert (not b!1847690))

(assert (not b!1847708))

(assert (not b!1847525))

(assert (not b!1847702))

(assert (not b!1847684))

(assert (not b!1847696))

(assert (not b!1847700))

(assert (not b!1847689))

(assert (not b!1847694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

