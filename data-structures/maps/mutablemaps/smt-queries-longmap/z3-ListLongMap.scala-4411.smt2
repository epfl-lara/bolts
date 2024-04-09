; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60896 () Bool)

(assert start!60896)

(declare-fun b!682729 () Bool)

(declare-fun res!448799 () Bool)

(declare-fun e!388949 () Bool)

(assert (=> b!682729 (=> (not res!448799) (not e!388949))))

(declare-datatypes ((array!39536 0))(
  ( (array!39537 (arr!18946 (Array (_ BitVec 32) (_ BitVec 64))) (size!19310 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39536)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682729 (= res!448799 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682730 () Bool)

(declare-datatypes ((Unit!23967 0))(
  ( (Unit!23968) )
))
(declare-fun e!388946 () Unit!23967)

(declare-fun Unit!23969 () Unit!23967)

(assert (=> b!682730 (= e!388946 Unit!23969)))

(declare-fun b!682731 () Bool)

(declare-fun res!448793 () Bool)

(assert (=> b!682731 (=> (not res!448793) (not e!388949))))

(declare-datatypes ((List!13040 0))(
  ( (Nil!13037) (Cons!13036 (h!14081 (_ BitVec 64)) (t!19291 List!13040)) )
))
(declare-fun acc!681 () List!13040)

(declare-fun contains!3583 (List!13040 (_ BitVec 64)) Bool)

(assert (=> b!682731 (= res!448793 (not (contains!3583 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682732 () Bool)

(declare-fun e!388951 () Unit!23967)

(declare-fun Unit!23970 () Unit!23967)

(assert (=> b!682732 (= e!388951 Unit!23970)))

(declare-fun b!682733 () Bool)

(declare-fun res!448796 () Bool)

(assert (=> b!682733 (=> (not res!448796) (not e!388949))))

(declare-fun arrayNoDuplicates!0 (array!39536 (_ BitVec 32) List!13040) Bool)

(assert (=> b!682733 (= res!448796 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13037))))

(declare-fun b!682734 () Bool)

(declare-fun res!448790 () Bool)

(assert (=> b!682734 (=> (not res!448790) (not e!388949))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!682734 (= res!448790 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19310 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682735 () Bool)

(declare-fun res!448786 () Bool)

(assert (=> b!682735 (=> (not res!448786) (not e!388949))))

(declare-fun e!388945 () Bool)

(assert (=> b!682735 (= res!448786 e!388945)))

(declare-fun res!448792 () Bool)

(assert (=> b!682735 (=> res!448792 e!388945)))

(declare-fun e!388950 () Bool)

(assert (=> b!682735 (= res!448792 e!388950)))

(declare-fun res!448787 () Bool)

(assert (=> b!682735 (=> (not res!448787) (not e!388950))))

(assert (=> b!682735 (= res!448787 (bvsgt from!3004 i!1382))))

(declare-fun b!682736 () Bool)

(declare-fun res!448791 () Bool)

(assert (=> b!682736 (=> (not res!448791) (not e!388949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682736 (= res!448791 (validKeyInArray!0 k0!2843))))

(declare-fun b!682737 () Bool)

(declare-fun res!448798 () Bool)

(assert (=> b!682737 (=> (not res!448798) (not e!388949))))

(declare-fun noDuplicate!830 (List!13040) Bool)

(assert (=> b!682737 (= res!448798 (noDuplicate!830 acc!681))))

(declare-fun b!682728 () Bool)

(declare-fun e!388948 () Bool)

(assert (=> b!682728 (= e!388945 e!388948)))

(declare-fun res!448794 () Bool)

(assert (=> b!682728 (=> (not res!448794) (not e!388948))))

(assert (=> b!682728 (= res!448794 (bvsle from!3004 i!1382))))

(declare-fun res!448795 () Bool)

(assert (=> start!60896 (=> (not res!448795) (not e!388949))))

(assert (=> start!60896 (= res!448795 (and (bvslt (size!19310 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19310 a!3626))))))

(assert (=> start!60896 e!388949))

(assert (=> start!60896 true))

(declare-fun array_inv!14720 (array!39536) Bool)

(assert (=> start!60896 (array_inv!14720 a!3626)))

(declare-fun b!682738 () Bool)

(assert (=> b!682738 (= e!388949 (not true))))

(declare-fun -!133 (List!13040 (_ BitVec 64)) List!13040)

(declare-fun $colon$colon!332 (List!13040 (_ BitVec 64)) List!13040)

(assert (=> b!682738 (= (-!133 ($colon$colon!332 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!313650 () Unit!23967)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13040) Unit!23967)

(assert (=> b!682738 (= lt!313650 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!168 (List!13040 List!13040) Bool)

(assert (=> b!682738 (subseq!168 acc!681 acc!681)))

(declare-fun lt!313654 () Unit!23967)

(declare-fun lemmaListSubSeqRefl!0 (List!13040) Unit!23967)

(assert (=> b!682738 (= lt!313654 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682738 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313656 () Unit!23967)

(assert (=> b!682738 (= lt!313656 e!388946)))

(declare-fun c!77339 () Bool)

(assert (=> b!682738 (= c!77339 (validKeyInArray!0 (select (arr!18946 a!3626) from!3004)))))

(declare-fun lt!313655 () Unit!23967)

(assert (=> b!682738 (= lt!313655 e!388951)))

(declare-fun c!77338 () Bool)

(assert (=> b!682738 (= c!77338 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682738 (arrayContainsKey!0 (array!39537 (store (arr!18946 a!3626) i!1382 k0!2843) (size!19310 a!3626)) k0!2843 from!3004)))

(declare-fun b!682739 () Bool)

(declare-fun res!448789 () Bool)

(assert (=> b!682739 (=> (not res!448789) (not e!388949))))

(assert (=> b!682739 (= res!448789 (not (contains!3583 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682740 () Bool)

(assert (=> b!682740 (= e!388950 (contains!3583 acc!681 k0!2843))))

(declare-fun b!682741 () Bool)

(declare-fun lt!313653 () Unit!23967)

(assert (=> b!682741 (= e!388946 lt!313653)))

(declare-fun lt!313652 () Unit!23967)

(assert (=> b!682741 (= lt!313652 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682741 (subseq!168 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39536 List!13040 List!13040 (_ BitVec 32)) Unit!23967)

(assert (=> b!682741 (= lt!313653 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!332 acc!681 (select (arr!18946 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682741 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682742 () Bool)

(declare-fun Unit!23971 () Unit!23967)

(assert (=> b!682742 (= e!388951 Unit!23971)))

(declare-fun lt!313651 () Unit!23967)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39536 (_ BitVec 64) (_ BitVec 32)) Unit!23967)

(assert (=> b!682742 (= lt!313651 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!682742 false))

(declare-fun b!682743 () Bool)

(declare-fun res!448797 () Bool)

(assert (=> b!682743 (=> (not res!448797) (not e!388949))))

(assert (=> b!682743 (= res!448797 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19310 a!3626))))))

(declare-fun b!682744 () Bool)

(assert (=> b!682744 (= e!388948 (not (contains!3583 acc!681 k0!2843)))))

(declare-fun b!682745 () Bool)

(declare-fun res!448788 () Bool)

(assert (=> b!682745 (=> (not res!448788) (not e!388949))))

(assert (=> b!682745 (= res!448788 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60896 res!448795) b!682737))

(assert (= (and b!682737 res!448798) b!682739))

(assert (= (and b!682739 res!448789) b!682731))

(assert (= (and b!682731 res!448793) b!682735))

(assert (= (and b!682735 res!448787) b!682740))

(assert (= (and b!682735 (not res!448792)) b!682728))

(assert (= (and b!682728 res!448794) b!682744))

(assert (= (and b!682735 res!448786) b!682733))

(assert (= (and b!682733 res!448796) b!682745))

(assert (= (and b!682745 res!448788) b!682743))

(assert (= (and b!682743 res!448797) b!682736))

(assert (= (and b!682736 res!448791) b!682729))

(assert (= (and b!682729 res!448799) b!682734))

(assert (= (and b!682734 res!448790) b!682738))

(assert (= (and b!682738 c!77338) b!682742))

(assert (= (and b!682738 (not c!77338)) b!682732))

(assert (= (and b!682738 c!77339) b!682741))

(assert (= (and b!682738 (not c!77339)) b!682730))

(declare-fun m!647413 () Bool)

(assert (=> b!682731 m!647413))

(declare-fun m!647415 () Bool)

(assert (=> b!682736 m!647415))

(declare-fun m!647417 () Bool)

(assert (=> b!682740 m!647417))

(declare-fun m!647419 () Bool)

(assert (=> b!682729 m!647419))

(declare-fun m!647421 () Bool)

(assert (=> start!60896 m!647421))

(declare-fun m!647423 () Bool)

(assert (=> b!682741 m!647423))

(declare-fun m!647425 () Bool)

(assert (=> b!682741 m!647425))

(declare-fun m!647427 () Bool)

(assert (=> b!682741 m!647427))

(declare-fun m!647429 () Bool)

(assert (=> b!682741 m!647429))

(assert (=> b!682741 m!647425))

(assert (=> b!682741 m!647427))

(declare-fun m!647431 () Bool)

(assert (=> b!682741 m!647431))

(declare-fun m!647433 () Bool)

(assert (=> b!682741 m!647433))

(declare-fun m!647435 () Bool)

(assert (=> b!682745 m!647435))

(declare-fun m!647437 () Bool)

(assert (=> b!682737 m!647437))

(declare-fun m!647439 () Bool)

(assert (=> b!682739 m!647439))

(assert (=> b!682744 m!647417))

(declare-fun m!647441 () Bool)

(assert (=> b!682733 m!647441))

(declare-fun m!647443 () Bool)

(assert (=> b!682738 m!647443))

(declare-fun m!647445 () Bool)

(assert (=> b!682738 m!647445))

(assert (=> b!682738 m!647423))

(assert (=> b!682738 m!647425))

(declare-fun m!647447 () Bool)

(assert (=> b!682738 m!647447))

(declare-fun m!647449 () Bool)

(assert (=> b!682738 m!647449))

(assert (=> b!682738 m!647431))

(declare-fun m!647451 () Bool)

(assert (=> b!682738 m!647451))

(assert (=> b!682738 m!647443))

(assert (=> b!682738 m!647425))

(declare-fun m!647453 () Bool)

(assert (=> b!682738 m!647453))

(declare-fun m!647455 () Bool)

(assert (=> b!682738 m!647455))

(assert (=> b!682738 m!647433))

(declare-fun m!647457 () Bool)

(assert (=> b!682742 m!647457))

(check-sat (not b!682739) (not b!682737) (not b!682740) (not b!682741) (not b!682738) (not b!682731) (not b!682744) (not b!682733) (not b!682745) (not start!60896) (not b!682736) (not b!682742) (not b!682729))
