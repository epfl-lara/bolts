; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61478 () Bool)

(assert start!61478)

(declare-fun b!687401 () Bool)

(declare-fun res!452451 () Bool)

(declare-fun e!391522 () Bool)

(assert (=> b!687401 (=> res!452451 e!391522)))

(declare-datatypes ((List!13091 0))(
  ( (Nil!13088) (Cons!13087 (h!14132 (_ BitVec 64)) (t!19360 List!13091)) )
))
(declare-fun lt!315421 () List!13091)

(declare-fun contains!3634 (List!13091 (_ BitVec 64)) Bool)

(assert (=> b!687401 (= res!452451 (contains!3634 lt!315421 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687402 () Bool)

(declare-fun res!452455 () Bool)

(declare-fun e!391513 () Bool)

(assert (=> b!687402 (=> (not res!452455) (not e!391513))))

(declare-datatypes ((array!39656 0))(
  ( (array!39657 (arr!18997 (Array (_ BitVec 32) (_ BitVec 64))) (size!19375 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39656)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun acc!681 () List!13091)

(declare-fun arrayNoDuplicates!0 (array!39656 (_ BitVec 32) List!13091) Bool)

(assert (=> b!687402 (= res!452455 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687403 () Bool)

(declare-datatypes ((Unit!24222 0))(
  ( (Unit!24223) )
))
(declare-fun e!391520 () Unit!24222)

(declare-fun Unit!24224 () Unit!24222)

(assert (=> b!687403 (= e!391520 Unit!24224)))

(declare-fun lt!315418 () Unit!24222)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39656 (_ BitVec 64) (_ BitVec 32)) Unit!24222)

(assert (=> b!687403 (= lt!315418 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!687403 false))

(declare-fun b!687404 () Bool)

(declare-fun res!452458 () Bool)

(assert (=> b!687404 (=> (not res!452458) (not e!391513))))

(declare-fun arrayContainsKey!0 (array!39656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687404 (= res!452458 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687405 () Bool)

(declare-fun res!452443 () Bool)

(assert (=> b!687405 (=> res!452443 e!391522)))

(assert (=> b!687405 (= res!452443 (contains!3634 lt!315421 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687406 () Bool)

(declare-fun e!391514 () Bool)

(declare-fun e!391516 () Bool)

(assert (=> b!687406 (= e!391514 e!391516)))

(declare-fun res!452447 () Bool)

(assert (=> b!687406 (=> (not res!452447) (not e!391516))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!687406 (= res!452447 (bvsle from!3004 i!1382))))

(declare-fun res!452446 () Bool)

(assert (=> start!61478 (=> (not res!452446) (not e!391513))))

(assert (=> start!61478 (= res!452446 (and (bvslt (size!19375 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19375 a!3626))))))

(assert (=> start!61478 e!391513))

(assert (=> start!61478 true))

(declare-fun array_inv!14771 (array!39656) Bool)

(assert (=> start!61478 (array_inv!14771 a!3626)))

(declare-fun b!687407 () Bool)

(declare-fun Unit!24225 () Unit!24222)

(assert (=> b!687407 (= e!391520 Unit!24225)))

(declare-fun b!687408 () Bool)

(assert (=> b!687408 (= e!391513 (not e!391522))))

(declare-fun res!452449 () Bool)

(assert (=> b!687408 (=> res!452449 e!391522)))

(assert (=> b!687408 (= res!452449 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!687408 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315421)))

(declare-fun lt!315422 () Unit!24222)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39656 (_ BitVec 64) (_ BitVec 32) List!13091 List!13091) Unit!24222)

(assert (=> b!687408 (= lt!315422 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315421))))

(declare-fun -!184 (List!13091 (_ BitVec 64)) List!13091)

(assert (=> b!687408 (= (-!184 lt!315421 k0!2843) acc!681)))

(declare-fun $colon$colon!383 (List!13091 (_ BitVec 64)) List!13091)

(assert (=> b!687408 (= lt!315421 ($colon$colon!383 acc!681 k0!2843))))

(declare-fun lt!315417 () Unit!24222)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13091) Unit!24222)

(assert (=> b!687408 (= lt!315417 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!219 (List!13091 List!13091) Bool)

(assert (=> b!687408 (subseq!219 acc!681 acc!681)))

(declare-fun lt!315420 () Unit!24222)

(declare-fun lemmaListSubSeqRefl!0 (List!13091) Unit!24222)

(assert (=> b!687408 (= lt!315420 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687408 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315419 () Unit!24222)

(declare-fun e!391518 () Unit!24222)

(assert (=> b!687408 (= lt!315419 e!391518)))

(declare-fun c!77848 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!687408 (= c!77848 (validKeyInArray!0 (select (arr!18997 a!3626) from!3004)))))

(declare-fun lt!315423 () Unit!24222)

(assert (=> b!687408 (= lt!315423 e!391520)))

(declare-fun c!77849 () Bool)

(assert (=> b!687408 (= c!77849 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687408 (arrayContainsKey!0 (array!39657 (store (arr!18997 a!3626) i!1382 k0!2843) (size!19375 a!3626)) k0!2843 from!3004)))

(declare-fun b!687409 () Bool)

(declare-fun e!391515 () Bool)

(assert (=> b!687409 (= e!391515 (not (contains!3634 lt!315421 k0!2843)))))

(declare-fun b!687410 () Bool)

(declare-fun res!452440 () Bool)

(assert (=> b!687410 (=> (not res!452440) (not e!391513))))

(assert (=> b!687410 (= res!452440 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13088))))

(declare-fun b!687411 () Bool)

(declare-fun Unit!24226 () Unit!24222)

(assert (=> b!687411 (= e!391518 Unit!24226)))

(declare-fun b!687412 () Bool)

(declare-fun res!452444 () Bool)

(assert (=> b!687412 (=> res!452444 e!391522)))

(declare-fun noDuplicate!881 (List!13091) Bool)

(assert (=> b!687412 (= res!452444 (not (noDuplicate!881 lt!315421)))))

(declare-fun b!687413 () Bool)

(declare-fun res!452441 () Bool)

(assert (=> b!687413 (=> (not res!452441) (not e!391513))))

(assert (=> b!687413 (= res!452441 (validKeyInArray!0 k0!2843))))

(declare-fun b!687414 () Bool)

(declare-fun e!391521 () Bool)

(assert (=> b!687414 (= e!391521 (contains!3634 lt!315421 k0!2843))))

(declare-fun b!687415 () Bool)

(declare-fun res!452454 () Bool)

(assert (=> b!687415 (=> (not res!452454) (not e!391513))))

(assert (=> b!687415 (= res!452454 (not (contains!3634 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687416 () Bool)

(declare-fun lt!315415 () Unit!24222)

(assert (=> b!687416 (= e!391518 lt!315415)))

(declare-fun lt!315416 () Unit!24222)

(assert (=> b!687416 (= lt!315416 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687416 (subseq!219 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39656 List!13091 List!13091 (_ BitVec 32)) Unit!24222)

(assert (=> b!687416 (= lt!315415 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!383 acc!681 (select (arr!18997 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687416 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!687417 () Bool)

(assert (=> b!687417 (= e!391516 (not (contains!3634 acc!681 k0!2843)))))

(declare-fun b!687418 () Bool)

(declare-fun res!452457 () Bool)

(assert (=> b!687418 (=> (not res!452457) (not e!391513))))

(assert (=> b!687418 (= res!452457 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19375 a!3626))))))

(declare-fun b!687419 () Bool)

(declare-fun res!452448 () Bool)

(assert (=> b!687419 (=> (not res!452448) (not e!391513))))

(assert (=> b!687419 (= res!452448 e!391514)))

(declare-fun res!452450 () Bool)

(assert (=> b!687419 (=> res!452450 e!391514)))

(declare-fun e!391519 () Bool)

(assert (=> b!687419 (= res!452450 e!391519)))

(declare-fun res!452445 () Bool)

(assert (=> b!687419 (=> (not res!452445) (not e!391519))))

(assert (=> b!687419 (= res!452445 (bvsgt from!3004 i!1382))))

(declare-fun b!687420 () Bool)

(declare-fun res!452442 () Bool)

(assert (=> b!687420 (=> (not res!452442) (not e!391513))))

(assert (=> b!687420 (= res!452442 (not (contains!3634 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687421 () Bool)

(assert (=> b!687421 (= e!391519 (contains!3634 acc!681 k0!2843))))

(declare-fun b!687422 () Bool)

(assert (=> b!687422 (= e!391522 e!391515)))

(declare-fun res!452452 () Bool)

(assert (=> b!687422 (=> (not res!452452) (not e!391515))))

(assert (=> b!687422 (= res!452452 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687423 () Bool)

(declare-fun res!452439 () Bool)

(assert (=> b!687423 (=> (not res!452439) (not e!391513))))

(assert (=> b!687423 (= res!452439 (noDuplicate!881 acc!681))))

(declare-fun b!687424 () Bool)

(declare-fun res!452459 () Bool)

(assert (=> b!687424 (=> res!452459 e!391522)))

(assert (=> b!687424 (= res!452459 e!391521)))

(declare-fun res!452456 () Bool)

(assert (=> b!687424 (=> (not res!452456) (not e!391521))))

(assert (=> b!687424 (= res!452456 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687425 () Bool)

(declare-fun res!452453 () Bool)

(assert (=> b!687425 (=> (not res!452453) (not e!391513))))

(assert (=> b!687425 (= res!452453 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19375 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!61478 res!452446) b!687423))

(assert (= (and b!687423 res!452439) b!687420))

(assert (= (and b!687420 res!452442) b!687415))

(assert (= (and b!687415 res!452454) b!687419))

(assert (= (and b!687419 res!452445) b!687421))

(assert (= (and b!687419 (not res!452450)) b!687406))

(assert (= (and b!687406 res!452447) b!687417))

(assert (= (and b!687419 res!452448) b!687410))

(assert (= (and b!687410 res!452440) b!687402))

(assert (= (and b!687402 res!452455) b!687418))

(assert (= (and b!687418 res!452457) b!687413))

(assert (= (and b!687413 res!452441) b!687404))

(assert (= (and b!687404 res!452458) b!687425))

(assert (= (and b!687425 res!452453) b!687408))

(assert (= (and b!687408 c!77849) b!687403))

(assert (= (and b!687408 (not c!77849)) b!687407))

(assert (= (and b!687408 c!77848) b!687416))

(assert (= (and b!687408 (not c!77848)) b!687411))

(assert (= (and b!687408 (not res!452449)) b!687412))

(assert (= (and b!687412 (not res!452444)) b!687405))

(assert (= (and b!687405 (not res!452443)) b!687401))

(assert (= (and b!687401 (not res!452451)) b!687424))

(assert (= (and b!687424 res!452456) b!687414))

(assert (= (and b!687424 (not res!452459)) b!687422))

(assert (= (and b!687422 res!452452) b!687409))

(declare-fun m!651481 () Bool)

(assert (=> b!687413 m!651481))

(declare-fun m!651483 () Bool)

(assert (=> b!687404 m!651483))

(declare-fun m!651485 () Bool)

(assert (=> b!687412 m!651485))

(declare-fun m!651487 () Bool)

(assert (=> b!687423 m!651487))

(declare-fun m!651489 () Bool)

(assert (=> start!61478 m!651489))

(declare-fun m!651491 () Bool)

(assert (=> b!687421 m!651491))

(declare-fun m!651493 () Bool)

(assert (=> b!687408 m!651493))

(declare-fun m!651495 () Bool)

(assert (=> b!687408 m!651495))

(declare-fun m!651497 () Bool)

(assert (=> b!687408 m!651497))

(declare-fun m!651499 () Bool)

(assert (=> b!687408 m!651499))

(declare-fun m!651501 () Bool)

(assert (=> b!687408 m!651501))

(declare-fun m!651503 () Bool)

(assert (=> b!687408 m!651503))

(assert (=> b!687408 m!651493))

(declare-fun m!651505 () Bool)

(assert (=> b!687408 m!651505))

(declare-fun m!651507 () Bool)

(assert (=> b!687408 m!651507))

(declare-fun m!651509 () Bool)

(assert (=> b!687408 m!651509))

(declare-fun m!651511 () Bool)

(assert (=> b!687408 m!651511))

(declare-fun m!651513 () Bool)

(assert (=> b!687408 m!651513))

(declare-fun m!651515 () Bool)

(assert (=> b!687408 m!651515))

(declare-fun m!651517 () Bool)

(assert (=> b!687408 m!651517))

(assert (=> b!687416 m!651507))

(assert (=> b!687416 m!651493))

(declare-fun m!651519 () Bool)

(assert (=> b!687416 m!651519))

(declare-fun m!651521 () Bool)

(assert (=> b!687416 m!651521))

(assert (=> b!687416 m!651493))

(assert (=> b!687416 m!651519))

(assert (=> b!687416 m!651497))

(assert (=> b!687416 m!651517))

(declare-fun m!651523 () Bool)

(assert (=> b!687414 m!651523))

(declare-fun m!651525 () Bool)

(assert (=> b!687402 m!651525))

(declare-fun m!651527 () Bool)

(assert (=> b!687410 m!651527))

(declare-fun m!651529 () Bool)

(assert (=> b!687401 m!651529))

(declare-fun m!651531 () Bool)

(assert (=> b!687420 m!651531))

(declare-fun m!651533 () Bool)

(assert (=> b!687415 m!651533))

(assert (=> b!687409 m!651523))

(assert (=> b!687417 m!651491))

(declare-fun m!651535 () Bool)

(assert (=> b!687403 m!651535))

(declare-fun m!651537 () Bool)

(assert (=> b!687405 m!651537))

(check-sat (not b!687402) (not b!687415) (not b!687403) (not b!687404) (not b!687405) (not b!687413) (not b!687420) (not b!687409) (not b!687416) (not b!687401) (not b!687408) (not b!687417) (not start!61478) (not b!687414) (not b!687423) (not b!687412) (not b!687410) (not b!687421))
(check-sat)
(get-model)

(declare-fun d!94949 () Bool)

(declare-fun res!452536 () Bool)

(declare-fun e!391569 () Bool)

(assert (=> d!94949 (=> res!452536 e!391569)))

(get-info :version)

(assert (=> d!94949 (= res!452536 ((_ is Nil!13088) acc!681))))

(assert (=> d!94949 (= (noDuplicate!881 acc!681) e!391569)))

(declare-fun b!687520 () Bool)

(declare-fun e!391570 () Bool)

(assert (=> b!687520 (= e!391569 e!391570)))

(declare-fun res!452537 () Bool)

(assert (=> b!687520 (=> (not res!452537) (not e!391570))))

(assert (=> b!687520 (= res!452537 (not (contains!3634 (t!19360 acc!681) (h!14132 acc!681))))))

(declare-fun b!687521 () Bool)

(assert (=> b!687521 (= e!391570 (noDuplicate!881 (t!19360 acc!681)))))

(assert (= (and d!94949 (not res!452536)) b!687520))

(assert (= (and b!687520 res!452537) b!687521))

(declare-fun m!651605 () Bool)

(assert (=> b!687520 m!651605))

(declare-fun m!651607 () Bool)

(assert (=> b!687521 m!651607))

(assert (=> b!687423 d!94949))

(declare-fun b!687546 () Bool)

(declare-fun e!391596 () Bool)

(declare-fun e!391595 () Bool)

(assert (=> b!687546 (= e!391596 e!391595)))

(declare-fun res!452559 () Bool)

(assert (=> b!687546 (=> (not res!452559) (not e!391595))))

(declare-fun e!391593 () Bool)

(assert (=> b!687546 (= res!452559 (not e!391593))))

(declare-fun res!452558 () Bool)

(assert (=> b!687546 (=> (not res!452558) (not e!391593))))

(assert (=> b!687546 (= res!452558 (validKeyInArray!0 (select (arr!18997 a!3626) from!3004)))))

(declare-fun b!687547 () Bool)

(declare-fun e!391594 () Bool)

(assert (=> b!687547 (= e!391595 e!391594)))

(declare-fun c!77861 () Bool)

(assert (=> b!687547 (= c!77861 (validKeyInArray!0 (select (arr!18997 a!3626) from!3004)))))

(declare-fun d!94953 () Bool)

(declare-fun res!452560 () Bool)

(assert (=> d!94953 (=> res!452560 e!391596)))

(assert (=> d!94953 (= res!452560 (bvsge from!3004 (size!19375 a!3626)))))

(assert (=> d!94953 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!391596)))

(declare-fun b!687548 () Bool)

(declare-fun call!34157 () Bool)

(assert (=> b!687548 (= e!391594 call!34157)))

(declare-fun b!687549 () Bool)

(assert (=> b!687549 (= e!391593 (contains!3634 acc!681 (select (arr!18997 a!3626) from!3004)))))

(declare-fun b!687550 () Bool)

(assert (=> b!687550 (= e!391594 call!34157)))

(declare-fun bm!34154 () Bool)

(assert (=> bm!34154 (= call!34157 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77861 (Cons!13087 (select (arr!18997 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!94953 (not res!452560)) b!687546))

(assert (= (and b!687546 res!452558) b!687549))

(assert (= (and b!687546 res!452559) b!687547))

(assert (= (and b!687547 c!77861) b!687550))

(assert (= (and b!687547 (not c!77861)) b!687548))

(assert (= (or b!687550 b!687548) bm!34154))

(assert (=> b!687546 m!651493))

(assert (=> b!687546 m!651493))

(assert (=> b!687546 m!651505))

(assert (=> b!687547 m!651493))

(assert (=> b!687547 m!651493))

(assert (=> b!687547 m!651505))

(assert (=> b!687549 m!651493))

(assert (=> b!687549 m!651493))

(declare-fun m!651621 () Bool)

(assert (=> b!687549 m!651621))

(assert (=> bm!34154 m!651493))

(declare-fun m!651623 () Bool)

(assert (=> bm!34154 m!651623))

(assert (=> b!687402 d!94953))

(declare-fun d!94965 () Bool)

(declare-fun lt!315463 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!301 (List!13091) (InoxSet (_ BitVec 64)))

(assert (=> d!94965 (= lt!315463 (select (content!301 lt!315421) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391609 () Bool)

(assert (=> d!94965 (= lt!315463 e!391609)))

(declare-fun res!452568 () Bool)

(assert (=> d!94965 (=> (not res!452568) (not e!391609))))

(assert (=> d!94965 (= res!452568 ((_ is Cons!13087) lt!315421))))

(assert (=> d!94965 (= (contains!3634 lt!315421 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315463)))

(declare-fun b!687565 () Bool)

(declare-fun e!391608 () Bool)

(assert (=> b!687565 (= e!391609 e!391608)))

(declare-fun res!452567 () Bool)

(assert (=> b!687565 (=> res!452567 e!391608)))

(assert (=> b!687565 (= res!452567 (= (h!14132 lt!315421) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687566 () Bool)

(assert (=> b!687566 (= e!391608 (contains!3634 (t!19360 lt!315421) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94965 res!452568) b!687565))

(assert (= (and b!687565 (not res!452567)) b!687566))

(declare-fun m!651633 () Bool)

(assert (=> d!94965 m!651633))

(declare-fun m!651635 () Bool)

(assert (=> d!94965 m!651635))

(declare-fun m!651637 () Bool)

(assert (=> b!687566 m!651637))

(assert (=> b!687401 d!94965))

(declare-fun d!94973 () Bool)

(declare-fun res!452569 () Bool)

(declare-fun e!391610 () Bool)

(assert (=> d!94973 (=> res!452569 e!391610)))

(assert (=> d!94973 (= res!452569 ((_ is Nil!13088) lt!315421))))

(assert (=> d!94973 (= (noDuplicate!881 lt!315421) e!391610)))

(declare-fun b!687567 () Bool)

(declare-fun e!391611 () Bool)

(assert (=> b!687567 (= e!391610 e!391611)))

(declare-fun res!452570 () Bool)

(assert (=> b!687567 (=> (not res!452570) (not e!391611))))

(assert (=> b!687567 (= res!452570 (not (contains!3634 (t!19360 lt!315421) (h!14132 lt!315421))))))

(declare-fun b!687568 () Bool)

(assert (=> b!687568 (= e!391611 (noDuplicate!881 (t!19360 lt!315421)))))

(assert (= (and d!94973 (not res!452569)) b!687567))

(assert (= (and b!687567 res!452570) b!687568))

(declare-fun m!651639 () Bool)

(assert (=> b!687567 m!651639))

(declare-fun m!651641 () Bool)

(assert (=> b!687568 m!651641))

(assert (=> b!687412 d!94973))

(declare-fun d!94975 () Bool)

(declare-fun lt!315464 () Bool)

(assert (=> d!94975 (= lt!315464 (select (content!301 acc!681) k0!2843))))

(declare-fun e!391615 () Bool)

(assert (=> d!94975 (= lt!315464 e!391615)))

(declare-fun res!452574 () Bool)

(assert (=> d!94975 (=> (not res!452574) (not e!391615))))

(assert (=> d!94975 (= res!452574 ((_ is Cons!13087) acc!681))))

(assert (=> d!94975 (= (contains!3634 acc!681 k0!2843) lt!315464)))

(declare-fun b!687571 () Bool)

(declare-fun e!391614 () Bool)

(assert (=> b!687571 (= e!391615 e!391614)))

(declare-fun res!452573 () Bool)

(assert (=> b!687571 (=> res!452573 e!391614)))

(assert (=> b!687571 (= res!452573 (= (h!14132 acc!681) k0!2843))))

(declare-fun b!687572 () Bool)

(assert (=> b!687572 (= e!391614 (contains!3634 (t!19360 acc!681) k0!2843))))

(assert (= (and d!94975 res!452574) b!687571))

(assert (= (and b!687571 (not res!452573)) b!687572))

(declare-fun m!651643 () Bool)

(assert (=> d!94975 m!651643))

(declare-fun m!651645 () Bool)

(assert (=> d!94975 m!651645))

(declare-fun m!651647 () Bool)

(assert (=> b!687572 m!651647))

(assert (=> b!687421 d!94975))

(declare-fun d!94977 () Bool)

(declare-fun lt!315465 () Bool)

(assert (=> d!94977 (= lt!315465 (select (content!301 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391617 () Bool)

(assert (=> d!94977 (= lt!315465 e!391617)))

(declare-fun res!452576 () Bool)

(assert (=> d!94977 (=> (not res!452576) (not e!391617))))

(assert (=> d!94977 (= res!452576 ((_ is Cons!13087) acc!681))))

(assert (=> d!94977 (= (contains!3634 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315465)))

(declare-fun b!687573 () Bool)

(declare-fun e!391616 () Bool)

(assert (=> b!687573 (= e!391617 e!391616)))

(declare-fun res!452575 () Bool)

(assert (=> b!687573 (=> res!452575 e!391616)))

(assert (=> b!687573 (= res!452575 (= (h!14132 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687574 () Bool)

(assert (=> b!687574 (= e!391616 (contains!3634 (t!19360 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94977 res!452576) b!687573))

(assert (= (and b!687573 (not res!452575)) b!687574))

(assert (=> d!94977 m!651643))

(declare-fun m!651649 () Bool)

(assert (=> d!94977 m!651649))

(declare-fun m!651651 () Bool)

(assert (=> b!687574 m!651651))

(assert (=> b!687415 d!94977))

(declare-fun d!94979 () Bool)

(declare-fun res!452584 () Bool)

(declare-fun e!391627 () Bool)

(assert (=> d!94979 (=> res!452584 e!391627)))

(assert (=> d!94979 (= res!452584 (= (select (arr!18997 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94979 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!391627)))

(declare-fun b!687586 () Bool)

(declare-fun e!391628 () Bool)

(assert (=> b!687586 (= e!391627 e!391628)))

(declare-fun res!452585 () Bool)

(assert (=> b!687586 (=> (not res!452585) (not e!391628))))

(assert (=> b!687586 (= res!452585 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19375 a!3626)))))

(declare-fun b!687587 () Bool)

(assert (=> b!687587 (= e!391628 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94979 (not res!452584)) b!687586))

(assert (= (and b!687586 res!452585) b!687587))

(declare-fun m!651673 () Bool)

(assert (=> d!94979 m!651673))

(declare-fun m!651675 () Bool)

(assert (=> b!687587 m!651675))

(assert (=> b!687404 d!94979))

(declare-fun d!94987 () Bool)

(assert (=> d!94987 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!315472 () Unit!24222)

(declare-fun choose!13 (array!39656 (_ BitVec 64) (_ BitVec 32)) Unit!24222)

(assert (=> d!94987 (= lt!315472 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!94987 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94987 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!315472)))

(declare-fun bs!20164 () Bool)

(assert (= bs!20164 d!94987))

(assert (=> bs!20164 m!651483))

(declare-fun m!651681 () Bool)

(assert (=> bs!20164 m!651681))

(assert (=> b!687403 d!94987))

(declare-fun d!94991 () Bool)

(declare-fun lt!315473 () Bool)

(assert (=> d!94991 (= lt!315473 (select (content!301 lt!315421) k0!2843))))

(declare-fun e!391644 () Bool)

(assert (=> d!94991 (= lt!315473 e!391644)))

(declare-fun res!452601 () Bool)

(assert (=> d!94991 (=> (not res!452601) (not e!391644))))

(assert (=> d!94991 (= res!452601 ((_ is Cons!13087) lt!315421))))

(assert (=> d!94991 (= (contains!3634 lt!315421 k0!2843) lt!315473)))

(declare-fun b!687602 () Bool)

(declare-fun e!391643 () Bool)

(assert (=> b!687602 (= e!391644 e!391643)))

(declare-fun res!452600 () Bool)

(assert (=> b!687602 (=> res!452600 e!391643)))

(assert (=> b!687602 (= res!452600 (= (h!14132 lt!315421) k0!2843))))

(declare-fun b!687603 () Bool)

(assert (=> b!687603 (= e!391643 (contains!3634 (t!19360 lt!315421) k0!2843))))

(assert (= (and d!94991 res!452601) b!687602))

(assert (= (and b!687602 (not res!452600)) b!687603))

(assert (=> d!94991 m!651633))

(declare-fun m!651683 () Bool)

(assert (=> d!94991 m!651683))

(declare-fun m!651685 () Bool)

(assert (=> b!687603 m!651685))

(assert (=> b!687414 d!94991))

(declare-fun d!94993 () Bool)

(assert (=> d!94993 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687413 d!94993))

(assert (=> b!687417 d!94975))

(declare-fun d!94997 () Bool)

(declare-fun lt!315474 () Bool)

(assert (=> d!94997 (= lt!315474 (select (content!301 lt!315421) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391650 () Bool)

(assert (=> d!94997 (= lt!315474 e!391650)))

(declare-fun res!452607 () Bool)

(assert (=> d!94997 (=> (not res!452607) (not e!391650))))

(assert (=> d!94997 (= res!452607 ((_ is Cons!13087) lt!315421))))

(assert (=> d!94997 (= (contains!3634 lt!315421 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315474)))

(declare-fun b!687608 () Bool)

(declare-fun e!391649 () Bool)

(assert (=> b!687608 (= e!391650 e!391649)))

(declare-fun res!452606 () Bool)

(assert (=> b!687608 (=> res!452606 e!391649)))

(assert (=> b!687608 (= res!452606 (= (h!14132 lt!315421) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687609 () Bool)

(assert (=> b!687609 (= e!391649 (contains!3634 (t!19360 lt!315421) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94997 res!452607) b!687608))

(assert (= (and b!687608 (not res!452606)) b!687609))

(assert (=> d!94997 m!651633))

(declare-fun m!651691 () Bool)

(assert (=> d!94997 m!651691))

(declare-fun m!651693 () Bool)

(assert (=> b!687609 m!651693))

(assert (=> b!687405 d!94997))

(declare-fun d!94999 () Bool)

(assert (=> d!94999 (= ($colon$colon!383 acc!681 (select (arr!18997 a!3626) from!3004)) (Cons!13087 (select (arr!18997 a!3626) from!3004) acc!681))))

(assert (=> b!687416 d!94999))

(declare-fun b!687633 () Bool)

(declare-fun e!391671 () Bool)

(assert (=> b!687633 (= e!391671 (subseq!219 acc!681 (t!19360 acc!681)))))

(declare-fun b!687630 () Bool)

(declare-fun e!391669 () Bool)

(declare-fun e!391668 () Bool)

(assert (=> b!687630 (= e!391669 e!391668)))

(declare-fun res!452622 () Bool)

(assert (=> b!687630 (=> (not res!452622) (not e!391668))))

(assert (=> b!687630 (= res!452622 ((_ is Cons!13087) acc!681))))

(declare-fun d!95001 () Bool)

(declare-fun res!452623 () Bool)

(assert (=> d!95001 (=> res!452623 e!391669)))

(assert (=> d!95001 (= res!452623 ((_ is Nil!13088) acc!681))))

(assert (=> d!95001 (= (subseq!219 acc!681 acc!681) e!391669)))

(declare-fun b!687631 () Bool)

(assert (=> b!687631 (= e!391668 e!391671)))

(declare-fun res!452620 () Bool)

(assert (=> b!687631 (=> res!452620 e!391671)))

(declare-fun e!391670 () Bool)

(assert (=> b!687631 (= res!452620 e!391670)))

(declare-fun res!452621 () Bool)

(assert (=> b!687631 (=> (not res!452621) (not e!391670))))

(assert (=> b!687631 (= res!452621 (= (h!14132 acc!681) (h!14132 acc!681)))))

(declare-fun b!687632 () Bool)

(assert (=> b!687632 (= e!391670 (subseq!219 (t!19360 acc!681) (t!19360 acc!681)))))

(assert (= (and d!95001 (not res!452623)) b!687630))

(assert (= (and b!687630 res!452622) b!687631))

(assert (= (and b!687631 res!452621) b!687632))

(assert (= (and b!687631 (not res!452620)) b!687633))

(declare-fun m!651705 () Bool)

(assert (=> b!687633 m!651705))

(declare-fun m!651707 () Bool)

(assert (=> b!687632 m!651707))

(assert (=> b!687416 d!95001))

(declare-fun d!95009 () Bool)

(assert (=> d!95009 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315486 () Unit!24222)

(declare-fun choose!80 (array!39656 List!13091 List!13091 (_ BitVec 32)) Unit!24222)

(assert (=> d!95009 (= lt!315486 (choose!80 a!3626 ($colon$colon!383 acc!681 (select (arr!18997 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!95009 (bvslt (size!19375 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95009 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!383 acc!681 (select (arr!18997 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!315486)))

(declare-fun bs!20167 () Bool)

(assert (= bs!20167 d!95009))

(assert (=> bs!20167 m!651507))

(assert (=> bs!20167 m!651519))

(declare-fun m!651729 () Bool)

(assert (=> bs!20167 m!651729))

(assert (=> b!687416 d!95009))

(declare-fun d!95017 () Bool)

(assert (=> d!95017 (subseq!219 acc!681 acc!681)))

(declare-fun lt!315492 () Unit!24222)

(declare-fun choose!36 (List!13091) Unit!24222)

(assert (=> d!95017 (= lt!315492 (choose!36 acc!681))))

(assert (=> d!95017 (= (lemmaListSubSeqRefl!0 acc!681) lt!315492)))

(declare-fun bs!20169 () Bool)

(assert (= bs!20169 d!95017))

(assert (=> bs!20169 m!651517))

(declare-fun m!651733 () Bool)

(assert (=> bs!20169 m!651733))

(assert (=> b!687416 d!95017))

(declare-fun b!687656 () Bool)

(declare-fun e!391692 () Bool)

(declare-fun e!391691 () Bool)

(assert (=> b!687656 (= e!391692 e!391691)))

(declare-fun res!452637 () Bool)

(assert (=> b!687656 (=> (not res!452637) (not e!391691))))

(declare-fun e!391689 () Bool)

(assert (=> b!687656 (= res!452637 (not e!391689))))

(declare-fun res!452636 () Bool)

(assert (=> b!687656 (=> (not res!452636) (not e!391689))))

(assert (=> b!687656 (= res!452636 (validKeyInArray!0 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687657 () Bool)

(declare-fun e!391690 () Bool)

(assert (=> b!687657 (= e!391691 e!391690)))

(declare-fun c!77877 () Bool)

(assert (=> b!687657 (= c!77877 (validKeyInArray!0 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95021 () Bool)

(declare-fun res!452638 () Bool)

(assert (=> d!95021 (=> res!452638 e!391692)))

(assert (=> d!95021 (= res!452638 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19375 a!3626)))))

(assert (=> d!95021 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391692)))

(declare-fun b!687658 () Bool)

(declare-fun call!34167 () Bool)

(assert (=> b!687658 (= e!391690 call!34167)))

(declare-fun b!687659 () Bool)

(assert (=> b!687659 (= e!391689 (contains!3634 acc!681 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687660 () Bool)

(assert (=> b!687660 (= e!391690 call!34167)))

(declare-fun bm!34164 () Bool)

(assert (=> bm!34164 (= call!34167 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77877 (Cons!13087 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(assert (= (and d!95021 (not res!452638)) b!687656))

(assert (= (and b!687656 res!452636) b!687659))

(assert (= (and b!687656 res!452637) b!687657))

(assert (= (and b!687657 c!77877) b!687660))

(assert (= (and b!687657 (not c!77877)) b!687658))

(assert (= (or b!687660 b!687658) bm!34164))

(declare-fun m!651735 () Bool)

(assert (=> b!687656 m!651735))

(assert (=> b!687656 m!651735))

(declare-fun m!651737 () Bool)

(assert (=> b!687656 m!651737))

(assert (=> b!687657 m!651735))

(assert (=> b!687657 m!651735))

(assert (=> b!687657 m!651737))

(assert (=> b!687659 m!651735))

(assert (=> b!687659 m!651735))

(declare-fun m!651739 () Bool)

(assert (=> b!687659 m!651739))

(assert (=> bm!34164 m!651735))

(declare-fun m!651741 () Bool)

(assert (=> bm!34164 m!651741))

(assert (=> b!687416 d!95021))

(declare-fun d!95027 () Bool)

(assert (=> d!95027 (= (array_inv!14771 a!3626) (bvsge (size!19375 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61478 d!95027))

(declare-fun b!687671 () Bool)

(declare-fun e!391704 () Bool)

(declare-fun e!391703 () Bool)

(assert (=> b!687671 (= e!391704 e!391703)))

(declare-fun res!452646 () Bool)

(assert (=> b!687671 (=> (not res!452646) (not e!391703))))

(declare-fun e!391701 () Bool)

(assert (=> b!687671 (= res!452646 (not e!391701))))

(declare-fun res!452645 () Bool)

(assert (=> b!687671 (=> (not res!452645) (not e!391701))))

(assert (=> b!687671 (= res!452645 (validKeyInArray!0 (select (arr!18997 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687672 () Bool)

(declare-fun e!391702 () Bool)

(assert (=> b!687672 (= e!391703 e!391702)))

(declare-fun c!77880 () Bool)

(assert (=> b!687672 (= c!77880 (validKeyInArray!0 (select (arr!18997 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95029 () Bool)

(declare-fun res!452647 () Bool)

(assert (=> d!95029 (=> res!452647 e!391704)))

(assert (=> d!95029 (= res!452647 (bvsge #b00000000000000000000000000000000 (size!19375 a!3626)))))

(assert (=> d!95029 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13088) e!391704)))

(declare-fun b!687673 () Bool)

(declare-fun call!34170 () Bool)

(assert (=> b!687673 (= e!391702 call!34170)))

(declare-fun b!687674 () Bool)

(assert (=> b!687674 (= e!391701 (contains!3634 Nil!13088 (select (arr!18997 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687675 () Bool)

(assert (=> b!687675 (= e!391702 call!34170)))

(declare-fun bm!34167 () Bool)

(assert (=> bm!34167 (= call!34170 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77880 (Cons!13087 (select (arr!18997 a!3626) #b00000000000000000000000000000000) Nil!13088) Nil!13088)))))

(assert (= (and d!95029 (not res!452647)) b!687671))

(assert (= (and b!687671 res!452645) b!687674))

(assert (= (and b!687671 res!452646) b!687672))

(assert (= (and b!687672 c!77880) b!687675))

(assert (= (and b!687672 (not c!77880)) b!687673))

(assert (= (or b!687675 b!687673) bm!34167))

(assert (=> b!687671 m!651673))

(assert (=> b!687671 m!651673))

(declare-fun m!651753 () Bool)

(assert (=> b!687671 m!651753))

(assert (=> b!687672 m!651673))

(assert (=> b!687672 m!651673))

(assert (=> b!687672 m!651753))

(assert (=> b!687674 m!651673))

(assert (=> b!687674 m!651673))

(declare-fun m!651755 () Bool)

(assert (=> b!687674 m!651755))

(assert (=> bm!34167 m!651673))

(declare-fun m!651757 () Bool)

(assert (=> bm!34167 m!651757))

(assert (=> b!687410 d!95029))

(assert (=> b!687409 d!94991))

(declare-fun d!95037 () Bool)

(declare-fun lt!315493 () Bool)

(assert (=> d!95037 (= lt!315493 (select (content!301 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391706 () Bool)

(assert (=> d!95037 (= lt!315493 e!391706)))

(declare-fun res!452649 () Bool)

(assert (=> d!95037 (=> (not res!452649) (not e!391706))))

(assert (=> d!95037 (= res!452649 ((_ is Cons!13087) acc!681))))

(assert (=> d!95037 (= (contains!3634 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315493)))

(declare-fun b!687676 () Bool)

(declare-fun e!391705 () Bool)

(assert (=> b!687676 (= e!391706 e!391705)))

(declare-fun res!452648 () Bool)

(assert (=> b!687676 (=> res!452648 e!391705)))

(assert (=> b!687676 (= res!452648 (= (h!14132 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687677 () Bool)

(assert (=> b!687677 (= e!391705 (contains!3634 (t!19360 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95037 res!452649) b!687676))

(assert (= (and b!687676 (not res!452648)) b!687677))

(assert (=> d!95037 m!651643))

(declare-fun m!651759 () Bool)

(assert (=> d!95037 m!651759))

(declare-fun m!651761 () Bool)

(assert (=> b!687677 m!651761))

(assert (=> b!687420 d!95037))

(assert (=> b!687408 d!95001))

(declare-fun d!95039 () Bool)

(declare-fun res!452650 () Bool)

(declare-fun e!391707 () Bool)

(assert (=> d!95039 (=> res!452650 e!391707)))

(assert (=> d!95039 (= res!452650 (= (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!95039 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391707)))

(declare-fun b!687678 () Bool)

(declare-fun e!391708 () Bool)

(assert (=> b!687678 (= e!391707 e!391708)))

(declare-fun res!452651 () Bool)

(assert (=> b!687678 (=> (not res!452651) (not e!391708))))

(assert (=> b!687678 (= res!452651 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19375 a!3626)))))

(declare-fun b!687679 () Bool)

(assert (=> b!687679 (= e!391708 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95039 (not res!452650)) b!687678))

(assert (= (and b!687678 res!452651) b!687679))

(assert (=> d!95039 m!651735))

(declare-fun m!651763 () Bool)

(assert (=> b!687679 m!651763))

(assert (=> b!687408 d!95039))

(declare-fun d!95041 () Bool)

(assert (=> d!95041 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315421)))

(declare-fun lt!315501 () Unit!24222)

(declare-fun choose!66 (array!39656 (_ BitVec 64) (_ BitVec 32) List!13091 List!13091) Unit!24222)

(assert (=> d!95041 (= lt!315501 (choose!66 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315421))))

(assert (=> d!95041 (bvslt (size!19375 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95041 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315421) lt!315501)))

(declare-fun bs!20171 () Bool)

(assert (= bs!20171 d!95041))

(assert (=> bs!20171 m!651509))

(declare-fun m!651777 () Bool)

(assert (=> bs!20171 m!651777))

(assert (=> b!687408 d!95041))

(declare-fun b!687701 () Bool)

(declare-fun e!391732 () Bool)

(declare-fun e!391731 () Bool)

(assert (=> b!687701 (= e!391732 e!391731)))

(declare-fun res!452672 () Bool)

(assert (=> b!687701 (=> (not res!452672) (not e!391731))))

(declare-fun e!391729 () Bool)

(assert (=> b!687701 (= res!452672 (not e!391729))))

(declare-fun res!452671 () Bool)

(assert (=> b!687701 (=> (not res!452671) (not e!391729))))

(assert (=> b!687701 (= res!452671 (validKeyInArray!0 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687702 () Bool)

(declare-fun e!391730 () Bool)

(assert (=> b!687702 (= e!391731 e!391730)))

(declare-fun c!77882 () Bool)

(assert (=> b!687702 (= c!77882 (validKeyInArray!0 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95050 () Bool)

(declare-fun res!452673 () Bool)

(assert (=> d!95050 (=> res!452673 e!391732)))

(assert (=> d!95050 (= res!452673 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19375 a!3626)))))

(assert (=> d!95050 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315421) e!391732)))

(declare-fun b!687703 () Bool)

(declare-fun call!34172 () Bool)

(assert (=> b!687703 (= e!391730 call!34172)))

(declare-fun b!687704 () Bool)

(assert (=> b!687704 (= e!391729 (contains!3634 lt!315421 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687705 () Bool)

(assert (=> b!687705 (= e!391730 call!34172)))

(declare-fun bm!34169 () Bool)

(assert (=> bm!34169 (= call!34172 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77882 (Cons!13087 (select (arr!18997 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315421) lt!315421)))))

(assert (= (and d!95050 (not res!452673)) b!687701))

(assert (= (and b!687701 res!452671) b!687704))

(assert (= (and b!687701 res!452672) b!687702))

(assert (= (and b!687702 c!77882) b!687705))

(assert (= (and b!687702 (not c!77882)) b!687703))

(assert (= (or b!687705 b!687703) bm!34169))

(assert (=> b!687701 m!651735))

(assert (=> b!687701 m!651735))

(assert (=> b!687701 m!651737))

(assert (=> b!687702 m!651735))

(assert (=> b!687702 m!651735))

(assert (=> b!687702 m!651737))

(assert (=> b!687704 m!651735))

(assert (=> b!687704 m!651735))

(declare-fun m!651785 () Bool)

(assert (=> b!687704 m!651785))

(assert (=> bm!34169 m!651735))

(declare-fun m!651787 () Bool)

(assert (=> bm!34169 m!651787))

(assert (=> b!687408 d!95050))

(declare-fun d!95055 () Bool)

(assert (=> d!95055 (= (-!184 ($colon$colon!383 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!315508 () Unit!24222)

(declare-fun choose!16 ((_ BitVec 64) List!13091) Unit!24222)

(assert (=> d!95055 (= lt!315508 (choose!16 k0!2843 acc!681))))

(assert (=> d!95055 (not (contains!3634 acc!681 k0!2843))))

(assert (=> d!95055 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!315508)))

(declare-fun bs!20173 () Bool)

(assert (= bs!20173 d!95055))

(assert (=> bs!20173 m!651501))

(assert (=> bs!20173 m!651501))

(declare-fun m!651799 () Bool)

(assert (=> bs!20173 m!651799))

(declare-fun m!651801 () Bool)

(assert (=> bs!20173 m!651801))

(assert (=> bs!20173 m!651491))

(assert (=> b!687408 d!95055))

(assert (=> b!687408 d!95017))

(declare-fun d!95067 () Bool)

(assert (=> d!95067 (= (validKeyInArray!0 (select (arr!18997 a!3626) from!3004)) (and (not (= (select (arr!18997 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18997 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687408 d!95067))

(declare-fun d!95069 () Bool)

(assert (=> d!95069 (= ($colon$colon!383 acc!681 k0!2843) (Cons!13087 k0!2843 acc!681))))

(assert (=> b!687408 d!95069))

(assert (=> b!687408 d!95021))

(declare-fun d!95071 () Bool)

(declare-fun res!452685 () Bool)

(declare-fun e!391745 () Bool)

(assert (=> d!95071 (=> res!452685 e!391745)))

(assert (=> d!95071 (= res!452685 (= (select (arr!18997 (array!39657 (store (arr!18997 a!3626) i!1382 k0!2843) (size!19375 a!3626))) from!3004) k0!2843))))

(assert (=> d!95071 (= (arrayContainsKey!0 (array!39657 (store (arr!18997 a!3626) i!1382 k0!2843) (size!19375 a!3626)) k0!2843 from!3004) e!391745)))

(declare-fun b!687719 () Bool)

(declare-fun e!391746 () Bool)

(assert (=> b!687719 (= e!391745 e!391746)))

(declare-fun res!452686 () Bool)

(assert (=> b!687719 (=> (not res!452686) (not e!391746))))

(assert (=> b!687719 (= res!452686 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19375 (array!39657 (store (arr!18997 a!3626) i!1382 k0!2843) (size!19375 a!3626)))))))

(declare-fun b!687720 () Bool)

(assert (=> b!687720 (= e!391746 (arrayContainsKey!0 (array!39657 (store (arr!18997 a!3626) i!1382 k0!2843) (size!19375 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95071 (not res!452685)) b!687719))

(assert (= (and b!687719 res!452686) b!687720))

(declare-fun m!651807 () Bool)

(assert (=> d!95071 m!651807))

(declare-fun m!651809 () Bool)

(assert (=> b!687720 m!651809))

(assert (=> b!687408 d!95071))

(declare-fun b!687747 () Bool)

(declare-fun e!391771 () List!13091)

(declare-fun call!34176 () List!13091)

(assert (=> b!687747 (= e!391771 (Cons!13087 (h!14132 lt!315421) call!34176))))

(declare-fun bm!34173 () Bool)

(assert (=> bm!34173 (= call!34176 (-!184 (t!19360 lt!315421) k0!2843))))

(declare-fun b!687748 () Bool)

(declare-fun e!391772 () List!13091)

(assert (=> b!687748 (= e!391772 e!391771)))

(declare-fun c!77889 () Bool)

(assert (=> b!687748 (= c!77889 (= k0!2843 (h!14132 lt!315421)))))

(declare-fun d!95075 () Bool)

(declare-fun e!391770 () Bool)

(assert (=> d!95075 e!391770))

(declare-fun res!452705 () Bool)

(assert (=> d!95075 (=> (not res!452705) (not e!391770))))

(declare-fun lt!315518 () List!13091)

(declare-fun size!19379 (List!13091) Int)

(assert (=> d!95075 (= res!452705 (<= (size!19379 lt!315518) (size!19379 lt!315421)))))

(assert (=> d!95075 (= lt!315518 e!391772)))

(declare-fun c!77888 () Bool)

(assert (=> d!95075 (= c!77888 ((_ is Cons!13087) lt!315421))))

(assert (=> d!95075 (= (-!184 lt!315421 k0!2843) lt!315518)))

(declare-fun b!687749 () Bool)

(assert (=> b!687749 (= e!391771 call!34176)))

(declare-fun b!687750 () Bool)

(assert (=> b!687750 (= e!391770 (= (content!301 lt!315518) ((_ map and) (content!301 lt!315421) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(declare-fun b!687751 () Bool)

(assert (=> b!687751 (= e!391772 Nil!13088)))

(assert (= (and d!95075 c!77888) b!687748))

(assert (= (and d!95075 (not c!77888)) b!687751))

(assert (= (and b!687748 c!77889) b!687749))

(assert (= (and b!687748 (not c!77889)) b!687747))

(assert (= (or b!687749 b!687747) bm!34173))

(assert (= (and d!95075 res!452705) b!687750))

(declare-fun m!651831 () Bool)

(assert (=> bm!34173 m!651831))

(declare-fun m!651835 () Bool)

(assert (=> d!95075 m!651835))

(declare-fun m!651839 () Bool)

(assert (=> d!95075 m!651839))

(declare-fun m!651841 () Bool)

(assert (=> b!687750 m!651841))

(assert (=> b!687750 m!651633))

(declare-fun m!651843 () Bool)

(assert (=> b!687750 m!651843))

(assert (=> b!687408 d!95075))

(check-sat (not b!687520) (not b!687521) (not b!687632) (not b!687679) (not b!687701) (not b!687659) (not d!94987) (not d!94977) (not d!94965) (not bm!34167) (not b!687566) (not b!687609) (not b!687547) (not b!687603) (not bm!34173) (not b!687720) (not bm!34164) (not d!94997) (not b!687674) (not b!687567) (not d!95075) (not b!687574) (not d!95055) (not b!687633) (not d!94975) (not b!687656) (not b!687704) (not b!687546) (not bm!34169) (not d!95009) (not b!687677) (not b!687587) (not d!95041) (not b!687671) (not b!687572) (not b!687750) (not b!687657) (not d!95037) (not b!687672) (not b!687702) (not b!687549) (not bm!34154) (not d!94991) (not d!95017) (not b!687568))
(check-sat)
