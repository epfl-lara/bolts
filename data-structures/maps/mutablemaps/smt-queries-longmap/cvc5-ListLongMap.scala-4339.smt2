; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60078 () Bool)

(assert start!60078)

(declare-fun b!668684 () Bool)

(declare-datatypes ((Unit!23440 0))(
  ( (Unit!23441) )
))
(declare-fun e!382545 () Unit!23440)

(declare-fun lt!311347 () Unit!23440)

(assert (=> b!668684 (= e!382545 lt!311347)))

(declare-fun lt!311350 () Unit!23440)

(declare-datatypes ((List!12823 0))(
  ( (Nil!12820) (Cons!12819 (h!13864 (_ BitVec 64)) (t!19059 List!12823)) )
))
(declare-fun acc!681 () List!12823)

(declare-fun lemmaListSubSeqRefl!0 (List!12823) Unit!23440)

(assert (=> b!668684 (= lt!311350 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!104 (List!12823 List!12823) Bool)

(assert (=> b!668684 (subseq!104 acc!681 acc!681)))

(declare-datatypes ((array!39081 0))(
  ( (array!39082 (arr!18729 (Array (_ BitVec 32) (_ BitVec 64))) (size!19093 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39081)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39081 List!12823 List!12823 (_ BitVec 32)) Unit!23440)

(declare-fun $colon$colon!235 (List!12823 (_ BitVec 64)) List!12823)

(assert (=> b!668684 (= lt!311347 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!235 acc!681 (select (arr!18729 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39081 (_ BitVec 32) List!12823) Bool)

(assert (=> b!668684 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668685 () Bool)

(declare-fun res!435835 () Bool)

(declare-fun e!382543 () Bool)

(assert (=> b!668685 (=> res!435835 e!382543)))

(declare-fun lt!311346 () List!12823)

(declare-fun contains!3366 (List!12823 (_ BitVec 64)) Bool)

(assert (=> b!668685 (= res!435835 (contains!3366 lt!311346 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668686 () Bool)

(declare-fun res!435849 () Bool)

(declare-fun e!382548 () Bool)

(assert (=> b!668686 (=> (not res!435849) (not e!382548))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668686 (= res!435849 (validKeyInArray!0 k!2843))))

(declare-fun b!668687 () Bool)

(declare-fun e!382542 () Unit!23440)

(declare-fun Unit!23442 () Unit!23440)

(assert (=> b!668687 (= e!382542 Unit!23442)))

(declare-fun b!668688 () Bool)

(assert (=> b!668688 (= e!382543 true)))

(declare-fun lt!311349 () Bool)

(declare-fun e!382546 () Bool)

(assert (=> b!668688 (= lt!311349 e!382546)))

(declare-fun res!435836 () Bool)

(assert (=> b!668688 (=> res!435836 e!382546)))

(declare-fun e!382550 () Bool)

(assert (=> b!668688 (= res!435836 e!382550)))

(declare-fun res!435847 () Bool)

(assert (=> b!668688 (=> (not res!435847) (not e!382550))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668688 (= res!435847 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!435845 () Bool)

(assert (=> start!60078 (=> (not res!435845) (not e!382548))))

(assert (=> start!60078 (= res!435845 (and (bvslt (size!19093 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19093 a!3626))))))

(assert (=> start!60078 e!382548))

(assert (=> start!60078 true))

(declare-fun array_inv!14503 (array!39081) Bool)

(assert (=> start!60078 (array_inv!14503 a!3626)))

(declare-fun b!668689 () Bool)

(declare-fun res!435840 () Bool)

(assert (=> b!668689 (=> (not res!435840) (not e!382548))))

(assert (=> b!668689 (= res!435840 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668690 () Bool)

(declare-fun res!435837 () Bool)

(assert (=> b!668690 (=> (not res!435837) (not e!382548))))

(assert (=> b!668690 (= res!435837 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19093 a!3626))))))

(declare-fun b!668691 () Bool)

(declare-fun e!382544 () Bool)

(assert (=> b!668691 (= e!382546 e!382544)))

(declare-fun res!435852 () Bool)

(assert (=> b!668691 (=> (not res!435852) (not e!382544))))

(assert (=> b!668691 (= res!435852 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668692 () Bool)

(declare-fun res!435846 () Bool)

(assert (=> b!668692 (=> (not res!435846) (not e!382548))))

(assert (=> b!668692 (= res!435846 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19093 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668693 () Bool)

(declare-fun res!435851 () Bool)

(assert (=> b!668693 (=> res!435851 e!382543)))

(assert (=> b!668693 (= res!435851 (contains!3366 lt!311346 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668694 () Bool)

(assert (=> b!668694 (= e!382550 (contains!3366 lt!311346 k!2843))))

(declare-fun b!668695 () Bool)

(declare-fun e!382552 () Bool)

(assert (=> b!668695 (= e!382552 (not (contains!3366 acc!681 k!2843)))))

(declare-fun b!668696 () Bool)

(declare-fun res!435841 () Bool)

(assert (=> b!668696 (=> (not res!435841) (not e!382548))))

(assert (=> b!668696 (= res!435841 (not (contains!3366 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668697 () Bool)

(declare-fun res!435843 () Bool)

(assert (=> b!668697 (=> (not res!435843) (not e!382548))))

(declare-fun arrayContainsKey!0 (array!39081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668697 (= res!435843 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668698 () Bool)

(assert (=> b!668698 (= e!382544 (not (contains!3366 lt!311346 k!2843)))))

(declare-fun b!668699 () Bool)

(declare-fun res!435853 () Bool)

(assert (=> b!668699 (=> (not res!435853) (not e!382548))))

(assert (=> b!668699 (= res!435853 (not (contains!3366 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668700 () Bool)

(declare-fun Unit!23443 () Unit!23440)

(assert (=> b!668700 (= e!382545 Unit!23443)))

(declare-fun b!668701 () Bool)

(declare-fun Unit!23444 () Unit!23440)

(assert (=> b!668701 (= e!382542 Unit!23444)))

(declare-fun lt!311348 () Unit!23440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39081 (_ BitVec 64) (_ BitVec 32)) Unit!23440)

(assert (=> b!668701 (= lt!311348 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668701 false))

(declare-fun b!668702 () Bool)

(declare-fun res!435850 () Bool)

(assert (=> b!668702 (=> (not res!435850) (not e!382548))))

(declare-fun noDuplicate!613 (List!12823) Bool)

(assert (=> b!668702 (= res!435850 (noDuplicate!613 acc!681))))

(declare-fun b!668703 () Bool)

(declare-fun res!435854 () Bool)

(assert (=> b!668703 (=> (not res!435854) (not e!382548))))

(assert (=> b!668703 (= res!435854 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12820))))

(declare-fun b!668704 () Bool)

(declare-fun e!382549 () Bool)

(assert (=> b!668704 (= e!382549 (contains!3366 acc!681 k!2843))))

(declare-fun b!668705 () Bool)

(assert (=> b!668705 (= e!382548 (not e!382543))))

(declare-fun res!435834 () Bool)

(assert (=> b!668705 (=> res!435834 e!382543)))

(assert (=> b!668705 (= res!435834 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668705 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311346)))

(declare-fun lt!311343 () Unit!23440)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39081 (_ BitVec 64) (_ BitVec 32) List!12823 List!12823) Unit!23440)

(assert (=> b!668705 (= lt!311343 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311346))))

(declare-fun -!102 (List!12823 (_ BitVec 64)) List!12823)

(assert (=> b!668705 (= (-!102 lt!311346 k!2843) acc!681)))

(assert (=> b!668705 (= lt!311346 ($colon$colon!235 acc!681 k!2843))))

(declare-fun lt!311344 () Unit!23440)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12823) Unit!23440)

(assert (=> b!668705 (= lt!311344 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!668705 (subseq!104 acc!681 acc!681)))

(declare-fun lt!311352 () Unit!23440)

(assert (=> b!668705 (= lt!311352 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668705 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311351 () Unit!23440)

(assert (=> b!668705 (= lt!311351 e!382545)))

(declare-fun c!76792 () Bool)

(assert (=> b!668705 (= c!76792 (validKeyInArray!0 (select (arr!18729 a!3626) from!3004)))))

(declare-fun lt!311345 () Unit!23440)

(assert (=> b!668705 (= lt!311345 e!382542)))

(declare-fun c!76793 () Bool)

(assert (=> b!668705 (= c!76793 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668705 (arrayContainsKey!0 (array!39082 (store (arr!18729 a!3626) i!1382 k!2843) (size!19093 a!3626)) k!2843 from!3004)))

(declare-fun b!668706 () Bool)

(declare-fun e!382547 () Bool)

(assert (=> b!668706 (= e!382547 e!382552)))

(declare-fun res!435844 () Bool)

(assert (=> b!668706 (=> (not res!435844) (not e!382552))))

(assert (=> b!668706 (= res!435844 (bvsle from!3004 i!1382))))

(declare-fun b!668707 () Bool)

(declare-fun res!435839 () Bool)

(assert (=> b!668707 (=> (not res!435839) (not e!382548))))

(assert (=> b!668707 (= res!435839 e!382547)))

(declare-fun res!435842 () Bool)

(assert (=> b!668707 (=> res!435842 e!382547)))

(assert (=> b!668707 (= res!435842 e!382549)))

(declare-fun res!435848 () Bool)

(assert (=> b!668707 (=> (not res!435848) (not e!382549))))

(assert (=> b!668707 (= res!435848 (bvsgt from!3004 i!1382))))

(declare-fun b!668708 () Bool)

(declare-fun res!435838 () Bool)

(assert (=> b!668708 (=> res!435838 e!382543)))

(assert (=> b!668708 (= res!435838 (not (noDuplicate!613 lt!311346)))))

(assert (= (and start!60078 res!435845) b!668702))

(assert (= (and b!668702 res!435850) b!668696))

(assert (= (and b!668696 res!435841) b!668699))

(assert (= (and b!668699 res!435853) b!668707))

(assert (= (and b!668707 res!435848) b!668704))

(assert (= (and b!668707 (not res!435842)) b!668706))

(assert (= (and b!668706 res!435844) b!668695))

(assert (= (and b!668707 res!435839) b!668703))

(assert (= (and b!668703 res!435854) b!668689))

(assert (= (and b!668689 res!435840) b!668690))

(assert (= (and b!668690 res!435837) b!668686))

(assert (= (and b!668686 res!435849) b!668697))

(assert (= (and b!668697 res!435843) b!668692))

(assert (= (and b!668692 res!435846) b!668705))

(assert (= (and b!668705 c!76793) b!668701))

(assert (= (and b!668705 (not c!76793)) b!668687))

(assert (= (and b!668705 c!76792) b!668684))

(assert (= (and b!668705 (not c!76792)) b!668700))

(assert (= (and b!668705 (not res!435834)) b!668708))

(assert (= (and b!668708 (not res!435838)) b!668693))

(assert (= (and b!668693 (not res!435851)) b!668685))

(assert (= (and b!668685 (not res!435835)) b!668688))

(assert (= (and b!668688 res!435847) b!668694))

(assert (= (and b!668688 (not res!435836)) b!668691))

(assert (= (and b!668691 res!435852) b!668698))

(declare-fun m!638973 () Bool)

(assert (=> b!668689 m!638973))

(declare-fun m!638975 () Bool)

(assert (=> b!668685 m!638975))

(declare-fun m!638977 () Bool)

(assert (=> b!668708 m!638977))

(declare-fun m!638979 () Bool)

(assert (=> b!668695 m!638979))

(declare-fun m!638981 () Bool)

(assert (=> b!668699 m!638981))

(declare-fun m!638983 () Bool)

(assert (=> b!668686 m!638983))

(declare-fun m!638985 () Bool)

(assert (=> b!668693 m!638985))

(assert (=> b!668704 m!638979))

(declare-fun m!638987 () Bool)

(assert (=> b!668703 m!638987))

(declare-fun m!638989 () Bool)

(assert (=> start!60078 m!638989))

(declare-fun m!638991 () Bool)

(assert (=> b!668701 m!638991))

(declare-fun m!638993 () Bool)

(assert (=> b!668694 m!638993))

(declare-fun m!638995 () Bool)

(assert (=> b!668705 m!638995))

(declare-fun m!638997 () Bool)

(assert (=> b!668705 m!638997))

(declare-fun m!638999 () Bool)

(assert (=> b!668705 m!638999))

(declare-fun m!639001 () Bool)

(assert (=> b!668705 m!639001))

(declare-fun m!639003 () Bool)

(assert (=> b!668705 m!639003))

(declare-fun m!639005 () Bool)

(assert (=> b!668705 m!639005))

(declare-fun m!639007 () Bool)

(assert (=> b!668705 m!639007))

(declare-fun m!639009 () Bool)

(assert (=> b!668705 m!639009))

(declare-fun m!639011 () Bool)

(assert (=> b!668705 m!639011))

(declare-fun m!639013 () Bool)

(assert (=> b!668705 m!639013))

(assert (=> b!668705 m!638999))

(declare-fun m!639015 () Bool)

(assert (=> b!668705 m!639015))

(declare-fun m!639017 () Bool)

(assert (=> b!668705 m!639017))

(declare-fun m!639019 () Bool)

(assert (=> b!668705 m!639019))

(declare-fun m!639021 () Bool)

(assert (=> b!668696 m!639021))

(assert (=> b!668698 m!638993))

(assert (=> b!668684 m!638995))

(assert (=> b!668684 m!638999))

(declare-fun m!639023 () Bool)

(assert (=> b!668684 m!639023))

(declare-fun m!639025 () Bool)

(assert (=> b!668684 m!639025))

(assert (=> b!668684 m!638999))

(assert (=> b!668684 m!639023))

(assert (=> b!668684 m!639009))

(assert (=> b!668684 m!639019))

(declare-fun m!639027 () Bool)

(assert (=> b!668702 m!639027))

(declare-fun m!639029 () Bool)

(assert (=> b!668697 m!639029))

(push 1)

(assert (not b!668701))

(assert (not b!668702))

(assert (not b!668685))

(assert (not b!668704))

(assert (not b!668686))

(assert (not b!668689))

(assert (not b!668696))

(assert (not b!668694))

(assert (not start!60078))

(assert (not b!668703))

(assert (not b!668684))

(assert (not b!668695))

(assert (not b!668705))

(assert (not b!668708))

(assert (not b!668699))

(assert (not b!668697))

(assert (not b!668693))

(assert (not b!668698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

