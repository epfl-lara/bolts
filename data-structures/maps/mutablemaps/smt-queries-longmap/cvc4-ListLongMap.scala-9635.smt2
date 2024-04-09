; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113988 () Bool)

(assert start!113988)

(declare-fun b!1351701 () Bool)

(declare-fun e!768568 () Bool)

(declare-fun e!768570 () Bool)

(assert (=> b!1351701 (= e!768568 e!768570)))

(declare-fun res!897271 () Bool)

(assert (=> b!1351701 (=> (not res!897271) (not e!768570))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351701 (= res!897271 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44234 0))(
  ( (Unit!44235) )
))
(declare-fun lt!597263 () Unit!44234)

(declare-fun e!768569 () Unit!44234)

(assert (=> b!1351701 (= lt!597263 e!768569)))

(declare-fun c!126661 () Bool)

(declare-datatypes ((array!92093 0))(
  ( (array!92094 (arr!44490 (Array (_ BitVec 32) (_ BitVec 64))) (size!45041 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92093)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351701 (= c!126661 (validKeyInArray!0 (select (arr!44490 a!3742) from!3120)))))

(declare-fun b!1351702 () Bool)

(assert (=> b!1351702 (= e!768570 false)))

(declare-datatypes ((List!31711 0))(
  ( (Nil!31708) (Cons!31707 (h!32916 (_ BitVec 64)) (t!46376 List!31711)) )
))
(declare-fun acc!759 () List!31711)

(declare-fun lt!597264 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92093 (_ BitVec 32) List!31711) Bool)

(assert (=> b!1351702 (= lt!597264 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351703 () Bool)

(declare-fun res!897268 () Bool)

(assert (=> b!1351703 (=> (not res!897268) (not e!768568))))

(declare-fun contains!9276 (List!31711 (_ BitVec 64)) Bool)

(assert (=> b!1351703 (= res!897268 (not (contains!9276 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351704 () Bool)

(declare-fun res!897270 () Bool)

(assert (=> b!1351704 (=> (not res!897270) (not e!768568))))

(assert (=> b!1351704 (= res!897270 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45041 a!3742)))))

(declare-fun b!1351706 () Bool)

(declare-fun lt!597265 () Unit!44234)

(assert (=> b!1351706 (= e!768569 lt!597265)))

(declare-fun lt!597266 () Unit!44234)

(declare-fun lemmaListSubSeqRefl!0 (List!31711) Unit!44234)

(assert (=> b!1351706 (= lt!597266 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!685 (List!31711 List!31711) Bool)

(assert (=> b!1351706 (subseq!685 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92093 List!31711 List!31711 (_ BitVec 32)) Unit!44234)

(declare-fun $colon$colon!702 (List!31711 (_ BitVec 64)) List!31711)

(assert (=> b!1351706 (= lt!597265 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!702 acc!759 (select (arr!44490 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351706 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351707 () Bool)

(declare-fun res!897272 () Bool)

(assert (=> b!1351707 (=> (not res!897272) (not e!768568))))

(assert (=> b!1351707 (= res!897272 (not (contains!9276 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351708 () Bool)

(declare-fun res!897273 () Bool)

(assert (=> b!1351708 (=> (not res!897273) (not e!768568))))

(declare-fun noDuplicate!2155 (List!31711) Bool)

(assert (=> b!1351708 (= res!897273 (noDuplicate!2155 acc!759))))

(declare-fun b!1351709 () Bool)

(declare-fun res!897267 () Bool)

(assert (=> b!1351709 (=> (not res!897267) (not e!768568))))

(assert (=> b!1351709 (= res!897267 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351710 () Bool)

(declare-fun res!897264 () Bool)

(assert (=> b!1351710 (=> (not res!897264) (not e!768568))))

(assert (=> b!1351710 (= res!897264 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45041 a!3742))))))

(declare-fun b!1351711 () Bool)

(declare-fun res!897269 () Bool)

(assert (=> b!1351711 (=> (not res!897269) (not e!768568))))

(assert (=> b!1351711 (= res!897269 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31708))))

(declare-fun b!1351712 () Bool)

(declare-fun res!897265 () Bool)

(assert (=> b!1351712 (=> (not res!897265) (not e!768568))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351712 (= res!897265 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351705 () Bool)

(declare-fun Unit!44236 () Unit!44234)

(assert (=> b!1351705 (= e!768569 Unit!44236)))

(declare-fun res!897266 () Bool)

(assert (=> start!113988 (=> (not res!897266) (not e!768568))))

(assert (=> start!113988 (= res!897266 (and (bvslt (size!45041 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45041 a!3742))))))

(assert (=> start!113988 e!768568))

(assert (=> start!113988 true))

(declare-fun array_inv!33435 (array!92093) Bool)

(assert (=> start!113988 (array_inv!33435 a!3742)))

(assert (= (and start!113988 res!897266) b!1351708))

(assert (= (and b!1351708 res!897273) b!1351707))

(assert (= (and b!1351707 res!897272) b!1351703))

(assert (= (and b!1351703 res!897268) b!1351711))

(assert (= (and b!1351711 res!897269) b!1351709))

(assert (= (and b!1351709 res!897267) b!1351710))

(assert (= (and b!1351710 res!897264) b!1351712))

(assert (= (and b!1351712 res!897265) b!1351704))

(assert (= (and b!1351704 res!897270) b!1351701))

(assert (= (and b!1351701 c!126661) b!1351706))

(assert (= (and b!1351701 (not c!126661)) b!1351705))

(assert (= (and b!1351701 res!897271) b!1351702))

(declare-fun m!1238697 () Bool)

(assert (=> b!1351706 m!1238697))

(declare-fun m!1238699 () Bool)

(assert (=> b!1351706 m!1238699))

(declare-fun m!1238701 () Bool)

(assert (=> b!1351706 m!1238701))

(declare-fun m!1238703 () Bool)

(assert (=> b!1351706 m!1238703))

(declare-fun m!1238705 () Bool)

(assert (=> b!1351706 m!1238705))

(assert (=> b!1351706 m!1238699))

(assert (=> b!1351706 m!1238701))

(declare-fun m!1238707 () Bool)

(assert (=> b!1351706 m!1238707))

(declare-fun m!1238709 () Bool)

(assert (=> start!113988 m!1238709))

(declare-fun m!1238711 () Bool)

(assert (=> b!1351709 m!1238711))

(declare-fun m!1238713 () Bool)

(assert (=> b!1351707 m!1238713))

(declare-fun m!1238715 () Bool)

(assert (=> b!1351708 m!1238715))

(declare-fun m!1238717 () Bool)

(assert (=> b!1351711 m!1238717))

(assert (=> b!1351701 m!1238699))

(assert (=> b!1351701 m!1238699))

(declare-fun m!1238719 () Bool)

(assert (=> b!1351701 m!1238719))

(assert (=> b!1351702 m!1238705))

(declare-fun m!1238721 () Bool)

(assert (=> b!1351712 m!1238721))

(declare-fun m!1238723 () Bool)

(assert (=> b!1351703 m!1238723))

(push 1)

(assert (not b!1351702))

(assert (not start!113988))

