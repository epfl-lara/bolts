; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114710 () Bool)

(assert start!114710)

(declare-fun res!904697 () Bool)

(declare-fun e!771765 () Bool)

(assert (=> start!114710 (=> (not res!904697) (not e!771765))))

(declare-datatypes ((array!92521 0))(
  ( (array!92522 (arr!44695 (Array (_ BitVec 32) (_ BitVec 64))) (size!45246 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92521)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114710 (= res!904697 (and (bvslt (size!45246 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45246 a!3742))))))

(assert (=> start!114710 e!771765))

(assert (=> start!114710 true))

(declare-fun array_inv!33640 (array!92521) Bool)

(assert (=> start!114710 (array_inv!33640 a!3742)))

(declare-fun b!1360264 () Bool)

(declare-datatypes ((Unit!44768 0))(
  ( (Unit!44769) )
))
(declare-fun e!771766 () Unit!44768)

(declare-fun lt!599797 () Unit!44768)

(assert (=> b!1360264 (= e!771766 lt!599797)))

(declare-fun lt!599795 () Unit!44768)

(declare-datatypes ((List!31916 0))(
  ( (Nil!31913) (Cons!31912 (h!33121 (_ BitVec 64)) (t!46599 List!31916)) )
))
(declare-fun acc!759 () List!31916)

(declare-fun lemmaListSubSeqRefl!0 (List!31916) Unit!44768)

(assert (=> b!1360264 (= lt!599795 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!872 (List!31916 List!31916) Bool)

(assert (=> b!1360264 (subseq!872 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92521 List!31916 List!31916 (_ BitVec 32)) Unit!44768)

(declare-fun $colon$colon!877 (List!31916 (_ BitVec 64)) List!31916)

(assert (=> b!1360264 (= lt!599797 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!877 acc!759 (select (arr!44695 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92521 (_ BitVec 32) List!31916) Bool)

(assert (=> b!1360264 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360265 () Bool)

(declare-fun res!904699 () Bool)

(assert (=> b!1360265 (=> (not res!904699) (not e!771765))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360265 (= res!904699 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45246 a!3742))))))

(declare-fun b!1360266 () Bool)

(declare-fun res!904693 () Bool)

(assert (=> b!1360266 (=> (not res!904693) (not e!771765))))

(assert (=> b!1360266 (= res!904693 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31913))))

(declare-fun b!1360267 () Bool)

(declare-fun res!904695 () Bool)

(assert (=> b!1360267 (=> (not res!904695) (not e!771765))))

(assert (=> b!1360267 (= res!904695 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun lt!599796 () Bool)

(declare-fun b!1360268 () Bool)

(assert (=> b!1360268 (= e!771765 (and (not (= from!3120 i!1404)) lt!599796 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599798 () Unit!44768)

(assert (=> b!1360268 (= lt!599798 e!771766)))

(declare-fun c!127228 () Bool)

(assert (=> b!1360268 (= c!127228 lt!599796)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360268 (= lt!599796 (validKeyInArray!0 (select (arr!44695 a!3742) from!3120)))))

(declare-fun b!1360269 () Bool)

(declare-fun res!904701 () Bool)

(assert (=> b!1360269 (=> (not res!904701) (not e!771765))))

(declare-fun contains!9481 (List!31916 (_ BitVec 64)) Bool)

(assert (=> b!1360269 (= res!904701 (not (contains!9481 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360270 () Bool)

(declare-fun res!904694 () Bool)

(assert (=> b!1360270 (=> (not res!904694) (not e!771765))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360270 (= res!904694 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360271 () Bool)

(declare-fun res!904696 () Bool)

(assert (=> b!1360271 (=> (not res!904696) (not e!771765))))

(assert (=> b!1360271 (= res!904696 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45246 a!3742)))))

(declare-fun b!1360272 () Bool)

(declare-fun res!904700 () Bool)

(assert (=> b!1360272 (=> (not res!904700) (not e!771765))))

(assert (=> b!1360272 (= res!904700 (not (contains!9481 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360273 () Bool)

(declare-fun Unit!44770 () Unit!44768)

(assert (=> b!1360273 (= e!771766 Unit!44770)))

(declare-fun b!1360274 () Bool)

(declare-fun res!904698 () Bool)

(assert (=> b!1360274 (=> (not res!904698) (not e!771765))))

(declare-fun noDuplicate!2360 (List!31916) Bool)

(assert (=> b!1360274 (= res!904698 (noDuplicate!2360 acc!759))))

(assert (= (and start!114710 res!904697) b!1360274))

(assert (= (and b!1360274 res!904698) b!1360269))

(assert (= (and b!1360269 res!904701) b!1360272))

(assert (= (and b!1360272 res!904700) b!1360266))

(assert (= (and b!1360266 res!904693) b!1360267))

(assert (= (and b!1360267 res!904695) b!1360265))

(assert (= (and b!1360265 res!904699) b!1360270))

(assert (= (and b!1360270 res!904694) b!1360271))

(assert (= (and b!1360271 res!904696) b!1360268))

(assert (= (and b!1360268 c!127228) b!1360264))

(assert (= (and b!1360268 (not c!127228)) b!1360273))

(declare-fun m!1245589 () Bool)

(assert (=> b!1360267 m!1245589))

(declare-fun m!1245591 () Bool)

(assert (=> b!1360272 m!1245591))

(declare-fun m!1245593 () Bool)

(assert (=> b!1360269 m!1245593))

(declare-fun m!1245595 () Bool)

(assert (=> b!1360266 m!1245595))

(declare-fun m!1245597 () Bool)

(assert (=> b!1360268 m!1245597))

(assert (=> b!1360268 m!1245597))

(declare-fun m!1245599 () Bool)

(assert (=> b!1360268 m!1245599))

(declare-fun m!1245601 () Bool)

(assert (=> b!1360264 m!1245601))

(assert (=> b!1360264 m!1245597))

(declare-fun m!1245603 () Bool)

(assert (=> b!1360264 m!1245603))

(declare-fun m!1245605 () Bool)

(assert (=> b!1360264 m!1245605))

(declare-fun m!1245607 () Bool)

(assert (=> b!1360264 m!1245607))

(assert (=> b!1360264 m!1245597))

(assert (=> b!1360264 m!1245603))

(declare-fun m!1245609 () Bool)

(assert (=> b!1360264 m!1245609))

(declare-fun m!1245611 () Bool)

(assert (=> b!1360270 m!1245611))

(declare-fun m!1245613 () Bool)

(assert (=> start!114710 m!1245613))

(declare-fun m!1245615 () Bool)

(assert (=> b!1360274 m!1245615))

(push 1)

