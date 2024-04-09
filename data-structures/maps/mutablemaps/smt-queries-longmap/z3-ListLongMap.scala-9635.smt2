; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113986 () Bool)

(assert start!113986)

(declare-fun b!1351665 () Bool)

(declare-fun res!897242 () Bool)

(declare-fun e!768557 () Bool)

(assert (=> b!1351665 (=> (not res!897242) (not e!768557))))

(declare-datatypes ((List!31710 0))(
  ( (Nil!31707) (Cons!31706 (h!32915 (_ BitVec 64)) (t!46375 List!31710)) )
))
(declare-fun acc!759 () List!31710)

(declare-datatypes ((array!92091 0))(
  ( (array!92092 (arr!44489 (Array (_ BitVec 32) (_ BitVec 64))) (size!45040 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92091)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92091 (_ BitVec 32) List!31710) Bool)

(assert (=> b!1351665 (= res!897242 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351666 () Bool)

(declare-fun res!897240 () Bool)

(assert (=> b!1351666 (=> (not res!897240) (not e!768557))))

(assert (=> b!1351666 (= res!897240 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45040 a!3742)))))

(declare-fun b!1351667 () Bool)

(declare-fun res!897237 () Bool)

(assert (=> b!1351667 (=> (not res!897237) (not e!768557))))

(assert (=> b!1351667 (= res!897237 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31707))))

(declare-fun b!1351668 () Bool)

(declare-fun e!768559 () Bool)

(assert (=> b!1351668 (= e!768559 false)))

(declare-fun lt!597253 () Bool)

(assert (=> b!1351668 (= lt!597253 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351669 () Bool)

(assert (=> b!1351669 (= e!768557 e!768559)))

(declare-fun res!897243 () Bool)

(assert (=> b!1351669 (=> (not res!897243) (not e!768559))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351669 (= res!897243 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44231 0))(
  ( (Unit!44232) )
))
(declare-fun lt!597251 () Unit!44231)

(declare-fun e!768556 () Unit!44231)

(assert (=> b!1351669 (= lt!597251 e!768556)))

(declare-fun c!126658 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351669 (= c!126658 (validKeyInArray!0 (select (arr!44489 a!3742) from!3120)))))

(declare-fun b!1351671 () Bool)

(declare-fun res!897234 () Bool)

(assert (=> b!1351671 (=> (not res!897234) (not e!768557))))

(declare-fun contains!9275 (List!31710 (_ BitVec 64)) Bool)

(assert (=> b!1351671 (= res!897234 (not (contains!9275 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351672 () Bool)

(declare-fun Unit!44233 () Unit!44231)

(assert (=> b!1351672 (= e!768556 Unit!44233)))

(declare-fun b!1351673 () Bool)

(declare-fun res!897241 () Bool)

(assert (=> b!1351673 (=> (not res!897241) (not e!768557))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351673 (= res!897241 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351674 () Bool)

(declare-fun lt!597252 () Unit!44231)

(assert (=> b!1351674 (= e!768556 lt!597252)))

(declare-fun lt!597254 () Unit!44231)

(declare-fun lemmaListSubSeqRefl!0 (List!31710) Unit!44231)

(assert (=> b!1351674 (= lt!597254 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!684 (List!31710 List!31710) Bool)

(assert (=> b!1351674 (subseq!684 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92091 List!31710 List!31710 (_ BitVec 32)) Unit!44231)

(declare-fun $colon$colon!701 (List!31710 (_ BitVec 64)) List!31710)

(assert (=> b!1351674 (= lt!597252 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!701 acc!759 (select (arr!44489 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351674 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351675 () Bool)

(declare-fun res!897238 () Bool)

(assert (=> b!1351675 (=> (not res!897238) (not e!768557))))

(assert (=> b!1351675 (= res!897238 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45040 a!3742))))))

(declare-fun b!1351676 () Bool)

(declare-fun res!897236 () Bool)

(assert (=> b!1351676 (=> (not res!897236) (not e!768557))))

(declare-fun noDuplicate!2154 (List!31710) Bool)

(assert (=> b!1351676 (= res!897236 (noDuplicate!2154 acc!759))))

(declare-fun b!1351670 () Bool)

(declare-fun res!897235 () Bool)

(assert (=> b!1351670 (=> (not res!897235) (not e!768557))))

(assert (=> b!1351670 (= res!897235 (not (contains!9275 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!897239 () Bool)

(assert (=> start!113986 (=> (not res!897239) (not e!768557))))

(assert (=> start!113986 (= res!897239 (and (bvslt (size!45040 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45040 a!3742))))))

(assert (=> start!113986 e!768557))

(assert (=> start!113986 true))

(declare-fun array_inv!33434 (array!92091) Bool)

(assert (=> start!113986 (array_inv!33434 a!3742)))

(assert (= (and start!113986 res!897239) b!1351676))

(assert (= (and b!1351676 res!897236) b!1351670))

(assert (= (and b!1351670 res!897235) b!1351671))

(assert (= (and b!1351671 res!897234) b!1351667))

(assert (= (and b!1351667 res!897237) b!1351665))

(assert (= (and b!1351665 res!897242) b!1351675))

(assert (= (and b!1351675 res!897238) b!1351673))

(assert (= (and b!1351673 res!897241) b!1351666))

(assert (= (and b!1351666 res!897240) b!1351669))

(assert (= (and b!1351669 c!126658) b!1351674))

(assert (= (and b!1351669 (not c!126658)) b!1351672))

(assert (= (and b!1351669 res!897243) b!1351668))

(declare-fun m!1238669 () Bool)

(assert (=> b!1351669 m!1238669))

(assert (=> b!1351669 m!1238669))

(declare-fun m!1238671 () Bool)

(assert (=> b!1351669 m!1238671))

(declare-fun m!1238673 () Bool)

(assert (=> b!1351676 m!1238673))

(declare-fun m!1238675 () Bool)

(assert (=> b!1351667 m!1238675))

(declare-fun m!1238677 () Bool)

(assert (=> b!1351671 m!1238677))

(declare-fun m!1238679 () Bool)

(assert (=> b!1351673 m!1238679))

(declare-fun m!1238681 () Bool)

(assert (=> b!1351665 m!1238681))

(declare-fun m!1238683 () Bool)

(assert (=> b!1351668 m!1238683))

(declare-fun m!1238685 () Bool)

(assert (=> start!113986 m!1238685))

(declare-fun m!1238687 () Bool)

(assert (=> b!1351674 m!1238687))

(assert (=> b!1351674 m!1238669))

(declare-fun m!1238689 () Bool)

(assert (=> b!1351674 m!1238689))

(declare-fun m!1238691 () Bool)

(assert (=> b!1351674 m!1238691))

(assert (=> b!1351674 m!1238683))

(assert (=> b!1351674 m!1238669))

(assert (=> b!1351674 m!1238689))

(declare-fun m!1238693 () Bool)

(assert (=> b!1351674 m!1238693))

(declare-fun m!1238695 () Bool)

(assert (=> b!1351670 m!1238695))

(check-sat (not start!113986) (not b!1351676) (not b!1351674) (not b!1351667) (not b!1351668) (not b!1351669) (not b!1351673) (not b!1351670) (not b!1351671) (not b!1351665))
(check-sat)
