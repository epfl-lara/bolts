; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114022 () Bool)

(assert start!114022)

(declare-fun b!1352313 () Bool)

(declare-fun e!768774 () Bool)

(declare-fun e!768773 () Bool)

(assert (=> b!1352313 (= e!768774 e!768773)))

(declare-fun res!897782 () Bool)

(assert (=> b!1352313 (=> (not res!897782) (not e!768773))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352313 (= res!897782 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44285 0))(
  ( (Unit!44286) )
))
(declare-fun lt!597467 () Unit!44285)

(declare-fun e!768772 () Unit!44285)

(assert (=> b!1352313 (= lt!597467 e!768772)))

(declare-fun c!126712 () Bool)

(declare-datatypes ((array!92127 0))(
  ( (array!92128 (arr!44507 (Array (_ BitVec 32) (_ BitVec 64))) (size!45058 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92127)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352313 (= c!126712 (validKeyInArray!0 (select (arr!44507 a!3742) from!3120)))))

(declare-fun b!1352314 () Bool)

(declare-fun lt!597468 () Unit!44285)

(assert (=> b!1352314 (= e!768772 lt!597468)))

(declare-fun lt!597469 () Unit!44285)

(declare-datatypes ((List!31728 0))(
  ( (Nil!31725) (Cons!31724 (h!32933 (_ BitVec 64)) (t!46393 List!31728)) )
))
(declare-fun acc!759 () List!31728)

(declare-fun lemmaListSubSeqRefl!0 (List!31728) Unit!44285)

(assert (=> b!1352314 (= lt!597469 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!702 (List!31728 List!31728) Bool)

(assert (=> b!1352314 (subseq!702 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92127 List!31728 List!31728 (_ BitVec 32)) Unit!44285)

(declare-fun $colon$colon!719 (List!31728 (_ BitVec 64)) List!31728)

(assert (=> b!1352314 (= lt!597468 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!719 acc!759 (select (arr!44507 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92127 (_ BitVec 32) List!31728) Bool)

(assert (=> b!1352314 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352315 () Bool)

(declare-fun res!897780 () Bool)

(assert (=> b!1352315 (=> (not res!897780) (not e!768774))))

(assert (=> b!1352315 (= res!897780 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31725))))

(declare-fun b!1352316 () Bool)

(declare-fun res!897776 () Bool)

(assert (=> b!1352316 (=> (not res!897776) (not e!768774))))

(assert (=> b!1352316 (= res!897776 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352317 () Bool)

(declare-fun res!897777 () Bool)

(assert (=> b!1352317 (=> (not res!897777) (not e!768774))))

(assert (=> b!1352317 (= res!897777 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45058 a!3742)))))

(declare-fun b!1352318 () Bool)

(assert (=> b!1352318 (= e!768773 false)))

(declare-fun lt!597470 () Bool)

(assert (=> b!1352318 (= lt!597470 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352319 () Bool)

(declare-fun res!897775 () Bool)

(assert (=> b!1352319 (=> (not res!897775) (not e!768774))))

(declare-fun contains!9293 (List!31728 (_ BitVec 64)) Bool)

(assert (=> b!1352319 (= res!897775 (not (contains!9293 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352320 () Bool)

(declare-fun res!897778 () Bool)

(assert (=> b!1352320 (=> (not res!897778) (not e!768774))))

(assert (=> b!1352320 (= res!897778 (not (contains!9293 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352321 () Bool)

(declare-fun res!897774 () Bool)

(assert (=> b!1352321 (=> (not res!897774) (not e!768774))))

(declare-fun noDuplicate!2172 (List!31728) Bool)

(assert (=> b!1352321 (= res!897774 (noDuplicate!2172 acc!759))))

(declare-fun b!1352322 () Bool)

(declare-fun res!897779 () Bool)

(assert (=> b!1352322 (=> (not res!897779) (not e!768774))))

(assert (=> b!1352322 (= res!897779 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45058 a!3742))))))

(declare-fun res!897781 () Bool)

(assert (=> start!114022 (=> (not res!897781) (not e!768774))))

(assert (=> start!114022 (= res!897781 (and (bvslt (size!45058 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45058 a!3742))))))

(assert (=> start!114022 e!768774))

(assert (=> start!114022 true))

(declare-fun array_inv!33452 (array!92127) Bool)

(assert (=> start!114022 (array_inv!33452 a!3742)))

(declare-fun b!1352323 () Bool)

(declare-fun Unit!44287 () Unit!44285)

(assert (=> b!1352323 (= e!768772 Unit!44287)))

(declare-fun b!1352324 () Bool)

(declare-fun res!897783 () Bool)

(assert (=> b!1352324 (=> (not res!897783) (not e!768774))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352324 (= res!897783 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114022 res!897781) b!1352321))

(assert (= (and b!1352321 res!897774) b!1352320))

(assert (= (and b!1352320 res!897778) b!1352319))

(assert (= (and b!1352319 res!897775) b!1352315))

(assert (= (and b!1352315 res!897780) b!1352316))

(assert (= (and b!1352316 res!897776) b!1352322))

(assert (= (and b!1352322 res!897779) b!1352324))

(assert (= (and b!1352324 res!897783) b!1352317))

(assert (= (and b!1352317 res!897777) b!1352313))

(assert (= (and b!1352313 c!126712) b!1352314))

(assert (= (and b!1352313 (not c!126712)) b!1352323))

(assert (= (and b!1352313 res!897782) b!1352318))

(declare-fun m!1239173 () Bool)

(assert (=> b!1352316 m!1239173))

(declare-fun m!1239175 () Bool)

(assert (=> b!1352315 m!1239175))

(declare-fun m!1239177 () Bool)

(assert (=> b!1352321 m!1239177))

(declare-fun m!1239179 () Bool)

(assert (=> start!114022 m!1239179))

(declare-fun m!1239181 () Bool)

(assert (=> b!1352319 m!1239181))

(declare-fun m!1239183 () Bool)

(assert (=> b!1352320 m!1239183))

(declare-fun m!1239185 () Bool)

(assert (=> b!1352318 m!1239185))

(declare-fun m!1239187 () Bool)

(assert (=> b!1352324 m!1239187))

(declare-fun m!1239189 () Bool)

(assert (=> b!1352313 m!1239189))

(assert (=> b!1352313 m!1239189))

(declare-fun m!1239191 () Bool)

(assert (=> b!1352313 m!1239191))

(declare-fun m!1239193 () Bool)

(assert (=> b!1352314 m!1239193))

(assert (=> b!1352314 m!1239189))

(declare-fun m!1239195 () Bool)

(assert (=> b!1352314 m!1239195))

(declare-fun m!1239197 () Bool)

(assert (=> b!1352314 m!1239197))

(assert (=> b!1352314 m!1239185))

(assert (=> b!1352314 m!1239189))

(assert (=> b!1352314 m!1239195))

(declare-fun m!1239199 () Bool)

(assert (=> b!1352314 m!1239199))

(check-sat (not b!1352316) (not b!1352324) (not b!1352315) (not b!1352313) (not b!1352321) (not b!1352319) (not b!1352314) (not b!1352318) (not b!1352320) (not start!114022))
(check-sat)
