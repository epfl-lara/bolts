; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60898 () Bool)

(assert start!60898)

(declare-fun b!682782 () Bool)

(declare-datatypes ((Unit!23972 0))(
  ( (Unit!23973) )
))
(declare-fun e!388972 () Unit!23972)

(declare-fun Unit!23974 () Unit!23972)

(assert (=> b!682782 (= e!388972 Unit!23974)))

(declare-fun b!682783 () Bool)

(declare-fun e!388970 () Unit!23972)

(declare-fun Unit!23975 () Unit!23972)

(assert (=> b!682783 (= e!388970 Unit!23975)))

(declare-fun res!448839 () Bool)

(declare-fun e!388971 () Bool)

(assert (=> start!60898 (=> (not res!448839) (not e!388971))))

(declare-datatypes ((array!39538 0))(
  ( (array!39539 (arr!18947 (Array (_ BitVec 32) (_ BitVec 64))) (size!19311 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39538)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60898 (= res!448839 (and (bvslt (size!19311 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19311 a!3626))))))

(assert (=> start!60898 e!388971))

(assert (=> start!60898 true))

(declare-fun array_inv!14721 (array!39538) Bool)

(assert (=> start!60898 (array_inv!14721 a!3626)))

(declare-fun b!682784 () Bool)

(declare-fun res!448831 () Bool)

(assert (=> b!682784 (=> (not res!448831) (not e!388971))))

(declare-datatypes ((List!13041 0))(
  ( (Nil!13038) (Cons!13037 (h!14082 (_ BitVec 64)) (t!19292 List!13041)) )
))
(declare-fun acc!681 () List!13041)

(declare-fun contains!3584 (List!13041 (_ BitVec 64)) Bool)

(assert (=> b!682784 (= res!448831 (not (contains!3584 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682785 () Bool)

(declare-fun Unit!23976 () Unit!23972)

(assert (=> b!682785 (= e!388972 Unit!23976)))

(declare-fun lt!313676 () Unit!23972)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39538 (_ BitVec 64) (_ BitVec 32)) Unit!23972)

(assert (=> b!682785 (= lt!313676 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682785 false))

(declare-fun b!682786 () Bool)

(declare-fun res!448837 () Bool)

(assert (=> b!682786 (=> (not res!448837) (not e!388971))))

(declare-fun arrayContainsKey!0 (array!39538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682786 (= res!448837 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682787 () Bool)

(declare-fun lt!313675 () Unit!23972)

(assert (=> b!682787 (= e!388970 lt!313675)))

(declare-fun lt!313671 () Unit!23972)

(declare-fun lemmaListSubSeqRefl!0 (List!13041) Unit!23972)

(assert (=> b!682787 (= lt!313671 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!169 (List!13041 List!13041) Bool)

(assert (=> b!682787 (subseq!169 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39538 List!13041 List!13041 (_ BitVec 32)) Unit!23972)

(declare-fun $colon$colon!333 (List!13041 (_ BitVec 64)) List!13041)

(assert (=> b!682787 (= lt!313675 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!333 acc!681 (select (arr!18947 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39538 (_ BitVec 32) List!13041) Bool)

(assert (=> b!682787 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682788 () Bool)

(assert (=> b!682788 (= e!388971 (not true))))

(declare-fun -!134 (List!13041 (_ BitVec 64)) List!13041)

(assert (=> b!682788 (= (-!134 ($colon$colon!333 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313673 () Unit!23972)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13041) Unit!23972)

(assert (=> b!682788 (= lt!313673 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!682788 (subseq!169 acc!681 acc!681)))

(declare-fun lt!313672 () Unit!23972)

(assert (=> b!682788 (= lt!313672 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682788 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313677 () Unit!23972)

(assert (=> b!682788 (= lt!313677 e!388970)))

(declare-fun c!77345 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682788 (= c!77345 (validKeyInArray!0 (select (arr!18947 a!3626) from!3004)))))

(declare-fun lt!313674 () Unit!23972)

(assert (=> b!682788 (= lt!313674 e!388972)))

(declare-fun c!77344 () Bool)

(assert (=> b!682788 (= c!77344 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682788 (arrayContainsKey!0 (array!39539 (store (arr!18947 a!3626) i!1382 k!2843) (size!19311 a!3626)) k!2843 from!3004)))

(declare-fun b!682789 () Bool)

(declare-fun e!388966 () Bool)

(assert (=> b!682789 (= e!388966 (contains!3584 acc!681 k!2843))))

(declare-fun b!682790 () Bool)

(declare-fun res!448841 () Bool)

(assert (=> b!682790 (=> (not res!448841) (not e!388971))))

(assert (=> b!682790 (= res!448841 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682791 () Bool)

(declare-fun res!448834 () Bool)

(assert (=> b!682791 (=> (not res!448834) (not e!388971))))

(assert (=> b!682791 (= res!448834 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13038))))

(declare-fun b!682792 () Bool)

(declare-fun res!448832 () Bool)

(assert (=> b!682792 (=> (not res!448832) (not e!388971))))

(assert (=> b!682792 (= res!448832 (not (contains!3584 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682793 () Bool)

(declare-fun e!388969 () Bool)

(assert (=> b!682793 (= e!388969 (not (contains!3584 acc!681 k!2843)))))

(declare-fun b!682794 () Bool)

(declare-fun res!448840 () Bool)

(assert (=> b!682794 (=> (not res!448840) (not e!388971))))

(declare-fun noDuplicate!831 (List!13041) Bool)

(assert (=> b!682794 (= res!448840 (noDuplicate!831 acc!681))))

(declare-fun b!682795 () Bool)

(declare-fun e!388968 () Bool)

(assert (=> b!682795 (= e!388968 e!388969)))

(declare-fun res!448830 () Bool)

(assert (=> b!682795 (=> (not res!448830) (not e!388969))))

(assert (=> b!682795 (= res!448830 (bvsle from!3004 i!1382))))

(declare-fun b!682796 () Bool)

(declare-fun res!448833 () Bool)

(assert (=> b!682796 (=> (not res!448833) (not e!388971))))

(assert (=> b!682796 (= res!448833 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19311 a!3626))))))

(declare-fun b!682797 () Bool)

(declare-fun res!448836 () Bool)

(assert (=> b!682797 (=> (not res!448836) (not e!388971))))

(assert (=> b!682797 (= res!448836 e!388968)))

(declare-fun res!448838 () Bool)

(assert (=> b!682797 (=> res!448838 e!388968)))

(assert (=> b!682797 (= res!448838 e!388966)))

(declare-fun res!448828 () Bool)

(assert (=> b!682797 (=> (not res!448828) (not e!388966))))

(assert (=> b!682797 (= res!448828 (bvsgt from!3004 i!1382))))

(declare-fun b!682798 () Bool)

(declare-fun res!448829 () Bool)

(assert (=> b!682798 (=> (not res!448829) (not e!388971))))

(assert (=> b!682798 (= res!448829 (validKeyInArray!0 k!2843))))

(declare-fun b!682799 () Bool)

(declare-fun res!448835 () Bool)

(assert (=> b!682799 (=> (not res!448835) (not e!388971))))

(assert (=> b!682799 (= res!448835 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19311 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60898 res!448839) b!682794))

(assert (= (and b!682794 res!448840) b!682792))

(assert (= (and b!682792 res!448832) b!682784))

(assert (= (and b!682784 res!448831) b!682797))

(assert (= (and b!682797 res!448828) b!682789))

(assert (= (and b!682797 (not res!448838)) b!682795))

(assert (= (and b!682795 res!448830) b!682793))

(assert (= (and b!682797 res!448836) b!682791))

(assert (= (and b!682791 res!448834) b!682790))

(assert (= (and b!682790 res!448841) b!682796))

(assert (= (and b!682796 res!448833) b!682798))

(assert (= (and b!682798 res!448829) b!682786))

(assert (= (and b!682786 res!448837) b!682799))

(assert (= (and b!682799 res!448835) b!682788))

(assert (= (and b!682788 c!77344) b!682785))

(assert (= (and b!682788 (not c!77344)) b!682782))

(assert (= (and b!682788 c!77345) b!682787))

(assert (= (and b!682788 (not c!77345)) b!682783))

(declare-fun m!647459 () Bool)

(assert (=> b!682787 m!647459))

(declare-fun m!647461 () Bool)

(assert (=> b!682787 m!647461))

(declare-fun m!647463 () Bool)

(assert (=> b!682787 m!647463))

(declare-fun m!647465 () Bool)

(assert (=> b!682787 m!647465))

(assert (=> b!682787 m!647461))

(assert (=> b!682787 m!647463))

(declare-fun m!647467 () Bool)

(assert (=> b!682787 m!647467))

(declare-fun m!647469 () Bool)

(assert (=> b!682787 m!647469))

(declare-fun m!647471 () Bool)

(assert (=> b!682794 m!647471))

(declare-fun m!647473 () Bool)

(assert (=> start!60898 m!647473))

(declare-fun m!647475 () Bool)

(assert (=> b!682793 m!647475))

(assert (=> b!682789 m!647475))

(declare-fun m!647477 () Bool)

(assert (=> b!682786 m!647477))

(declare-fun m!647479 () Bool)

(assert (=> b!682790 m!647479))

(declare-fun m!647481 () Bool)

(assert (=> b!682785 m!647481))

(declare-fun m!647483 () Bool)

(assert (=> b!682788 m!647483))

(declare-fun m!647485 () Bool)

(assert (=> b!682788 m!647485))

(assert (=> b!682788 m!647459))

(assert (=> b!682788 m!647461))

(declare-fun m!647487 () Bool)

(assert (=> b!682788 m!647487))

(declare-fun m!647489 () Bool)

(assert (=> b!682788 m!647489))

(assert (=> b!682788 m!647467))

(declare-fun m!647491 () Bool)

(assert (=> b!682788 m!647491))

(assert (=> b!682788 m!647483))

(assert (=> b!682788 m!647461))

(declare-fun m!647493 () Bool)

(assert (=> b!682788 m!647493))

(declare-fun m!647495 () Bool)

(assert (=> b!682788 m!647495))

(assert (=> b!682788 m!647469))

(declare-fun m!647497 () Bool)

(assert (=> b!682791 m!647497))

(declare-fun m!647499 () Bool)

(assert (=> b!682798 m!647499))

(declare-fun m!647501 () Bool)

(assert (=> b!682792 m!647501))

(declare-fun m!647503 () Bool)

(assert (=> b!682784 m!647503))

(push 1)

(assert (not b!682798))

(assert (not b!682784))

(assert (not b!682791))

(assert (not b!682789))

(assert (not b!682793))

(assert (not b!682787))

(assert (not b!682790))

(assert (not start!60898))

(assert (not b!682785))

(assert (not b!682792))

(assert (not b!682788))

(assert (not b!682794))

(assert (not b!682786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

