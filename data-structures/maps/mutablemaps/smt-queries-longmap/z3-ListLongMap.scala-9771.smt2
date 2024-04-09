; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115834 () Bool)

(assert start!115834)

(declare-fun b!1369018 () Bool)

(declare-fun res!912621 () Bool)

(declare-fun e!775599 () Bool)

(assert (=> b!1369018 (=> (not res!912621) (not e!775599))))

(declare-datatypes ((array!92904 0))(
  ( (array!92905 (arr!44870 (Array (_ BitVec 32) (_ BitVec 64))) (size!45421 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92904)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369018 (= res!912621 (not (validKeyInArray!0 (select (arr!44870 a!3861) from!3239))))))

(declare-fun b!1369019 () Bool)

(declare-fun res!912625 () Bool)

(declare-fun e!775598 () Bool)

(assert (=> b!1369019 (=> (not res!912625) (not e!775598))))

(declare-datatypes ((List!32118 0))(
  ( (Nil!32115) (Cons!32114 (h!33323 (_ BitVec 64)) (t!46819 List!32118)) )
))
(declare-fun acc!866 () List!32118)

(declare-fun contains!9656 (List!32118 (_ BitVec 64)) Bool)

(assert (=> b!1369019 (= res!912625 (not (contains!9656 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369020 () Bool)

(assert (=> b!1369020 (= e!775598 e!775599)))

(declare-fun res!912626 () Bool)

(assert (=> b!1369020 (=> (not res!912626) (not e!775599))))

(declare-fun arrayNoDuplicates!0 (array!92904 (_ BitVec 32) List!32118) Bool)

(assert (=> b!1369020 (= res!912626 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45175 0))(
  ( (Unit!45176) )
))
(declare-fun lt!602124 () Unit!45175)

(declare-fun newAcc!98 () List!32118)

(declare-fun noDuplicateSubseq!234 (List!32118 List!32118) Unit!45175)

(assert (=> b!1369020 (= lt!602124 (noDuplicateSubseq!234 newAcc!98 acc!866))))

(declare-fun b!1369021 () Bool)

(declare-fun res!912622 () Bool)

(assert (=> b!1369021 (=> (not res!912622) (not e!775599))))

(assert (=> b!1369021 (= res!912622 (bvslt from!3239 (size!45421 a!3861)))))

(declare-fun b!1369022 () Bool)

(declare-fun res!912617 () Bool)

(assert (=> b!1369022 (=> (not res!912617) (not e!775598))))

(declare-fun noDuplicate!2535 (List!32118) Bool)

(assert (=> b!1369022 (= res!912617 (noDuplicate!2535 acc!866))))

(declare-fun b!1369023 () Bool)

(declare-fun res!912620 () Bool)

(assert (=> b!1369023 (=> (not res!912620) (not e!775598))))

(assert (=> b!1369023 (= res!912620 (not (contains!9656 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369017 () Bool)

(declare-fun res!912624 () Bool)

(assert (=> b!1369017 (=> (not res!912624) (not e!775598))))

(declare-fun subseq!1047 (List!32118 List!32118) Bool)

(assert (=> b!1369017 (= res!912624 (subseq!1047 newAcc!98 acc!866))))

(declare-fun res!912627 () Bool)

(assert (=> start!115834 (=> (not res!912627) (not e!775598))))

(assert (=> start!115834 (= res!912627 (and (bvslt (size!45421 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45421 a!3861))))))

(assert (=> start!115834 e!775598))

(declare-fun array_inv!33815 (array!92904) Bool)

(assert (=> start!115834 (array_inv!33815 a!3861)))

(assert (=> start!115834 true))

(declare-fun b!1369024 () Bool)

(assert (=> b!1369024 (= e!775599 (not true))))

(declare-fun lt!602126 () Bool)

(assert (=> b!1369024 (= lt!602126 (noDuplicate!2535 newAcc!98))))

(assert (=> b!1369024 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602125 () Unit!45175)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92904 List!32118 List!32118 (_ BitVec 32)) Unit!45175)

(assert (=> b!1369024 (= lt!602125 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1369025 () Bool)

(declare-fun res!912616 () Bool)

(assert (=> b!1369025 (=> (not res!912616) (not e!775598))))

(assert (=> b!1369025 (= res!912616 (not (contains!9656 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369026 () Bool)

(declare-fun res!912618 () Bool)

(assert (=> b!1369026 (=> (not res!912618) (not e!775599))))

(assert (=> b!1369026 (= res!912618 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1369027 () Bool)

(declare-fun res!912623 () Bool)

(assert (=> b!1369027 (=> (not res!912623) (not e!775599))))

(assert (=> b!1369027 (= res!912623 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1369028 () Bool)

(declare-fun res!912619 () Bool)

(assert (=> b!1369028 (=> (not res!912619) (not e!775598))))

(assert (=> b!1369028 (= res!912619 (not (contains!9656 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115834 res!912627) b!1369022))

(assert (= (and b!1369022 res!912617) b!1369019))

(assert (= (and b!1369019 res!912625) b!1369023))

(assert (= (and b!1369023 res!912620) b!1369028))

(assert (= (and b!1369028 res!912619) b!1369025))

(assert (= (and b!1369025 res!912616) b!1369017))

(assert (= (and b!1369017 res!912624) b!1369020))

(assert (= (and b!1369020 res!912626) b!1369021))

(assert (= (and b!1369021 res!912622) b!1369018))

(assert (= (and b!1369018 res!912621) b!1369026))

(assert (= (and b!1369026 res!912618) b!1369027))

(assert (= (and b!1369027 res!912623) b!1369024))

(declare-fun m!1252891 () Bool)

(assert (=> b!1369022 m!1252891))

(declare-fun m!1252893 () Bool)

(assert (=> b!1369019 m!1252893))

(declare-fun m!1252895 () Bool)

(assert (=> b!1369025 m!1252895))

(declare-fun m!1252897 () Bool)

(assert (=> b!1369023 m!1252897))

(declare-fun m!1252899 () Bool)

(assert (=> b!1369028 m!1252899))

(declare-fun m!1252901 () Bool)

(assert (=> start!115834 m!1252901))

(declare-fun m!1252903 () Bool)

(assert (=> b!1369020 m!1252903))

(declare-fun m!1252905 () Bool)

(assert (=> b!1369020 m!1252905))

(declare-fun m!1252907 () Bool)

(assert (=> b!1369027 m!1252907))

(declare-fun m!1252909 () Bool)

(assert (=> b!1369018 m!1252909))

(assert (=> b!1369018 m!1252909))

(declare-fun m!1252911 () Bool)

(assert (=> b!1369018 m!1252911))

(declare-fun m!1252913 () Bool)

(assert (=> b!1369017 m!1252913))

(declare-fun m!1252915 () Bool)

(assert (=> b!1369024 m!1252915))

(declare-fun m!1252917 () Bool)

(assert (=> b!1369024 m!1252917))

(declare-fun m!1252919 () Bool)

(assert (=> b!1369024 m!1252919))

(check-sat (not b!1369027) (not b!1369023) (not b!1369022) (not b!1369024) (not b!1369020) (not b!1369018) (not b!1369025) (not b!1369028) (not b!1369019) (not b!1369017) (not start!115834))
(check-sat)
