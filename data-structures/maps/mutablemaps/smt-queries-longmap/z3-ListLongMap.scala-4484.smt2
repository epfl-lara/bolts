; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62390 () Bool)

(assert start!62390)

(declare-fun b!698483 () Bool)

(declare-fun res!462478 () Bool)

(declare-fun e!396994 () Bool)

(assert (=> b!698483 (=> (not res!462478) (not e!396994))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!698483 (= res!462478 (validKeyInArray!0 k0!2824))))

(declare-fun b!698484 () Bool)

(declare-fun res!462490 () Bool)

(declare-fun e!396992 () Bool)

(assert (=> b!698484 (=> (not res!462490) (not e!396992))))

(declare-datatypes ((List!13259 0))(
  ( (Nil!13256) (Cons!13255 (h!14300 (_ BitVec 64)) (t!19549 List!13259)) )
))
(declare-fun lt!317243 () List!13259)

(declare-fun contains!3802 (List!13259 (_ BitVec 64)) Bool)

(assert (=> b!698484 (= res!462490 (not (contains!3802 lt!317243 k0!2824)))))

(declare-fun b!698485 () Bool)

(declare-fun res!462480 () Bool)

(assert (=> b!698485 (=> (not res!462480) (not e!396994))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40025 0))(
  ( (array!40026 (arr!19165 (Array (_ BitVec 32) (_ BitVec 64))) (size!19548 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40025)

(assert (=> b!698485 (= res!462480 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19548 a!3591)))))

(declare-fun b!698486 () Bool)

(declare-fun res!462476 () Bool)

(assert (=> b!698486 (=> (not res!462476) (not e!396992))))

(declare-fun lt!317244 () List!13259)

(declare-fun subseq!246 (List!13259 List!13259) Bool)

(assert (=> b!698486 (= res!462476 (subseq!246 lt!317243 lt!317244))))

(declare-fun b!698487 () Bool)

(declare-fun res!462467 () Bool)

(assert (=> b!698487 (=> (not res!462467) (not e!396994))))

(declare-fun newAcc!49 () List!13259)

(assert (=> b!698487 (= res!462467 (not (contains!3802 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698488 () Bool)

(assert (=> b!698488 (= e!396992 false)))

(declare-fun lt!317242 () Bool)

(assert (=> b!698488 (= lt!317242 (contains!3802 lt!317244 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!698489 () Bool)

(declare-fun res!462489 () Bool)

(assert (=> b!698489 (=> (not res!462489) (not e!396994))))

(assert (=> b!698489 (= res!462489 (not (contains!3802 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698490 () Bool)

(declare-fun res!462477 () Bool)

(assert (=> b!698490 (=> (not res!462477) (not e!396992))))

(assert (=> b!698490 (= res!462477 (contains!3802 lt!317244 k0!2824))))

(declare-fun res!462493 () Bool)

(assert (=> start!62390 (=> (not res!462493) (not e!396994))))

(assert (=> start!62390 (= res!462493 (and (bvslt (size!19548 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19548 a!3591))))))

(assert (=> start!62390 e!396994))

(assert (=> start!62390 true))

(declare-fun array_inv!14939 (array!40025) Bool)

(assert (=> start!62390 (array_inv!14939 a!3591)))

(declare-fun b!698491 () Bool)

(declare-fun res!462486 () Bool)

(assert (=> b!698491 (=> (not res!462486) (not e!396992))))

(declare-fun noDuplicate!1049 (List!13259) Bool)

(assert (=> b!698491 (= res!462486 (noDuplicate!1049 lt!317243))))

(declare-fun b!698492 () Bool)

(declare-fun res!462470 () Bool)

(assert (=> b!698492 (=> (not res!462470) (not e!396994))))

(declare-fun acc!652 () List!13259)

(assert (=> b!698492 (= res!462470 (subseq!246 acc!652 newAcc!49))))

(declare-fun b!698493 () Bool)

(declare-fun res!462494 () Bool)

(assert (=> b!698493 (=> (not res!462494) (not e!396992))))

(declare-fun -!211 (List!13259 (_ BitVec 64)) List!13259)

(assert (=> b!698493 (= res!462494 (= (-!211 lt!317244 k0!2824) lt!317243))))

(declare-fun b!698494 () Bool)

(declare-fun res!462474 () Bool)

(assert (=> b!698494 (=> (not res!462474) (not e!396992))))

(declare-fun arrayNoDuplicates!0 (array!40025 (_ BitVec 32) List!13259) Bool)

(assert (=> b!698494 (= res!462474 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317243))))

(declare-fun b!698495 () Bool)

(declare-fun res!462484 () Bool)

(assert (=> b!698495 (=> (not res!462484) (not e!396994))))

(assert (=> b!698495 (= res!462484 (not (contains!3802 acc!652 k0!2824)))))

(declare-fun b!698496 () Bool)

(declare-fun res!462482 () Bool)

(assert (=> b!698496 (=> (not res!462482) (not e!396992))))

(declare-fun arrayContainsKey!0 (array!40025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698496 (= res!462482 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!698497 () Bool)

(declare-fun res!462485 () Bool)

(assert (=> b!698497 (=> (not res!462485) (not e!396992))))

(assert (=> b!698497 (= res!462485 (not (contains!3802 lt!317244 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698498 () Bool)

(declare-fun res!462492 () Bool)

(assert (=> b!698498 (=> (not res!462492) (not e!396994))))

(assert (=> b!698498 (= res!462492 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!698499 () Bool)

(declare-fun res!462473 () Bool)

(assert (=> b!698499 (=> (not res!462473) (not e!396994))))

(assert (=> b!698499 (= res!462473 (contains!3802 newAcc!49 k0!2824))))

(declare-fun b!698500 () Bool)

(declare-fun res!462483 () Bool)

(assert (=> b!698500 (=> (not res!462483) (not e!396994))))

(assert (=> b!698500 (= res!462483 (validKeyInArray!0 (select (arr!19165 a!3591) from!2969)))))

(declare-fun b!698501 () Bool)

(assert (=> b!698501 (= e!396994 e!396992)))

(declare-fun res!462479 () Bool)

(assert (=> b!698501 (=> (not res!462479) (not e!396992))))

(assert (=> b!698501 (= res!462479 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!443 (List!13259 (_ BitVec 64)) List!13259)

(assert (=> b!698501 (= lt!317244 ($colon$colon!443 newAcc!49 (select (arr!19165 a!3591) from!2969)))))

(assert (=> b!698501 (= lt!317243 ($colon$colon!443 acc!652 (select (arr!19165 a!3591) from!2969)))))

(declare-fun b!698502 () Bool)

(declare-fun res!462487 () Bool)

(assert (=> b!698502 (=> (not res!462487) (not e!396992))))

(assert (=> b!698502 (= res!462487 (noDuplicate!1049 lt!317244))))

(declare-fun b!698503 () Bool)

(declare-fun res!462481 () Bool)

(assert (=> b!698503 (=> (not res!462481) (not e!396994))))

(assert (=> b!698503 (= res!462481 (not (contains!3802 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698504 () Bool)

(declare-fun res!462468 () Bool)

(assert (=> b!698504 (=> (not res!462468) (not e!396994))))

(assert (=> b!698504 (= res!462468 (not (contains!3802 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698505 () Bool)

(declare-fun res!462491 () Bool)

(assert (=> b!698505 (=> (not res!462491) (not e!396994))))

(assert (=> b!698505 (= res!462491 (= (-!211 newAcc!49 k0!2824) acc!652))))

(declare-fun b!698506 () Bool)

(declare-fun res!462488 () Bool)

(assert (=> b!698506 (=> (not res!462488) (not e!396992))))

(assert (=> b!698506 (= res!462488 (not (contains!3802 lt!317243 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698507 () Bool)

(declare-fun res!462472 () Bool)

(assert (=> b!698507 (=> (not res!462472) (not e!396994))))

(assert (=> b!698507 (= res!462472 (noDuplicate!1049 acc!652))))

(declare-fun b!698508 () Bool)

(declare-fun res!462469 () Bool)

(assert (=> b!698508 (=> (not res!462469) (not e!396994))))

(assert (=> b!698508 (= res!462469 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!698509 () Bool)

(declare-fun res!462471 () Bool)

(assert (=> b!698509 (=> (not res!462471) (not e!396994))))

(assert (=> b!698509 (= res!462471 (noDuplicate!1049 newAcc!49))))

(declare-fun b!698510 () Bool)

(declare-fun res!462475 () Bool)

(assert (=> b!698510 (=> (not res!462475) (not e!396992))))

(assert (=> b!698510 (= res!462475 (not (contains!3802 lt!317243 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62390 res!462493) b!698507))

(assert (= (and b!698507 res!462472) b!698509))

(assert (= (and b!698509 res!462471) b!698503))

(assert (= (and b!698503 res!462481) b!698504))

(assert (= (and b!698504 res!462468) b!698508))

(assert (= (and b!698508 res!462469) b!698495))

(assert (= (and b!698495 res!462484) b!698483))

(assert (= (and b!698483 res!462478) b!698498))

(assert (= (and b!698498 res!462492) b!698492))

(assert (= (and b!698492 res!462470) b!698499))

(assert (= (and b!698499 res!462473) b!698505))

(assert (= (and b!698505 res!462491) b!698487))

(assert (= (and b!698487 res!462467) b!698489))

(assert (= (and b!698489 res!462489) b!698485))

(assert (= (and b!698485 res!462480) b!698500))

(assert (= (and b!698500 res!462483) b!698501))

(assert (= (and b!698501 res!462479) b!698491))

(assert (= (and b!698491 res!462486) b!698502))

(assert (= (and b!698502 res!462487) b!698506))

(assert (= (and b!698506 res!462488) b!698510))

(assert (= (and b!698510 res!462475) b!698496))

(assert (= (and b!698496 res!462482) b!698484))

(assert (= (and b!698484 res!462490) b!698494))

(assert (= (and b!698494 res!462474) b!698486))

(assert (= (and b!698486 res!462476) b!698490))

(assert (= (and b!698490 res!462477) b!698493))

(assert (= (and b!698493 res!462494) b!698497))

(assert (= (and b!698497 res!462485) b!698488))

(declare-fun m!658731 () Bool)

(assert (=> b!698502 m!658731))

(declare-fun m!658733 () Bool)

(assert (=> b!698504 m!658733))

(declare-fun m!658735 () Bool)

(assert (=> b!698508 m!658735))

(declare-fun m!658737 () Bool)

(assert (=> b!698501 m!658737))

(assert (=> b!698501 m!658737))

(declare-fun m!658739 () Bool)

(assert (=> b!698501 m!658739))

(assert (=> b!698501 m!658737))

(declare-fun m!658741 () Bool)

(assert (=> b!698501 m!658741))

(declare-fun m!658743 () Bool)

(assert (=> b!698488 m!658743))

(declare-fun m!658745 () Bool)

(assert (=> b!698493 m!658745))

(declare-fun m!658747 () Bool)

(assert (=> b!698505 m!658747))

(declare-fun m!658749 () Bool)

(assert (=> b!698494 m!658749))

(declare-fun m!658751 () Bool)

(assert (=> b!698489 m!658751))

(declare-fun m!658753 () Bool)

(assert (=> b!698510 m!658753))

(declare-fun m!658755 () Bool)

(assert (=> b!698483 m!658755))

(declare-fun m!658757 () Bool)

(assert (=> start!62390 m!658757))

(declare-fun m!658759 () Bool)

(assert (=> b!698507 m!658759))

(declare-fun m!658761 () Bool)

(assert (=> b!698503 m!658761))

(declare-fun m!658763 () Bool)

(assert (=> b!698490 m!658763))

(declare-fun m!658765 () Bool)

(assert (=> b!698492 m!658765))

(declare-fun m!658767 () Bool)

(assert (=> b!698498 m!658767))

(declare-fun m!658769 () Bool)

(assert (=> b!698484 m!658769))

(declare-fun m!658771 () Bool)

(assert (=> b!698486 m!658771))

(declare-fun m!658773 () Bool)

(assert (=> b!698495 m!658773))

(declare-fun m!658775 () Bool)

(assert (=> b!698509 m!658775))

(assert (=> b!698500 m!658737))

(assert (=> b!698500 m!658737))

(declare-fun m!658777 () Bool)

(assert (=> b!698500 m!658777))

(declare-fun m!658779 () Bool)

(assert (=> b!698491 m!658779))

(declare-fun m!658781 () Bool)

(assert (=> b!698506 m!658781))

(declare-fun m!658783 () Bool)

(assert (=> b!698497 m!658783))

(declare-fun m!658785 () Bool)

(assert (=> b!698496 m!658785))

(declare-fun m!658787 () Bool)

(assert (=> b!698499 m!658787))

(declare-fun m!658789 () Bool)

(assert (=> b!698487 m!658789))

(check-sat (not b!698488) (not start!62390) (not b!698491) (not b!698489) (not b!698507) (not b!698498) (not b!698508) (not b!698505) (not b!698500) (not b!698503) (not b!698501) (not b!698497) (not b!698504) (not b!698493) (not b!698486) (not b!698492) (not b!698483) (not b!698496) (not b!698509) (not b!698510) (not b!698487) (not b!698499) (not b!698494) (not b!698502) (not b!698495) (not b!698506) (not b!698490) (not b!698484))
(check-sat)
