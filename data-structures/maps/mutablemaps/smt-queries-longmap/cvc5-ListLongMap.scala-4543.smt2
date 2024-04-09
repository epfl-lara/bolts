; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63292 () Bool)

(assert start!63292)

(declare-fun b!712513 () Bool)

(declare-fun res!475873 () Bool)

(declare-fun e!400803 () Bool)

(assert (=> b!712513 (=> (not res!475873) (not e!400803))))

(declare-datatypes ((List!13435 0))(
  ( (Nil!13432) (Cons!13431 (h!14476 (_ BitVec 64)) (t!19755 List!13435)) )
))
(declare-fun lt!318550 () List!13435)

(declare-fun noDuplicate!1225 (List!13435) Bool)

(assert (=> b!712513 (= res!475873 (noDuplicate!1225 lt!318550))))

(declare-fun b!712514 () Bool)

(declare-fun res!475866 () Bool)

(declare-fun e!400801 () Bool)

(assert (=> b!712514 (=> (not res!475866) (not e!400801))))

(declare-datatypes ((array!40407 0))(
  ( (array!40408 (arr!19341 (Array (_ BitVec 32) (_ BitVec 64))) (size!19750 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40407)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!712514 (= res!475866 (validKeyInArray!0 (select (arr!19341 a!3591) from!2969)))))

(declare-fun b!712515 () Bool)

(declare-fun res!475863 () Bool)

(assert (=> b!712515 (=> (not res!475863) (not e!400801))))

(declare-fun acc!652 () List!13435)

(declare-fun contains!3978 (List!13435 (_ BitVec 64)) Bool)

(assert (=> b!712515 (= res!475863 (not (contains!3978 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712516 () Bool)

(declare-fun res!475849 () Bool)

(assert (=> b!712516 (=> (not res!475849) (not e!400801))))

(assert (=> b!712516 (= res!475849 (not (contains!3978 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712517 () Bool)

(declare-fun res!475852 () Bool)

(assert (=> b!712517 (=> (not res!475852) (not e!400801))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!712517 (= res!475852 (validKeyInArray!0 k!2824))))

(declare-fun b!712518 () Bool)

(declare-fun res!475850 () Bool)

(assert (=> b!712518 (=> (not res!475850) (not e!400803))))

(declare-fun lt!318549 () List!13435)

(assert (=> b!712518 (= res!475850 (not (contains!3978 lt!318549 k!2824)))))

(declare-fun b!712519 () Bool)

(declare-fun res!475864 () Bool)

(assert (=> b!712519 (=> (not res!475864) (not e!400801))))

(declare-fun arrayNoDuplicates!0 (array!40407 (_ BitVec 32) List!13435) Bool)

(assert (=> b!712519 (= res!475864 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!712520 () Bool)

(declare-fun res!475854 () Bool)

(assert (=> b!712520 (=> (not res!475854) (not e!400801))))

(declare-fun newAcc!49 () List!13435)

(assert (=> b!712520 (= res!475854 (noDuplicate!1225 newAcc!49))))

(declare-fun b!712521 () Bool)

(assert (=> b!712521 (= e!400801 e!400803)))

(declare-fun res!475847 () Bool)

(assert (=> b!712521 (=> (not res!475847) (not e!400803))))

(assert (=> b!712521 (= res!475847 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!532 (List!13435 (_ BitVec 64)) List!13435)

(assert (=> b!712521 (= lt!318550 ($colon$colon!532 newAcc!49 (select (arr!19341 a!3591) from!2969)))))

(assert (=> b!712521 (= lt!318549 ($colon$colon!532 acc!652 (select (arr!19341 a!3591) from!2969)))))

(declare-fun b!712523 () Bool)

(declare-fun res!475853 () Bool)

(assert (=> b!712523 (=> (not res!475853) (not e!400803))))

(assert (=> b!712523 (= res!475853 (contains!3978 lt!318550 k!2824))))

(declare-fun b!712524 () Bool)

(declare-fun res!475865 () Bool)

(assert (=> b!712524 (=> (not res!475865) (not e!400803))))

(assert (=> b!712524 (= res!475865 (not (contains!3978 lt!318549 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712525 () Bool)

(declare-fun res!475848 () Bool)

(assert (=> b!712525 (=> (not res!475848) (not e!400803))))

(declare-fun arrayContainsKey!0 (array!40407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!712525 (= res!475848 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712526 () Bool)

(declare-fun res!475856 () Bool)

(assert (=> b!712526 (=> (not res!475856) (not e!400801))))

(declare-fun subseq!422 (List!13435 List!13435) Bool)

(assert (=> b!712526 (= res!475856 (subseq!422 acc!652 newAcc!49))))

(declare-fun b!712527 () Bool)

(assert (=> b!712527 (= e!400803 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(assert (=> b!712527 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318550)))

(declare-datatypes ((Unit!24610 0))(
  ( (Unit!24611) )
))
(declare-fun lt!318551 () Unit!24610)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40407 (_ BitVec 64) (_ BitVec 32) List!13435 List!13435) Unit!24610)

(assert (=> b!712527 (= lt!318551 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318549 lt!318550))))

(declare-fun b!712528 () Bool)

(declare-fun res!475857 () Bool)

(assert (=> b!712528 (=> (not res!475857) (not e!400801))))

(assert (=> b!712528 (= res!475857 (noDuplicate!1225 acc!652))))

(declare-fun b!712529 () Bool)

(declare-fun res!475875 () Bool)

(assert (=> b!712529 (=> (not res!475875) (not e!400801))))

(assert (=> b!712529 (= res!475875 (not (contains!3978 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712530 () Bool)

(declare-fun res!475851 () Bool)

(assert (=> b!712530 (=> (not res!475851) (not e!400801))))

(assert (=> b!712530 (= res!475851 (not (contains!3978 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712531 () Bool)

(declare-fun res!475862 () Bool)

(assert (=> b!712531 (=> (not res!475862) (not e!400803))))

(assert (=> b!712531 (= res!475862 (not (contains!3978 lt!318550 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712532 () Bool)

(declare-fun res!475868 () Bool)

(assert (=> b!712532 (=> (not res!475868) (not e!400801))))

(assert (=> b!712532 (= res!475868 (not (contains!3978 acc!652 k!2824)))))

(declare-fun b!712533 () Bool)

(declare-fun res!475859 () Bool)

(assert (=> b!712533 (=> (not res!475859) (not e!400801))))

(assert (=> b!712533 (= res!475859 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19750 a!3591)))))

(declare-fun b!712534 () Bool)

(declare-fun res!475874 () Bool)

(assert (=> b!712534 (=> (not res!475874) (not e!400801))))

(assert (=> b!712534 (= res!475874 (contains!3978 newAcc!49 k!2824))))

(declare-fun b!712522 () Bool)

(declare-fun res!475871 () Bool)

(assert (=> b!712522 (=> (not res!475871) (not e!400803))))

(assert (=> b!712522 (= res!475871 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318549))))

(declare-fun res!475861 () Bool)

(assert (=> start!63292 (=> (not res!475861) (not e!400801))))

(assert (=> start!63292 (= res!475861 (and (bvslt (size!19750 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19750 a!3591))))))

(assert (=> start!63292 e!400801))

(assert (=> start!63292 true))

(declare-fun array_inv!15115 (array!40407) Bool)

(assert (=> start!63292 (array_inv!15115 a!3591)))

(declare-fun b!712535 () Bool)

(declare-fun res!475860 () Bool)

(assert (=> b!712535 (=> (not res!475860) (not e!400801))))

(declare-fun -!387 (List!13435 (_ BitVec 64)) List!13435)

(assert (=> b!712535 (= res!475860 (= (-!387 newAcc!49 k!2824) acc!652))))

(declare-fun b!712536 () Bool)

(declare-fun res!475858 () Bool)

(assert (=> b!712536 (=> (not res!475858) (not e!400801))))

(assert (=> b!712536 (= res!475858 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!712537 () Bool)

(declare-fun res!475867 () Bool)

(assert (=> b!712537 (=> (not res!475867) (not e!400803))))

(assert (=> b!712537 (= res!475867 (not (contains!3978 lt!318550 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712538 () Bool)

(declare-fun res!475870 () Bool)

(assert (=> b!712538 (=> (not res!475870) (not e!400803))))

(assert (=> b!712538 (= res!475870 (subseq!422 lt!318549 lt!318550))))

(declare-fun b!712539 () Bool)

(declare-fun res!475872 () Bool)

(assert (=> b!712539 (=> (not res!475872) (not e!400803))))

(assert (=> b!712539 (= res!475872 (not (contains!3978 lt!318549 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712540 () Bool)

(declare-fun res!475855 () Bool)

(assert (=> b!712540 (=> (not res!475855) (not e!400803))))

(assert (=> b!712540 (= res!475855 (noDuplicate!1225 lt!318549))))

(declare-fun b!712541 () Bool)

(declare-fun res!475869 () Bool)

(assert (=> b!712541 (=> (not res!475869) (not e!400803))))

(assert (=> b!712541 (= res!475869 (= (-!387 lt!318550 k!2824) lt!318549))))

(assert (= (and start!63292 res!475861) b!712528))

(assert (= (and b!712528 res!475857) b!712520))

(assert (= (and b!712520 res!475854) b!712515))

(assert (= (and b!712515 res!475863) b!712516))

(assert (= (and b!712516 res!475849) b!712536))

(assert (= (and b!712536 res!475858) b!712532))

(assert (= (and b!712532 res!475868) b!712517))

(assert (= (and b!712517 res!475852) b!712519))

(assert (= (and b!712519 res!475864) b!712526))

(assert (= (and b!712526 res!475856) b!712534))

(assert (= (and b!712534 res!475874) b!712535))

(assert (= (and b!712535 res!475860) b!712529))

(assert (= (and b!712529 res!475875) b!712530))

(assert (= (and b!712530 res!475851) b!712533))

(assert (= (and b!712533 res!475859) b!712514))

(assert (= (and b!712514 res!475866) b!712521))

(assert (= (and b!712521 res!475847) b!712540))

(assert (= (and b!712540 res!475855) b!712513))

(assert (= (and b!712513 res!475873) b!712539))

(assert (= (and b!712539 res!475872) b!712524))

(assert (= (and b!712524 res!475865) b!712525))

(assert (= (and b!712525 res!475848) b!712518))

(assert (= (and b!712518 res!475850) b!712522))

(assert (= (and b!712522 res!475871) b!712538))

(assert (= (and b!712538 res!475870) b!712523))

(assert (= (and b!712523 res!475853) b!712541))

(assert (= (and b!712541 res!475869) b!712537))

(assert (= (and b!712537 res!475867) b!712531))

(assert (= (and b!712531 res!475862) b!712527))

(declare-fun m!669459 () Bool)

(assert (=> b!712516 m!669459))

(declare-fun m!669461 () Bool)

(assert (=> b!712524 m!669461))

(declare-fun m!669463 () Bool)

(assert (=> b!712531 m!669463))

(declare-fun m!669465 () Bool)

(assert (=> b!712534 m!669465))

(declare-fun m!669467 () Bool)

(assert (=> b!712528 m!669467))

(declare-fun m!669469 () Bool)

(assert (=> b!712525 m!669469))

(declare-fun m!669471 () Bool)

(assert (=> b!712513 m!669471))

(declare-fun m!669473 () Bool)

(assert (=> b!712514 m!669473))

(assert (=> b!712514 m!669473))

(declare-fun m!669475 () Bool)

(assert (=> b!712514 m!669475))

(declare-fun m!669477 () Bool)

(assert (=> b!712540 m!669477))

(declare-fun m!669479 () Bool)

(assert (=> b!712536 m!669479))

(declare-fun m!669481 () Bool)

(assert (=> b!712519 m!669481))

(declare-fun m!669483 () Bool)

(assert (=> b!712535 m!669483))

(declare-fun m!669485 () Bool)

(assert (=> b!712529 m!669485))

(declare-fun m!669487 () Bool)

(assert (=> b!712522 m!669487))

(declare-fun m!669489 () Bool)

(assert (=> b!712532 m!669489))

(declare-fun m!669491 () Bool)

(assert (=> b!712537 m!669491))

(declare-fun m!669493 () Bool)

(assert (=> b!712520 m!669493))

(declare-fun m!669495 () Bool)

(assert (=> b!712518 m!669495))

(declare-fun m!669497 () Bool)

(assert (=> b!712541 m!669497))

(declare-fun m!669499 () Bool)

(assert (=> b!712526 m!669499))

(declare-fun m!669501 () Bool)

(assert (=> start!63292 m!669501))

(declare-fun m!669503 () Bool)

(assert (=> b!712527 m!669503))

(declare-fun m!669505 () Bool)

(assert (=> b!712527 m!669505))

(declare-fun m!669507 () Bool)

(assert (=> b!712527 m!669507))

(declare-fun m!669509 () Bool)

(assert (=> b!712517 m!669509))

(assert (=> b!712521 m!669473))

(assert (=> b!712521 m!669473))

(declare-fun m!669511 () Bool)

(assert (=> b!712521 m!669511))

(assert (=> b!712521 m!669473))

(declare-fun m!669513 () Bool)

(assert (=> b!712521 m!669513))

(declare-fun m!669515 () Bool)

(assert (=> b!712538 m!669515))

(declare-fun m!669517 () Bool)

(assert (=> b!712523 m!669517))

(declare-fun m!669519 () Bool)

(assert (=> b!712539 m!669519))

(declare-fun m!669521 () Bool)

(assert (=> b!712530 m!669521))

(declare-fun m!669523 () Bool)

(assert (=> b!712515 m!669523))

(push 1)

(assert (not b!712514))

(assert (not b!712532))

(assert (not b!712527))

(assert (not b!712530))

(assert (not b!712517))

(assert (not b!712536))

(assert (not b!712538))

(assert (not b!712513))

(assert (not b!712522))

(assert (not b!712525))

(assert (not b!712539))

(assert (not b!712531))

(assert (not b!712535))

(assert (not b!712516))

(assert (not b!712519))

(assert (not b!712520))

(assert (not b!712515))

(assert (not b!712526))

(assert (not b!712529))

(assert (not b!712518))

(assert (not b!712524))

(assert (not b!712528))

(assert (not b!712537))

(assert (not b!712534))

(assert (not b!712540))

(assert (not start!63292))

(assert (not b!712521))

(assert (not b!712523))

(assert (not b!712541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!712801 () Bool)

(declare-fun e!400904 () Bool)

(declare-fun e!400905 () Bool)

(assert (=> b!712801 (= e!400904 e!400905)))

(declare-fun res!476125 () Bool)

(assert (=> b!712801 (=> (not res!476125) (not e!400905))))

(declare-fun e!400902 () Bool)

(assert (=> b!712801 (= res!476125 (not e!400902))))

(declare-fun res!476127 () Bool)

(assert (=> b!712801 (=> (not res!476127) (not e!400902))))

(assert (=> b!712801 (= res!476127 (validKeyInArray!0 (select (arr!19341 a!3591) from!2969)))))

(declare-fun b!712802 () Bool)

(declare-fun e!400903 () Bool)

(declare-fun call!34566 () Bool)

(assert (=> b!712802 (= e!400903 call!34566)))

(declare-fun d!97945 () Bool)

(declare-fun res!476126 () Bool)

(assert (=> d!97945 (=> res!476126 e!400904)))

(assert (=> d!97945 (= res!476126 (bvsge from!2969 (size!19750 a!3591)))))

(assert (=> d!97945 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400904)))

(declare-fun b!712803 () Bool)

(assert (=> b!712803 (= e!400905 e!400903)))

(declare-fun c!78705 () Bool)

(assert (=> b!712803 (= c!78705 (validKeyInArray!0 (select (arr!19341 a!3591) from!2969)))))

(declare-fun bm!34563 () Bool)

(assert (=> bm!34563 (= call!34566 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78705 (Cons!13431 (select (arr!19341 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!712804 () Bool)

(assert (=> b!712804 (= e!400902 (contains!3978 acc!652 (select (arr!19341 a!3591) from!2969)))))

(declare-fun b!712805 () Bool)

(assert (=> b!712805 (= e!400903 call!34566)))

(assert (= (and d!97945 (not res!476126)) b!712801))

(assert (= (and b!712801 res!476127) b!712804))

(assert (= (and b!712801 res!476125) b!712803))

(assert (= (and b!712803 c!78705) b!712802))

(assert (= (and b!712803 (not c!78705)) b!712805))

(assert (= (or b!712802 b!712805) bm!34563))

(assert (=> b!712801 m!669473))

(assert (=> b!712801 m!669473))

(assert (=> b!712801 m!669475))

(assert (=> b!712803 m!669473))

(assert (=> b!712803 m!669473))

(assert (=> b!712803 m!669475))

(assert (=> bm!34563 m!669473))

(declare-fun m!669723 () Bool)

(assert (=> bm!34563 m!669723))

(assert (=> b!712804 m!669473))

(assert (=> b!712804 m!669473))

(declare-fun m!669725 () Bool)

(assert (=> b!712804 m!669725))

(assert (=> b!712519 d!97945))

(declare-fun d!97959 () Bool)

(declare-fun res!476138 () Bool)

(declare-fun e!400917 () Bool)

(assert (=> d!97959 (=> res!476138 e!400917)))

(assert (=> d!97959 (= res!476138 (is-Nil!13432 lt!318549))))

(assert (=> d!97959 (= (noDuplicate!1225 lt!318549) e!400917)))

(declare-fun b!712816 () Bool)

(declare-fun e!400918 () Bool)

(assert (=> b!712816 (= e!400917 e!400918)))

(declare-fun res!476139 () Bool)

(assert (=> b!712816 (=> (not res!476139) (not e!400918))))

(assert (=> b!712816 (= res!476139 (not (contains!3978 (t!19755 lt!318549) (h!14476 lt!318549))))))

(declare-fun b!712817 () Bool)

(assert (=> b!712817 (= e!400918 (noDuplicate!1225 (t!19755 lt!318549)))))

(assert (= (and d!97959 (not res!476138)) b!712816))

(assert (= (and b!712816 res!476139) b!712817))

(declare-fun m!669733 () Bool)

(assert (=> b!712816 m!669733))

(declare-fun m!669735 () Bool)

(assert (=> b!712817 m!669735))

(assert (=> b!712540 d!97959))

(declare-fun b!712872 () Bool)

(declare-fun e!400960 () List!13435)

(declare-fun call!34575 () List!13435)

(assert (=> b!712872 (= e!400960 call!34575)))

(declare-fun d!97963 () Bool)

(declare-fun e!400961 () Bool)

(assert (=> d!97963 e!400961))

(declare-fun res!476166 () Bool)

(assert (=> d!97963 (=> (not res!476166) (not e!400961))))

(declare-fun lt!318592 () List!13435)

(declare-fun size!19753 (List!13435) Int)

(assert (=> d!97963 (= res!476166 (<= (size!19753 lt!318592) (size!19753 lt!318550)))))

(declare-fun e!400962 () List!13435)

(assert (=> d!97963 (= lt!318592 e!400962)))

(declare-fun c!78720 () Bool)

(assert (=> d!97963 (= c!78720 (is-Cons!13431 lt!318550))))

(assert (=> d!97963 (= (-!387 lt!318550 k!2824) lt!318592)))

(declare-fun b!712873 () Bool)

(declare-fun content!366 (List!13435) (Set (_ BitVec 64)))

(assert (=> b!712873 (= e!400961 (= (content!366 lt!318592) (set.minus (content!366 lt!318550) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun bm!34572 () Bool)

(assert (=> bm!34572 (= call!34575 (-!387 (t!19755 lt!318550) k!2824))))

(declare-fun b!712874 () Bool)

(assert (=> b!712874 (= e!400960 (Cons!13431 (h!14476 lt!318550) call!34575))))

(declare-fun b!712875 () Bool)

(assert (=> b!712875 (= e!400962 Nil!13432)))

(declare-fun b!712876 () Bool)

(assert (=> b!712876 (= e!400962 e!400960)))

(declare-fun c!78721 () Bool)

(assert (=> b!712876 (= c!78721 (= k!2824 (h!14476 lt!318550)))))

(assert (= (and d!97963 c!78720) b!712876))

(assert (= (and d!97963 (not c!78720)) b!712875))

(assert (= (and b!712876 c!78721) b!712872))

(assert (= (and b!712876 (not c!78721)) b!712874))

(assert (= (or b!712872 b!712874) bm!34572))

(assert (= (and d!97963 res!476166) b!712873))

(declare-fun m!669781 () Bool)

(assert (=> d!97963 m!669781))

(declare-fun m!669783 () Bool)

(assert (=> d!97963 m!669783))

(declare-fun m!669785 () Bool)

(assert (=> b!712873 m!669785))

(declare-fun m!669789 () Bool)

(assert (=> b!712873 m!669789))

(declare-fun m!669791 () Bool)

(assert (=> b!712873 m!669791))

(declare-fun m!669793 () Bool)

(assert (=> bm!34572 m!669793))

(assert (=> b!712541 d!97963))

(declare-fun d!97987 () Bool)

(assert (=> d!97987 (= (array_inv!15115 a!3591) (bvsge (size!19750 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63292 d!97987))

(declare-fun d!97991 () Bool)

(declare-fun res!476173 () Bool)

(declare-fun e!400971 () Bool)

(assert (=> d!97991 (=> res!476173 e!400971)))

(assert (=> d!97991 (= res!476173 (is-Nil!13432 newAcc!49))))

(assert (=> d!97991 (= (noDuplicate!1225 newAcc!49) e!400971)))

(declare-fun b!712887 () Bool)

(declare-fun e!400972 () Bool)

(assert (=> b!712887 (= e!400971 e!400972)))

(declare-fun res!476174 () Bool)

(assert (=> b!712887 (=> (not res!476174) (not e!400972))))

(assert (=> b!712887 (= res!476174 (not (contains!3978 (t!19755 newAcc!49) (h!14476 newAcc!49))))))

(declare-fun b!712888 () Bool)

(assert (=> b!712888 (= e!400972 (noDuplicate!1225 (t!19755 newAcc!49)))))

(assert (= (and d!97991 (not res!476173)) b!712887))

(assert (= (and b!712887 res!476174) b!712888))

(declare-fun m!669799 () Bool)

(assert (=> b!712887 m!669799))

(declare-fun m!669801 () Bool)

(assert (=> b!712888 m!669801))

(assert (=> b!712520 d!97991))

(declare-fun b!712889 () Bool)

(declare-fun e!400975 () Bool)

(declare-fun e!400976 () Bool)

(assert (=> b!712889 (= e!400975 e!400976)))

(declare-fun res!476175 () Bool)

(assert (=> b!712889 (=> (not res!476175) (not e!400976))))

(declare-fun e!400973 () Bool)

(assert (=> b!712889 (= res!476175 (not e!400973))))

(declare-fun res!476177 () Bool)

(assert (=> b!712889 (=> (not res!476177) (not e!400973))))

(assert (=> b!712889 (= res!476177 (validKeyInArray!0 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712890 () Bool)

(declare-fun e!400974 () Bool)

(declare-fun call!34578 () Bool)

(assert (=> b!712890 (= e!400974 call!34578)))

(declare-fun d!97993 () Bool)

(declare-fun res!476176 () Bool)

(assert (=> d!97993 (=> res!476176 e!400975)))

(assert (=> d!97993 (= res!476176 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19750 a!3591)))))

(assert (=> d!97993 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318549) e!400975)))

(declare-fun b!712891 () Bool)

(assert (=> b!712891 (= e!400976 e!400974)))

(declare-fun c!78724 () Bool)

(assert (=> b!712891 (= c!78724 (validKeyInArray!0 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34575 () Bool)

(assert (=> bm!34575 (= call!34578 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78724 (Cons!13431 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318549) lt!318549)))))

(declare-fun b!712892 () Bool)

(assert (=> b!712892 (= e!400973 (contains!3978 lt!318549 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712893 () Bool)

(assert (=> b!712893 (= e!400974 call!34578)))

(assert (= (and d!97993 (not res!476176)) b!712889))

(assert (= (and b!712889 res!476177) b!712892))

(assert (= (and b!712889 res!476175) b!712891))

(assert (= (and b!712891 c!78724) b!712890))

(assert (= (and b!712891 (not c!78724)) b!712893))

(assert (= (or b!712890 b!712893) bm!34575))

(declare-fun m!669803 () Bool)

(assert (=> b!712889 m!669803))

(assert (=> b!712889 m!669803))

(declare-fun m!669805 () Bool)

(assert (=> b!712889 m!669805))

(assert (=> b!712891 m!669803))

(assert (=> b!712891 m!669803))

(assert (=> b!712891 m!669805))

(assert (=> bm!34575 m!669803))

(declare-fun m!669807 () Bool)

(assert (=> bm!34575 m!669807))

(assert (=> b!712892 m!669803))

(assert (=> b!712892 m!669803))

(declare-fun m!669809 () Bool)

(assert (=> b!712892 m!669809))

(assert (=> b!712522 d!97993))

(declare-fun d!97995 () Bool)

(assert (=> d!97995 (= ($colon$colon!532 newAcc!49 (select (arr!19341 a!3591) from!2969)) (Cons!13431 (select (arr!19341 a!3591) from!2969) newAcc!49))))

(assert (=> b!712521 d!97995))

(declare-fun d!97997 () Bool)

(assert (=> d!97997 (= ($colon$colon!532 acc!652 (select (arr!19341 a!3591) from!2969)) (Cons!13431 (select (arr!19341 a!3591) from!2969) acc!652))))

(assert (=> b!712521 d!97997))

(declare-fun d!97999 () Bool)

(declare-fun lt!318600 () Bool)

(assert (=> d!97999 (= lt!318600 (set.member k!2824 (content!366 lt!318550)))))

(declare-fun e!401004 () Bool)

(assert (=> d!97999 (= lt!318600 e!401004)))

(declare-fun res!476201 () Bool)

(assert (=> d!97999 (=> (not res!476201) (not e!401004))))

(assert (=> d!97999 (= res!476201 (is-Cons!13431 lt!318550))))

(assert (=> d!97999 (= (contains!3978 lt!318550 k!2824) lt!318600)))

(declare-fun b!712923 () Bool)

(declare-fun e!401003 () Bool)

(assert (=> b!712923 (= e!401004 e!401003)))

(declare-fun res!476202 () Bool)

(assert (=> b!712923 (=> res!476202 e!401003)))

(assert (=> b!712923 (= res!476202 (= (h!14476 lt!318550) k!2824))))

(declare-fun b!712924 () Bool)

(assert (=> b!712924 (= e!401003 (contains!3978 (t!19755 lt!318550) k!2824))))

(assert (= (and d!97999 res!476201) b!712923))

(assert (= (and b!712923 (not res!476202)) b!712924))

(assert (=> d!97999 m!669789))

(declare-fun m!669845 () Bool)

(assert (=> d!97999 m!669845))

(declare-fun m!669847 () Bool)

(assert (=> b!712924 m!669847))

(assert (=> b!712523 d!97999))

(declare-fun d!98015 () Bool)

(declare-fun lt!318601 () Bool)

(assert (=> d!98015 (= lt!318601 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!366 lt!318549)))))

(declare-fun e!401006 () Bool)

(assert (=> d!98015 (= lt!318601 e!401006)))

(declare-fun res!476203 () Bool)

(assert (=> d!98015 (=> (not res!476203) (not e!401006))))

(assert (=> d!98015 (= res!476203 (is-Cons!13431 lt!318549))))

(assert (=> d!98015 (= (contains!3978 lt!318549 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318601)))

(declare-fun b!712925 () Bool)

(declare-fun e!401005 () Bool)

(assert (=> b!712925 (= e!401006 e!401005)))

(declare-fun res!476204 () Bool)

(assert (=> b!712925 (=> res!476204 e!401005)))

(assert (=> b!712925 (= res!476204 (= (h!14476 lt!318549) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712926 () Bool)

(assert (=> b!712926 (= e!401005 (contains!3978 (t!19755 lt!318549) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98015 res!476203) b!712925))

(assert (= (and b!712925 (not res!476204)) b!712926))

(declare-fun m!669849 () Bool)

(assert (=> d!98015 m!669849))

(declare-fun m!669851 () Bool)

(assert (=> d!98015 m!669851))

(declare-fun m!669853 () Bool)

(assert (=> b!712926 m!669853))

(assert (=> b!712524 d!98015))

(declare-fun b!712939 () Bool)

(declare-fun e!401019 () Bool)

(assert (=> b!712939 (= e!401019 (subseq!422 (t!19755 acc!652) (t!19755 newAcc!49)))))

(declare-fun b!712940 () Bool)

(declare-fun e!401018 () Bool)

(assert (=> b!712940 (= e!401018 (subseq!422 acc!652 (t!19755 newAcc!49)))))

(declare-fun d!98017 () Bool)

(declare-fun res!476216 () Bool)

(declare-fun e!401017 () Bool)

(assert (=> d!98017 (=> res!476216 e!401017)))

(assert (=> d!98017 (= res!476216 (is-Nil!13432 acc!652))))

(assert (=> d!98017 (= (subseq!422 acc!652 newAcc!49) e!401017)))

(declare-fun b!712938 () Bool)

(declare-fun e!401020 () Bool)

(assert (=> b!712938 (= e!401020 e!401018)))

(declare-fun res!476218 () Bool)

(assert (=> b!712938 (=> res!476218 e!401018)))

(assert (=> b!712938 (= res!476218 e!401019)))

(declare-fun res!476215 () Bool)

(assert (=> b!712938 (=> (not res!476215) (not e!401019))))

(assert (=> b!712938 (= res!476215 (= (h!14476 acc!652) (h!14476 newAcc!49)))))

(declare-fun b!712937 () Bool)

(assert (=> b!712937 (= e!401017 e!401020)))

(declare-fun res!476217 () Bool)

(assert (=> b!712937 (=> (not res!476217) (not e!401020))))

(assert (=> b!712937 (= res!476217 (is-Cons!13431 newAcc!49))))

(assert (= (and d!98017 (not res!476216)) b!712937))

(assert (= (and b!712937 res!476217) b!712938))

(assert (= (and b!712938 res!476215) b!712939))

(assert (= (and b!712938 (not res!476218)) b!712940))

(declare-fun m!669861 () Bool)

(assert (=> b!712939 m!669861))

(declare-fun m!669863 () Bool)

(assert (=> b!712940 m!669863))

(assert (=> b!712526 d!98017))

(declare-fun d!98023 () Bool)

(declare-fun res!476225 () Bool)

(declare-fun e!401032 () Bool)

(assert (=> d!98023 (=> res!476225 e!401032)))

(assert (=> d!98023 (= res!476225 (= (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!98023 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401032)))

(declare-fun b!712955 () Bool)

(declare-fun e!401033 () Bool)

(assert (=> b!712955 (= e!401032 e!401033)))

(declare-fun res!476226 () Bool)

(assert (=> b!712955 (=> (not res!476226) (not e!401033))))

(assert (=> b!712955 (= res!476226 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19750 a!3591)))))

(declare-fun b!712956 () Bool)

(assert (=> b!712956 (= e!401033 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98023 (not res!476225)) b!712955))

(assert (= (and b!712955 res!476226) b!712956))

(assert (=> d!98023 m!669803))

(declare-fun m!669865 () Bool)

(assert (=> b!712956 m!669865))

(assert (=> b!712525 d!98023))

(declare-fun b!712957 () Bool)

(declare-fun e!401036 () Bool)

(declare-fun e!401037 () Bool)

(assert (=> b!712957 (= e!401036 e!401037)))

(declare-fun res!476227 () Bool)

(assert (=> b!712957 (=> (not res!476227) (not e!401037))))

(declare-fun e!401034 () Bool)

(assert (=> b!712957 (= res!476227 (not e!401034))))

(declare-fun res!476229 () Bool)

(assert (=> b!712957 (=> (not res!476229) (not e!401034))))

(assert (=> b!712957 (= res!476229 (validKeyInArray!0 (select (arr!19341 a!3591) from!2969)))))

(declare-fun b!712958 () Bool)

(declare-fun e!401035 () Bool)

(declare-fun call!34584 () Bool)

(assert (=> b!712958 (= e!401035 call!34584)))

(declare-fun d!98025 () Bool)

(declare-fun res!476228 () Bool)

(assert (=> d!98025 (=> res!476228 e!401036)))

(assert (=> d!98025 (= res!476228 (bvsge from!2969 (size!19750 a!3591)))))

(assert (=> d!98025 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!401036)))

(declare-fun b!712959 () Bool)

(assert (=> b!712959 (= e!401037 e!401035)))

(declare-fun c!78732 () Bool)

(assert (=> b!712959 (= c!78732 (validKeyInArray!0 (select (arr!19341 a!3591) from!2969)))))

(declare-fun bm!34581 () Bool)

(assert (=> bm!34581 (= call!34584 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78732 (Cons!13431 (select (arr!19341 a!3591) from!2969) newAcc!49) newAcc!49)))))

(declare-fun b!712960 () Bool)

(assert (=> b!712960 (= e!401034 (contains!3978 newAcc!49 (select (arr!19341 a!3591) from!2969)))))

(declare-fun b!712961 () Bool)

(assert (=> b!712961 (= e!401035 call!34584)))

(assert (= (and d!98025 (not res!476228)) b!712957))

(assert (= (and b!712957 res!476229) b!712960))

(assert (= (and b!712957 res!476227) b!712959))

(assert (= (and b!712959 c!78732) b!712958))

(assert (= (and b!712959 (not c!78732)) b!712961))

(assert (= (or b!712958 b!712961) bm!34581))

(assert (=> b!712957 m!669473))

(assert (=> b!712957 m!669473))

(assert (=> b!712957 m!669475))

(assert (=> b!712959 m!669473))

(assert (=> b!712959 m!669473))

(assert (=> b!712959 m!669475))

(assert (=> bm!34581 m!669473))

(declare-fun m!669867 () Bool)

(assert (=> bm!34581 m!669867))

(assert (=> b!712960 m!669473))

(assert (=> b!712960 m!669473))

(declare-fun m!669869 () Bool)

(assert (=> b!712960 m!669869))

(assert (=> b!712527 d!98025))

(declare-fun b!712962 () Bool)

(declare-fun e!401040 () Bool)

(declare-fun e!401041 () Bool)

(assert (=> b!712962 (= e!401040 e!401041)))

(declare-fun res!476230 () Bool)

(assert (=> b!712962 (=> (not res!476230) (not e!401041))))

(declare-fun e!401038 () Bool)

(assert (=> b!712962 (= res!476230 (not e!401038))))

(declare-fun res!476232 () Bool)

(assert (=> b!712962 (=> (not res!476232) (not e!401038))))

(assert (=> b!712962 (= res!476232 (validKeyInArray!0 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712963 () Bool)

(declare-fun e!401039 () Bool)

(declare-fun call!34585 () Bool)

(assert (=> b!712963 (= e!401039 call!34585)))

(declare-fun d!98027 () Bool)

(declare-fun res!476231 () Bool)

(assert (=> d!98027 (=> res!476231 e!401040)))

(assert (=> d!98027 (= res!476231 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19750 a!3591)))))

(assert (=> d!98027 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318550) e!401040)))

(declare-fun b!712964 () Bool)

(assert (=> b!712964 (= e!401041 e!401039)))

(declare-fun c!78733 () Bool)

(assert (=> b!712964 (= c!78733 (validKeyInArray!0 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34582 () Bool)

(assert (=> bm!34582 (= call!34585 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78733 (Cons!13431 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318550) lt!318550)))))

(declare-fun b!712965 () Bool)

(assert (=> b!712965 (= e!401038 (contains!3978 lt!318550 (select (arr!19341 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712966 () Bool)

(assert (=> b!712966 (= e!401039 call!34585)))

(assert (= (and d!98027 (not res!476231)) b!712962))

(assert (= (and b!712962 res!476232) b!712965))

(assert (= (and b!712962 res!476230) b!712964))

(assert (= (and b!712964 c!78733) b!712963))

(assert (= (and b!712964 (not c!78733)) b!712966))

(assert (= (or b!712963 b!712966) bm!34582))

(assert (=> b!712962 m!669803))

(assert (=> b!712962 m!669803))

(assert (=> b!712962 m!669805))

(assert (=> b!712964 m!669803))

(assert (=> b!712964 m!669803))

(assert (=> b!712964 m!669805))

(assert (=> bm!34582 m!669803))

(declare-fun m!669873 () Bool)

(assert (=> bm!34582 m!669873))

(assert (=> b!712965 m!669803))

(assert (=> b!712965 m!669803))

(declare-fun m!669877 () Bool)

(assert (=> b!712965 m!669877))

(assert (=> b!712527 d!98027))

(declare-fun d!98029 () Bool)

(assert (=> d!98029 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318550)))

(declare-fun lt!318613 () Unit!24610)

(declare-fun choose!66 (array!40407 (_ BitVec 64) (_ BitVec 32) List!13435 List!13435) Unit!24610)

(assert (=> d!98029 (= lt!318613 (choose!66 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318549 lt!318550))))

(assert (=> d!98029 (bvslt (size!19750 a!3591) #b01111111111111111111111111111111)))

(assert (=> d!98029 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318549 lt!318550) lt!318613)))

(declare-fun bs!20554 () Bool)

(assert (= bs!20554 d!98029))

(assert (=> bs!20554 m!669505))

(declare-fun m!669895 () Bool)

(assert (=> bs!20554 m!669895))

(assert (=> b!712527 d!98029))

(declare-fun d!98043 () Bool)

(declare-fun res!476240 () Bool)

(declare-fun e!401051 () Bool)

(assert (=> d!98043 (=> res!476240 e!401051)))

(assert (=> d!98043 (= res!476240 (is-Nil!13432 acc!652))))

(assert (=> d!98043 (= (noDuplicate!1225 acc!652) e!401051)))

(declare-fun b!712978 () Bool)

(declare-fun e!401052 () Bool)

(assert (=> b!712978 (= e!401051 e!401052)))

(declare-fun res!476241 () Bool)

(assert (=> b!712978 (=> (not res!476241) (not e!401052))))

(assert (=> b!712978 (= res!476241 (not (contains!3978 (t!19755 acc!652) (h!14476 acc!652))))))

(declare-fun b!712979 () Bool)

(assert (=> b!712979 (= e!401052 (noDuplicate!1225 (t!19755 acc!652)))))

(assert (= (and d!98043 (not res!476240)) b!712978))

(assert (= (and b!712978 res!476241) b!712979))

(declare-fun m!669901 () Bool)

(assert (=> b!712978 m!669901))

(declare-fun m!669903 () Bool)

(assert (=> b!712979 m!669903))

(assert (=> b!712528 d!98043))

(declare-fun d!98047 () Bool)

(declare-fun lt!318615 () Bool)

(assert (=> d!98047 (= lt!318615 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!366 newAcc!49)))))

(declare-fun e!401056 () Bool)

(assert (=> d!98047 (= lt!318615 e!401056)))

(declare-fun res!476244 () Bool)

(assert (=> d!98047 (=> (not res!476244) (not e!401056))))

(assert (=> d!98047 (= res!476244 (is-Cons!13431 newAcc!49))))

(assert (=> d!98047 (= (contains!3978 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318615)))

(declare-fun b!712982 () Bool)

(declare-fun e!401055 () Bool)

(assert (=> b!712982 (= e!401056 e!401055)))

(declare-fun res!476245 () Bool)

(assert (=> b!712982 (=> res!476245 e!401055)))

(assert (=> b!712982 (= res!476245 (= (h!14476 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712983 () Bool)

(assert (=> b!712983 (= e!401055 (contains!3978 (t!19755 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98047 res!476244) b!712982))

(assert (= (and b!712982 (not res!476245)) b!712983))

(declare-fun m!669909 () Bool)

(assert (=> d!98047 m!669909))

(declare-fun m!669911 () Bool)

(assert (=> d!98047 m!669911))

(declare-fun m!669913 () Bool)

(assert (=> b!712983 m!669913))

(assert (=> b!712530 d!98047))

(declare-fun d!98051 () Bool)

(declare-fun lt!318616 () Bool)

(assert (=> d!98051 (= lt!318616 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!366 newAcc!49)))))

(declare-fun e!401062 () Bool)

(assert (=> d!98051 (= lt!318616 e!401062)))

(declare-fun res!476249 () Bool)

(assert (=> d!98051 (=> (not res!476249) (not e!401062))))

(assert (=> d!98051 (= res!476249 (is-Cons!13431 newAcc!49))))

(assert (=> d!98051 (= (contains!3978 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318616)))

(declare-fun b!712989 () Bool)

(declare-fun e!401061 () Bool)

(assert (=> b!712989 (= e!401062 e!401061)))

(declare-fun res!476250 () Bool)

(assert (=> b!712989 (=> res!476250 e!401061)))

(assert (=> b!712989 (= res!476250 (= (h!14476 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712990 () Bool)

(assert (=> b!712990 (= e!401061 (contains!3978 (t!19755 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98051 res!476249) b!712989))

(assert (= (and b!712989 (not res!476250)) b!712990))

(assert (=> d!98051 m!669909))

(declare-fun m!669915 () Bool)

(assert (=> d!98051 m!669915))

(declare-fun m!669917 () Bool)

(assert (=> b!712990 m!669917))

(assert (=> b!712529 d!98051))

(declare-fun d!98053 () Bool)

(declare-fun lt!318617 () Bool)

(assert (=> d!98053 (= lt!318617 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!366 lt!318550)))))

(declare-fun e!401064 () Bool)

(assert (=> d!98053 (= lt!318617 e!401064)))

(declare-fun res!476251 () Bool)

(assert (=> d!98053 (=> (not res!476251) (not e!401064))))

(assert (=> d!98053 (= res!476251 (is-Cons!13431 lt!318550))))

(assert (=> d!98053 (= (contains!3978 lt!318550 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318617)))

(declare-fun b!712991 () Bool)

(declare-fun e!401063 () Bool)

(assert (=> b!712991 (= e!401064 e!401063)))

(declare-fun res!476252 () Bool)

(assert (=> b!712991 (=> res!476252 e!401063)))

(assert (=> b!712991 (= res!476252 (= (h!14476 lt!318550) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712992 () Bool)

(assert (=> b!712992 (= e!401063 (contains!3978 (t!19755 lt!318550) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98053 res!476251) b!712991))

(assert (= (and b!712991 (not res!476252)) b!712992))

(assert (=> d!98053 m!669789))

(declare-fun m!669923 () Bool)

(assert (=> d!98053 m!669923))

(declare-fun m!669925 () Bool)

(assert (=> b!712992 m!669925))

(assert (=> b!712531 d!98053))

(declare-fun d!98057 () Bool)

(declare-fun lt!318619 () Bool)

(assert (=> d!98057 (= lt!318619 (set.member k!2824 (content!366 acc!652)))))

(declare-fun e!401068 () Bool)

(assert (=> d!98057 (= lt!318619 e!401068)))

(declare-fun res!476255 () Bool)

(assert (=> d!98057 (=> (not res!476255) (not e!401068))))

(assert (=> d!98057 (= res!476255 (is-Cons!13431 acc!652))))

(assert (=> d!98057 (= (contains!3978 acc!652 k!2824) lt!318619)))

(declare-fun b!712995 () Bool)

(declare-fun e!401067 () Bool)

(assert (=> b!712995 (= e!401068 e!401067)))

(declare-fun res!476256 () Bool)

(assert (=> b!712995 (=> res!476256 e!401067)))

(assert (=> b!712995 (= res!476256 (= (h!14476 acc!652) k!2824))))

(declare-fun b!712996 () Bool)

(assert (=> b!712996 (= e!401067 (contains!3978 (t!19755 acc!652) k!2824))))

(assert (= (and d!98057 res!476255) b!712995))

(assert (= (and b!712995 (not res!476256)) b!712996))

(declare-fun m!669931 () Bool)

(assert (=> d!98057 m!669931))

(declare-fun m!669935 () Bool)

(assert (=> d!98057 m!669935))

(declare-fun m!669937 () Bool)

(assert (=> b!712996 m!669937))

(assert (=> b!712532 d!98057))

(declare-fun d!98061 () Bool)

(declare-fun lt!318621 () Bool)

(assert (=> d!98061 (= lt!318621 (set.member k!2824 (content!366 newAcc!49)))))

(declare-fun e!401073 () Bool)

(assert (=> d!98061 (= lt!318621 e!401073)))

(declare-fun res!476258 () Bool)

(assert (=> d!98061 (=> (not res!476258) (not e!401073))))

(assert (=> d!98061 (= res!476258 (is-Cons!13431 newAcc!49))))

(assert (=> d!98061 (= (contains!3978 newAcc!49 k!2824) lt!318621)))

(declare-fun b!713002 () Bool)

(declare-fun e!401072 () Bool)

(assert (=> b!713002 (= e!401073 e!401072)))

(declare-fun res!476259 () Bool)

(assert (=> b!713002 (=> res!476259 e!401072)))

(assert (=> b!713002 (= res!476259 (= (h!14476 newAcc!49) k!2824))))

(declare-fun b!713003 () Bool)

(assert (=> b!713003 (= e!401072 (contains!3978 (t!19755 newAcc!49) k!2824))))

