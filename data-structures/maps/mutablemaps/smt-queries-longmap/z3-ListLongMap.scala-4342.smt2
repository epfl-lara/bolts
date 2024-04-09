; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60098 () Bool)

(assert start!60098)

(declare-fun b!669434 () Bool)

(declare-fun res!436465 () Bool)

(declare-fun e!382881 () Bool)

(assert (=> b!669434 (=> (not res!436465) (not e!382881))))

(declare-datatypes ((List!12833 0))(
  ( (Nil!12830) (Cons!12829 (h!13874 (_ BitVec 64)) (t!19069 List!12833)) )
))
(declare-fun acc!681 () List!12833)

(declare-fun noDuplicate!623 (List!12833) Bool)

(assert (=> b!669434 (= res!436465 (noDuplicate!623 acc!681))))

(declare-fun b!669436 () Bool)

(declare-fun res!436469 () Bool)

(assert (=> b!669436 (=> (not res!436469) (not e!382881))))

(declare-datatypes ((array!39101 0))(
  ( (array!39102 (arr!18739 (Array (_ BitVec 32) (_ BitVec 64))) (size!19103 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39101)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669436 (= res!436469 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669437 () Bool)

(declare-fun e!382877 () Bool)

(declare-fun contains!3376 (List!12833 (_ BitVec 64)) Bool)

(assert (=> b!669437 (= e!382877 (contains!3376 acc!681 k0!2843))))

(declare-fun b!669438 () Bool)

(declare-fun e!382872 () Bool)

(assert (=> b!669438 (= e!382872 (not (contains!3376 acc!681 k0!2843)))))

(declare-fun b!669439 () Bool)

(declare-fun res!436466 () Bool)

(assert (=> b!669439 (=> (not res!436466) (not e!382881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669439 (= res!436466 (validKeyInArray!0 k0!2843))))

(declare-fun b!669440 () Bool)

(declare-fun e!382882 () Bool)

(declare-fun lt!311643 () List!12833)

(assert (=> b!669440 (= e!382882 (contains!3376 lt!311643 k0!2843))))

(declare-fun b!669441 () Bool)

(declare-datatypes ((Unit!23490 0))(
  ( (Unit!23491) )
))
(declare-fun e!382876 () Unit!23490)

(declare-fun Unit!23492 () Unit!23490)

(assert (=> b!669441 (= e!382876 Unit!23492)))

(declare-fun b!669442 () Bool)

(declare-fun res!436476 () Bool)

(assert (=> b!669442 (=> (not res!436476) (not e!382881))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669442 (= res!436476 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19103 a!3626))))))

(declare-fun b!669443 () Bool)

(declare-fun res!436480 () Bool)

(declare-fun e!382873 () Bool)

(assert (=> b!669443 (=> res!436480 e!382873)))

(assert (=> b!669443 (= res!436480 (not (noDuplicate!623 lt!311643)))))

(declare-fun b!669444 () Bool)

(assert (=> b!669444 (= e!382873 true)))

(declare-fun lt!311651 () Bool)

(declare-fun e!382875 () Bool)

(assert (=> b!669444 (= lt!311651 e!382875)))

(declare-fun res!436468 () Bool)

(assert (=> b!669444 (=> res!436468 e!382875)))

(assert (=> b!669444 (= res!436468 e!382882)))

(declare-fun res!436481 () Bool)

(assert (=> b!669444 (=> (not res!436481) (not e!382882))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!669444 (= res!436481 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669445 () Bool)

(declare-fun res!436477 () Bool)

(assert (=> b!669445 (=> (not res!436477) (not e!382881))))

(declare-fun arrayNoDuplicates!0 (array!39101 (_ BitVec 32) List!12833) Bool)

(assert (=> b!669445 (= res!436477 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669446 () Bool)

(declare-fun e!382880 () Bool)

(assert (=> b!669446 (= e!382880 (not (contains!3376 lt!311643 k0!2843)))))

(declare-fun b!669447 () Bool)

(declare-fun res!436478 () Bool)

(assert (=> b!669447 (=> (not res!436478) (not e!382881))))

(declare-fun e!382879 () Bool)

(assert (=> b!669447 (= res!436478 e!382879)))

(declare-fun res!436475 () Bool)

(assert (=> b!669447 (=> res!436475 e!382879)))

(assert (=> b!669447 (= res!436475 e!382877)))

(declare-fun res!436470 () Bool)

(assert (=> b!669447 (=> (not res!436470) (not e!382877))))

(assert (=> b!669447 (= res!436470 (bvsgt from!3004 i!1382))))

(declare-fun b!669448 () Bool)

(assert (=> b!669448 (= e!382879 e!382872)))

(declare-fun res!436474 () Bool)

(assert (=> b!669448 (=> (not res!436474) (not e!382872))))

(assert (=> b!669448 (= res!436474 (bvsle from!3004 i!1382))))

(declare-fun res!436467 () Bool)

(assert (=> start!60098 (=> (not res!436467) (not e!382881))))

(assert (=> start!60098 (= res!436467 (and (bvslt (size!19103 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19103 a!3626))))))

(assert (=> start!60098 e!382881))

(assert (=> start!60098 true))

(declare-fun array_inv!14513 (array!39101) Bool)

(assert (=> start!60098 (array_inv!14513 a!3626)))

(declare-fun b!669435 () Bool)

(assert (=> b!669435 (= e!382875 e!382880)))

(declare-fun res!436484 () Bool)

(assert (=> b!669435 (=> (not res!436484) (not e!382880))))

(assert (=> b!669435 (= res!436484 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669449 () Bool)

(declare-fun e!382878 () Unit!23490)

(declare-fun Unit!23493 () Unit!23490)

(assert (=> b!669449 (= e!382878 Unit!23493)))

(declare-fun lt!311645 () Unit!23490)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39101 (_ BitVec 64) (_ BitVec 32)) Unit!23490)

(assert (=> b!669449 (= lt!311645 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!669449 false))

(declare-fun b!669450 () Bool)

(declare-fun res!436479 () Bool)

(assert (=> b!669450 (=> res!436479 e!382873)))

(assert (=> b!669450 (= res!436479 (contains!3376 lt!311643 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669451 () Bool)

(declare-fun res!436482 () Bool)

(assert (=> b!669451 (=> (not res!436482) (not e!382881))))

(assert (=> b!669451 (= res!436482 (not (contains!3376 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669452 () Bool)

(declare-fun res!436471 () Bool)

(assert (=> b!669452 (=> res!436471 e!382873)))

(assert (=> b!669452 (= res!436471 (contains!3376 lt!311643 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669453 () Bool)

(declare-fun res!436473 () Bool)

(assert (=> b!669453 (=> (not res!436473) (not e!382881))))

(assert (=> b!669453 (= res!436473 (not (contains!3376 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669454 () Bool)

(declare-fun Unit!23494 () Unit!23490)

(assert (=> b!669454 (= e!382878 Unit!23494)))

(declare-fun b!669455 () Bool)

(declare-fun res!436464 () Bool)

(assert (=> b!669455 (=> (not res!436464) (not e!382881))))

(assert (=> b!669455 (= res!436464 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19103 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669456 () Bool)

(declare-fun lt!311649 () Unit!23490)

(assert (=> b!669456 (= e!382876 lt!311649)))

(declare-fun lt!311647 () Unit!23490)

(declare-fun lemmaListSubSeqRefl!0 (List!12833) Unit!23490)

(assert (=> b!669456 (= lt!311647 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!114 (List!12833 List!12833) Bool)

(assert (=> b!669456 (subseq!114 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39101 List!12833 List!12833 (_ BitVec 32)) Unit!23490)

(declare-fun $colon$colon!245 (List!12833 (_ BitVec 64)) List!12833)

(assert (=> b!669456 (= lt!311649 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!245 acc!681 (select (arr!18739 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669456 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669457 () Bool)

(assert (=> b!669457 (= e!382881 (not e!382873))))

(declare-fun res!436483 () Bool)

(assert (=> b!669457 (=> res!436483 e!382873)))

(assert (=> b!669457 (= res!436483 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669457 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311643)))

(declare-fun lt!311650 () Unit!23490)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39101 (_ BitVec 64) (_ BitVec 32) List!12833 List!12833) Unit!23490)

(assert (=> b!669457 (= lt!311650 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311643))))

(declare-fun -!112 (List!12833 (_ BitVec 64)) List!12833)

(assert (=> b!669457 (= (-!112 lt!311643 k0!2843) acc!681)))

(assert (=> b!669457 (= lt!311643 ($colon$colon!245 acc!681 k0!2843))))

(declare-fun lt!311648 () Unit!23490)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12833) Unit!23490)

(assert (=> b!669457 (= lt!311648 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!669457 (subseq!114 acc!681 acc!681)))

(declare-fun lt!311646 () Unit!23490)

(assert (=> b!669457 (= lt!311646 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669457 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311652 () Unit!23490)

(assert (=> b!669457 (= lt!311652 e!382876)))

(declare-fun c!76852 () Bool)

(assert (=> b!669457 (= c!76852 (validKeyInArray!0 (select (arr!18739 a!3626) from!3004)))))

(declare-fun lt!311644 () Unit!23490)

(assert (=> b!669457 (= lt!311644 e!382878)))

(declare-fun c!76853 () Bool)

(assert (=> b!669457 (= c!76853 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669457 (arrayContainsKey!0 (array!39102 (store (arr!18739 a!3626) i!1382 k0!2843) (size!19103 a!3626)) k0!2843 from!3004)))

(declare-fun b!669458 () Bool)

(declare-fun res!436472 () Bool)

(assert (=> b!669458 (=> (not res!436472) (not e!382881))))

(assert (=> b!669458 (= res!436472 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12830))))

(assert (= (and start!60098 res!436467) b!669434))

(assert (= (and b!669434 res!436465) b!669451))

(assert (= (and b!669451 res!436482) b!669453))

(assert (= (and b!669453 res!436473) b!669447))

(assert (= (and b!669447 res!436470) b!669437))

(assert (= (and b!669447 (not res!436475)) b!669448))

(assert (= (and b!669448 res!436474) b!669438))

(assert (= (and b!669447 res!436478) b!669458))

(assert (= (and b!669458 res!436472) b!669445))

(assert (= (and b!669445 res!436477) b!669442))

(assert (= (and b!669442 res!436476) b!669439))

(assert (= (and b!669439 res!436466) b!669436))

(assert (= (and b!669436 res!436469) b!669455))

(assert (= (and b!669455 res!436464) b!669457))

(assert (= (and b!669457 c!76853) b!669449))

(assert (= (and b!669457 (not c!76853)) b!669454))

(assert (= (and b!669457 c!76852) b!669456))

(assert (= (and b!669457 (not c!76852)) b!669441))

(assert (= (and b!669457 (not res!436483)) b!669443))

(assert (= (and b!669443 (not res!436480)) b!669450))

(assert (= (and b!669450 (not res!436479)) b!669452))

(assert (= (and b!669452 (not res!436471)) b!669444))

(assert (= (and b!669444 res!436481) b!669440))

(assert (= (and b!669444 (not res!436468)) b!669435))

(assert (= (and b!669435 res!436484) b!669446))

(declare-fun m!639553 () Bool)

(assert (=> b!669446 m!639553))

(declare-fun m!639555 () Bool)

(assert (=> b!669445 m!639555))

(declare-fun m!639557 () Bool)

(assert (=> b!669437 m!639557))

(declare-fun m!639559 () Bool)

(assert (=> b!669443 m!639559))

(assert (=> b!669440 m!639553))

(declare-fun m!639561 () Bool)

(assert (=> b!669434 m!639561))

(declare-fun m!639563 () Bool)

(assert (=> b!669436 m!639563))

(declare-fun m!639565 () Bool)

(assert (=> b!669453 m!639565))

(declare-fun m!639567 () Bool)

(assert (=> b!669449 m!639567))

(declare-fun m!639569 () Bool)

(assert (=> b!669439 m!639569))

(declare-fun m!639571 () Bool)

(assert (=> b!669458 m!639571))

(declare-fun m!639573 () Bool)

(assert (=> b!669451 m!639573))

(declare-fun m!639575 () Bool)

(assert (=> b!669450 m!639575))

(assert (=> b!669438 m!639557))

(declare-fun m!639577 () Bool)

(assert (=> b!669456 m!639577))

(declare-fun m!639579 () Bool)

(assert (=> b!669456 m!639579))

(declare-fun m!639581 () Bool)

(assert (=> b!669456 m!639581))

(declare-fun m!639583 () Bool)

(assert (=> b!669456 m!639583))

(assert (=> b!669456 m!639579))

(assert (=> b!669456 m!639581))

(declare-fun m!639585 () Bool)

(assert (=> b!669456 m!639585))

(declare-fun m!639587 () Bool)

(assert (=> b!669456 m!639587))

(declare-fun m!639589 () Bool)

(assert (=> start!60098 m!639589))

(declare-fun m!639591 () Bool)

(assert (=> b!669452 m!639591))

(assert (=> b!669457 m!639577))

(assert (=> b!669457 m!639579))

(declare-fun m!639593 () Bool)

(assert (=> b!669457 m!639593))

(declare-fun m!639595 () Bool)

(assert (=> b!669457 m!639595))

(declare-fun m!639597 () Bool)

(assert (=> b!669457 m!639597))

(assert (=> b!669457 m!639585))

(declare-fun m!639599 () Bool)

(assert (=> b!669457 m!639599))

(declare-fun m!639601 () Bool)

(assert (=> b!669457 m!639601))

(declare-fun m!639603 () Bool)

(assert (=> b!669457 m!639603))

(assert (=> b!669457 m!639579))

(declare-fun m!639605 () Bool)

(assert (=> b!669457 m!639605))

(declare-fun m!639607 () Bool)

(assert (=> b!669457 m!639607))

(declare-fun m!639609 () Bool)

(assert (=> b!669457 m!639609))

(assert (=> b!669457 m!639587))

(check-sat (not b!669437) (not b!669436) (not b!669434) (not b!669451) (not b!669439) (not b!669450) (not b!669438) (not b!669458) (not b!669453) (not b!669446) (not b!669452) (not b!669445) (not b!669456) (not b!669443) (not b!669440) (not b!669457) (not b!669449) (not start!60098))
(check-sat)
