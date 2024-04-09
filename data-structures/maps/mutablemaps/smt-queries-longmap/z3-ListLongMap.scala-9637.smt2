; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113998 () Bool)

(assert start!113998)

(declare-fun b!1351881 () Bool)

(declare-fun e!768629 () Bool)

(declare-fun e!768628 () Bool)

(assert (=> b!1351881 (= e!768629 e!768628)))

(declare-fun res!897414 () Bool)

(assert (=> b!1351881 (=> (not res!897414) (not e!768628))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351881 (= res!897414 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44249 0))(
  ( (Unit!44250) )
))
(declare-fun lt!597323 () Unit!44249)

(declare-fun e!768630 () Unit!44249)

(assert (=> b!1351881 (= lt!597323 e!768630)))

(declare-fun c!126676 () Bool)

(declare-datatypes ((array!92103 0))(
  ( (array!92104 (arr!44495 (Array (_ BitVec 32) (_ BitVec 64))) (size!45046 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92103)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351881 (= c!126676 (validKeyInArray!0 (select (arr!44495 a!3742) from!3120)))))

(declare-fun b!1351882 () Bool)

(declare-fun res!897421 () Bool)

(assert (=> b!1351882 (=> (not res!897421) (not e!768629))))

(declare-datatypes ((List!31716 0))(
  ( (Nil!31713) (Cons!31712 (h!32921 (_ BitVec 64)) (t!46381 List!31716)) )
))
(declare-fun acc!759 () List!31716)

(declare-fun contains!9281 (List!31716 (_ BitVec 64)) Bool)

(assert (=> b!1351882 (= res!897421 (not (contains!9281 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351884 () Bool)

(declare-fun res!897415 () Bool)

(assert (=> b!1351884 (=> (not res!897415) (not e!768629))))

(assert (=> b!1351884 (= res!897415 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45046 a!3742))))))

(declare-fun b!1351885 () Bool)

(declare-fun res!897420 () Bool)

(assert (=> b!1351885 (=> (not res!897420) (not e!768629))))

(declare-fun noDuplicate!2160 (List!31716) Bool)

(assert (=> b!1351885 (= res!897420 (noDuplicate!2160 acc!759))))

(declare-fun b!1351886 () Bool)

(assert (=> b!1351886 (= e!768628 false)))

(declare-fun lt!597326 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92103 (_ BitVec 32) List!31716) Bool)

(assert (=> b!1351886 (= lt!597326 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351887 () Bool)

(declare-fun res!897416 () Bool)

(assert (=> b!1351887 (=> (not res!897416) (not e!768629))))

(assert (=> b!1351887 (= res!897416 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31713))))

(declare-fun b!1351888 () Bool)

(declare-fun Unit!44251 () Unit!44249)

(assert (=> b!1351888 (= e!768630 Unit!44251)))

(declare-fun b!1351889 () Bool)

(declare-fun res!897419 () Bool)

(assert (=> b!1351889 (=> (not res!897419) (not e!768629))))

(assert (=> b!1351889 (= res!897419 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351890 () Bool)

(declare-fun res!897423 () Bool)

(assert (=> b!1351890 (=> (not res!897423) (not e!768629))))

(assert (=> b!1351890 (= res!897423 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45046 a!3742)))))

(declare-fun b!1351891 () Bool)

(declare-fun lt!597324 () Unit!44249)

(assert (=> b!1351891 (= e!768630 lt!597324)))

(declare-fun lt!597325 () Unit!44249)

(declare-fun lemmaListSubSeqRefl!0 (List!31716) Unit!44249)

(assert (=> b!1351891 (= lt!597325 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!690 (List!31716 List!31716) Bool)

(assert (=> b!1351891 (subseq!690 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92103 List!31716 List!31716 (_ BitVec 32)) Unit!44249)

(declare-fun $colon$colon!707 (List!31716 (_ BitVec 64)) List!31716)

(assert (=> b!1351891 (= lt!597324 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!707 acc!759 (select (arr!44495 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351891 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351892 () Bool)

(declare-fun res!897417 () Bool)

(assert (=> b!1351892 (=> (not res!897417) (not e!768629))))

(assert (=> b!1351892 (= res!897417 (not (contains!9281 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!897422 () Bool)

(assert (=> start!113998 (=> (not res!897422) (not e!768629))))

(assert (=> start!113998 (= res!897422 (and (bvslt (size!45046 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45046 a!3742))))))

(assert (=> start!113998 e!768629))

(assert (=> start!113998 true))

(declare-fun array_inv!33440 (array!92103) Bool)

(assert (=> start!113998 (array_inv!33440 a!3742)))

(declare-fun b!1351883 () Bool)

(declare-fun res!897418 () Bool)

(assert (=> b!1351883 (=> (not res!897418) (not e!768629))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351883 (= res!897418 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!113998 res!897422) b!1351885))

(assert (= (and b!1351885 res!897420) b!1351892))

(assert (= (and b!1351892 res!897417) b!1351882))

(assert (= (and b!1351882 res!897421) b!1351887))

(assert (= (and b!1351887 res!897416) b!1351889))

(assert (= (and b!1351889 res!897419) b!1351884))

(assert (= (and b!1351884 res!897415) b!1351883))

(assert (= (and b!1351883 res!897418) b!1351890))

(assert (= (and b!1351890 res!897423) b!1351881))

(assert (= (and b!1351881 c!126676) b!1351891))

(assert (= (and b!1351881 (not c!126676)) b!1351888))

(assert (= (and b!1351881 res!897414) b!1351886))

(declare-fun m!1238837 () Bool)

(assert (=> b!1351889 m!1238837))

(declare-fun m!1238839 () Bool)

(assert (=> start!113998 m!1238839))

(declare-fun m!1238841 () Bool)

(assert (=> b!1351891 m!1238841))

(declare-fun m!1238843 () Bool)

(assert (=> b!1351891 m!1238843))

(declare-fun m!1238845 () Bool)

(assert (=> b!1351891 m!1238845))

(declare-fun m!1238847 () Bool)

(assert (=> b!1351891 m!1238847))

(declare-fun m!1238849 () Bool)

(assert (=> b!1351891 m!1238849))

(assert (=> b!1351891 m!1238843))

(assert (=> b!1351891 m!1238845))

(declare-fun m!1238851 () Bool)

(assert (=> b!1351891 m!1238851))

(declare-fun m!1238853 () Bool)

(assert (=> b!1351892 m!1238853))

(declare-fun m!1238855 () Bool)

(assert (=> b!1351885 m!1238855))

(declare-fun m!1238857 () Bool)

(assert (=> b!1351883 m!1238857))

(assert (=> b!1351881 m!1238843))

(assert (=> b!1351881 m!1238843))

(declare-fun m!1238859 () Bool)

(assert (=> b!1351881 m!1238859))

(declare-fun m!1238861 () Bool)

(assert (=> b!1351882 m!1238861))

(assert (=> b!1351886 m!1238849))

(declare-fun m!1238863 () Bool)

(assert (=> b!1351887 m!1238863))

(check-sat (not b!1351882) (not b!1351883) (not b!1351886) (not b!1351891) (not start!113998) (not b!1351881) (not b!1351892) (not b!1351885) (not b!1351887) (not b!1351889))
(check-sat)
