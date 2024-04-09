; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60072 () Bool)

(assert start!60072)

(declare-fun b!668459 () Bool)

(declare-datatypes ((Unit!23425 0))(
  ( (Unit!23426) )
))
(declare-fun e!382446 () Unit!23425)

(declare-fun Unit!23427 () Unit!23425)

(assert (=> b!668459 (= e!382446 Unit!23427)))

(declare-fun b!668460 () Bool)

(declare-fun e!382449 () Unit!23425)

(declare-fun lt!311260 () Unit!23425)

(assert (=> b!668460 (= e!382449 lt!311260)))

(declare-fun lt!311259 () Unit!23425)

(declare-datatypes ((List!12820 0))(
  ( (Nil!12817) (Cons!12816 (h!13861 (_ BitVec 64)) (t!19056 List!12820)) )
))
(declare-fun acc!681 () List!12820)

(declare-fun lemmaListSubSeqRefl!0 (List!12820) Unit!23425)

(assert (=> b!668460 (= lt!311259 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!101 (List!12820 List!12820) Bool)

(assert (=> b!668460 (subseq!101 acc!681 acc!681)))

(declare-datatypes ((array!39075 0))(
  ( (array!39076 (arr!18726 (Array (_ BitVec 32) (_ BitVec 64))) (size!19090 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39075)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39075 List!12820 List!12820 (_ BitVec 32)) Unit!23425)

(declare-fun $colon$colon!232 (List!12820 (_ BitVec 64)) List!12820)

(assert (=> b!668460 (= lt!311260 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!232 acc!681 (select (arr!18726 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39075 (_ BitVec 32) List!12820) Bool)

(assert (=> b!668460 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668461 () Bool)

(declare-fun res!435662 () Bool)

(declare-fun e!382444 () Bool)

(assert (=> b!668461 (=> (not res!435662) (not e!382444))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668461 (= res!435662 (validKeyInArray!0 k!2843))))

(declare-fun b!668462 () Bool)

(declare-fun res!435651 () Bool)

(declare-fun e!382450 () Bool)

(assert (=> b!668462 (=> res!435651 e!382450)))

(declare-fun lt!311256 () List!12820)

(declare-fun noDuplicate!610 (List!12820) Bool)

(assert (=> b!668462 (= res!435651 (not (noDuplicate!610 lt!311256)))))

(declare-fun b!668463 () Bool)

(declare-fun res!435654 () Bool)

(assert (=> b!668463 (=> (not res!435654) (not e!382444))))

(declare-fun e!382447 () Bool)

(assert (=> b!668463 (= res!435654 e!382447)))

(declare-fun res!435665 () Bool)

(assert (=> b!668463 (=> res!435665 e!382447)))

(declare-fun e!382451 () Bool)

(assert (=> b!668463 (= res!435665 e!382451)))

(declare-fun res!435663 () Bool)

(assert (=> b!668463 (=> (not res!435663) (not e!382451))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668463 (= res!435663 (bvsgt from!3004 i!1382))))

(declare-fun b!668464 () Bool)

(assert (=> b!668464 (= e!382444 (not e!382450))))

(declare-fun res!435645 () Bool)

(assert (=> b!668464 (=> res!435645 e!382450)))

(assert (=> b!668464 (= res!435645 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668464 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311256)))

(declare-fun lt!311257 () Unit!23425)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39075 (_ BitVec 64) (_ BitVec 32) List!12820 List!12820) Unit!23425)

(assert (=> b!668464 (= lt!311257 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311256))))

(declare-fun -!99 (List!12820 (_ BitVec 64)) List!12820)

(assert (=> b!668464 (= (-!99 lt!311256 k!2843) acc!681)))

(assert (=> b!668464 (= lt!311256 ($colon$colon!232 acc!681 k!2843))))

(declare-fun lt!311253 () Unit!23425)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12820) Unit!23425)

(assert (=> b!668464 (= lt!311253 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!668464 (subseq!101 acc!681 acc!681)))

(declare-fun lt!311262 () Unit!23425)

(assert (=> b!668464 (= lt!311262 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668464 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311255 () Unit!23425)

(assert (=> b!668464 (= lt!311255 e!382449)))

(declare-fun c!76775 () Bool)

(assert (=> b!668464 (= c!76775 (validKeyInArray!0 (select (arr!18726 a!3626) from!3004)))))

(declare-fun lt!311258 () Unit!23425)

(assert (=> b!668464 (= lt!311258 e!382446)))

(declare-fun c!76774 () Bool)

(declare-fun arrayContainsKey!0 (array!39075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668464 (= c!76774 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668464 (arrayContainsKey!0 (array!39076 (store (arr!18726 a!3626) i!1382 k!2843) (size!19090 a!3626)) k!2843 from!3004)))

(declare-fun b!668465 () Bool)

(declare-fun res!435664 () Bool)

(assert (=> b!668465 (=> (not res!435664) (not e!382444))))

(assert (=> b!668465 (= res!435664 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12817))))

(declare-fun b!668466 () Bool)

(declare-fun e!382443 () Bool)

(declare-fun contains!3363 (List!12820 (_ BitVec 64)) Bool)

(assert (=> b!668466 (= e!382443 (contains!3363 lt!311256 k!2843))))

(declare-fun b!668468 () Bool)

(assert (=> b!668468 (= e!382450 true)))

(declare-fun lt!311254 () Bool)

(declare-fun e!382448 () Bool)

(assert (=> b!668468 (= lt!311254 e!382448)))

(declare-fun res!435660 () Bool)

(assert (=> b!668468 (=> res!435660 e!382448)))

(assert (=> b!668468 (= res!435660 e!382443)))

(declare-fun res!435659 () Bool)

(assert (=> b!668468 (=> (not res!435659) (not e!382443))))

(assert (=> b!668468 (= res!435659 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668469 () Bool)

(declare-fun res!435658 () Bool)

(assert (=> b!668469 (=> (not res!435658) (not e!382444))))

(assert (=> b!668469 (= res!435658 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19090 a!3626))))))

(declare-fun b!668470 () Bool)

(declare-fun res!435652 () Bool)

(assert (=> b!668470 (=> res!435652 e!382450)))

(assert (=> b!668470 (= res!435652 (contains!3363 lt!311256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668471 () Bool)

(declare-fun e!382453 () Bool)

(assert (=> b!668471 (= e!382448 e!382453)))

(declare-fun res!435653 () Bool)

(assert (=> b!668471 (=> (not res!435653) (not e!382453))))

(assert (=> b!668471 (= res!435653 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668472 () Bool)

(declare-fun Unit!23428 () Unit!23425)

(assert (=> b!668472 (= e!382449 Unit!23428)))

(declare-fun b!668473 () Bool)

(declare-fun res!435647 () Bool)

(assert (=> b!668473 (=> res!435647 e!382450)))

(assert (=> b!668473 (= res!435647 (contains!3363 lt!311256 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668474 () Bool)

(declare-fun res!435648 () Bool)

(assert (=> b!668474 (=> (not res!435648) (not e!382444))))

(assert (=> b!668474 (= res!435648 (not (contains!3363 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668475 () Bool)

(declare-fun Unit!23429 () Unit!23425)

(assert (=> b!668475 (= e!382446 Unit!23429)))

(declare-fun lt!311261 () Unit!23425)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39075 (_ BitVec 64) (_ BitVec 32)) Unit!23425)

(assert (=> b!668475 (= lt!311261 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668475 false))

(declare-fun b!668476 () Bool)

(declare-fun res!435661 () Bool)

(assert (=> b!668476 (=> (not res!435661) (not e!382444))))

(assert (=> b!668476 (= res!435661 (not (contains!3363 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668477 () Bool)

(assert (=> b!668477 (= e!382453 (not (contains!3363 lt!311256 k!2843)))))

(declare-fun b!668478 () Bool)

(assert (=> b!668478 (= e!382451 (contains!3363 acc!681 k!2843))))

(declare-fun b!668479 () Bool)

(declare-fun res!435656 () Bool)

(assert (=> b!668479 (=> (not res!435656) (not e!382444))))

(assert (=> b!668479 (= res!435656 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668480 () Bool)

(declare-fun e!382445 () Bool)

(assert (=> b!668480 (= e!382447 e!382445)))

(declare-fun res!435649 () Bool)

(assert (=> b!668480 (=> (not res!435649) (not e!382445))))

(assert (=> b!668480 (= res!435649 (bvsle from!3004 i!1382))))

(declare-fun b!668481 () Bool)

(assert (=> b!668481 (= e!382445 (not (contains!3363 acc!681 k!2843)))))

(declare-fun b!668467 () Bool)

(declare-fun res!435655 () Bool)

(assert (=> b!668467 (=> (not res!435655) (not e!382444))))

(assert (=> b!668467 (= res!435655 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!435646 () Bool)

(assert (=> start!60072 (=> (not res!435646) (not e!382444))))

(assert (=> start!60072 (= res!435646 (and (bvslt (size!19090 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19090 a!3626))))))

(assert (=> start!60072 e!382444))

(assert (=> start!60072 true))

(declare-fun array_inv!14500 (array!39075) Bool)

(assert (=> start!60072 (array_inv!14500 a!3626)))

(declare-fun b!668482 () Bool)

(declare-fun res!435657 () Bool)

(assert (=> b!668482 (=> (not res!435657) (not e!382444))))

(assert (=> b!668482 (= res!435657 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19090 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668483 () Bool)

(declare-fun res!435650 () Bool)

(assert (=> b!668483 (=> (not res!435650) (not e!382444))))

(assert (=> b!668483 (= res!435650 (noDuplicate!610 acc!681))))

(assert (= (and start!60072 res!435646) b!668483))

(assert (= (and b!668483 res!435650) b!668474))

(assert (= (and b!668474 res!435648) b!668476))

(assert (= (and b!668476 res!435661) b!668463))

(assert (= (and b!668463 res!435663) b!668478))

(assert (= (and b!668463 (not res!435665)) b!668480))

(assert (= (and b!668480 res!435649) b!668481))

(assert (= (and b!668463 res!435654) b!668465))

(assert (= (and b!668465 res!435664) b!668467))

(assert (= (and b!668467 res!435655) b!668469))

(assert (= (and b!668469 res!435658) b!668461))

(assert (= (and b!668461 res!435662) b!668479))

(assert (= (and b!668479 res!435656) b!668482))

(assert (= (and b!668482 res!435657) b!668464))

(assert (= (and b!668464 c!76774) b!668475))

(assert (= (and b!668464 (not c!76774)) b!668459))

(assert (= (and b!668464 c!76775) b!668460))

(assert (= (and b!668464 (not c!76775)) b!668472))

(assert (= (and b!668464 (not res!435645)) b!668462))

(assert (= (and b!668462 (not res!435651)) b!668470))

(assert (= (and b!668470 (not res!435652)) b!668473))

(assert (= (and b!668473 (not res!435647)) b!668468))

(assert (= (and b!668468 res!435659) b!668466))

(assert (= (and b!668468 (not res!435660)) b!668471))

(assert (= (and b!668471 res!435653) b!668477))

(declare-fun m!638799 () Bool)

(assert (=> b!668462 m!638799))

(declare-fun m!638801 () Bool)

(assert (=> b!668476 m!638801))

(declare-fun m!638803 () Bool)

(assert (=> b!668470 m!638803))

(declare-fun m!638805 () Bool)

(assert (=> b!668475 m!638805))

(declare-fun m!638807 () Bool)

(assert (=> b!668474 m!638807))

(declare-fun m!638809 () Bool)

(assert (=> b!668479 m!638809))

(declare-fun m!638811 () Bool)

(assert (=> b!668466 m!638811))

(assert (=> b!668477 m!638811))

(declare-fun m!638813 () Bool)

(assert (=> b!668461 m!638813))

(declare-fun m!638815 () Bool)

(assert (=> b!668473 m!638815))

(declare-fun m!638817 () Bool)

(assert (=> b!668483 m!638817))

(declare-fun m!638819 () Bool)

(assert (=> b!668464 m!638819))

(declare-fun m!638821 () Bool)

(assert (=> b!668464 m!638821))

(declare-fun m!638823 () Bool)

(assert (=> b!668464 m!638823))

(declare-fun m!638825 () Bool)

(assert (=> b!668464 m!638825))

(declare-fun m!638827 () Bool)

(assert (=> b!668464 m!638827))

(declare-fun m!638829 () Bool)

(assert (=> b!668464 m!638829))

(declare-fun m!638831 () Bool)

(assert (=> b!668464 m!638831))

(declare-fun m!638833 () Bool)

(assert (=> b!668464 m!638833))

(declare-fun m!638835 () Bool)

(assert (=> b!668464 m!638835))

(declare-fun m!638837 () Bool)

(assert (=> b!668464 m!638837))

(assert (=> b!668464 m!638823))

(declare-fun m!638839 () Bool)

(assert (=> b!668464 m!638839))

(declare-fun m!638841 () Bool)

(assert (=> b!668464 m!638841))

(declare-fun m!638843 () Bool)

(assert (=> b!668464 m!638843))

(declare-fun m!638845 () Bool)

(assert (=> b!668465 m!638845))

(assert (=> b!668460 m!638821))

(assert (=> b!668460 m!638823))

(declare-fun m!638847 () Bool)

(assert (=> b!668460 m!638847))

(declare-fun m!638849 () Bool)

(assert (=> b!668460 m!638849))

(assert (=> b!668460 m!638823))

(assert (=> b!668460 m!638847))

(assert (=> b!668460 m!638831))

(assert (=> b!668460 m!638843))

(declare-fun m!638851 () Bool)

(assert (=> start!60072 m!638851))

(declare-fun m!638853 () Bool)

(assert (=> b!668467 m!638853))

(declare-fun m!638855 () Bool)

(assert (=> b!668481 m!638855))

(assert (=> b!668478 m!638855))

(push 1)

(assert (not b!668467))

(assert (not b!668462))

(assert (not b!668483))

(assert (not b!668460))

(assert (not start!60072))

(assert (not b!668475))

(assert (not b!668477))

(assert (not b!668464))

(assert (not b!668461))

(assert (not b!668466))

(assert (not b!668473))

(assert (not b!668470))

(assert (not b!668465))

(assert (not b!668476))

(assert (not b!668481))

(assert (not b!668474))

(assert (not b!668479))

(assert (not b!668478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

