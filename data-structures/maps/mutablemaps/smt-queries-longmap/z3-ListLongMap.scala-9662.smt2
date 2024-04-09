; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114148 () Bool)

(assert start!114148)

(declare-fun b!1355121 () Bool)

(declare-fun res!900209 () Bool)

(declare-fun e!769646 () Bool)

(assert (=> b!1355121 (=> (not res!900209) (not e!769646))))

(declare-datatypes ((List!31791 0))(
  ( (Nil!31788) (Cons!31787 (h!32996 (_ BitVec 64)) (t!46456 List!31791)) )
))
(declare-fun acc!759 () List!31791)

(declare-fun contains!9356 (List!31791 (_ BitVec 64)) Bool)

(assert (=> b!1355121 (= res!900209 (not (contains!9356 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355122 () Bool)

(declare-fun res!900212 () Bool)

(assert (=> b!1355122 (=> (not res!900212) (not e!769646))))

(assert (=> b!1355122 (= res!900212 (not (contains!9356 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355123 () Bool)

(declare-fun res!900211 () Bool)

(assert (=> b!1355123 (=> (not res!900211) (not e!769646))))

(declare-fun noDuplicate!2235 (List!31791) Bool)

(assert (=> b!1355123 (= res!900211 (noDuplicate!2235 acc!759))))

(declare-fun b!1355124 () Bool)

(declare-datatypes ((Unit!44474 0))(
  ( (Unit!44475) )
))
(declare-fun e!769647 () Unit!44474)

(declare-fun Unit!44476 () Unit!44474)

(assert (=> b!1355124 (= e!769647 Unit!44476)))

(declare-fun b!1355125 () Bool)

(declare-fun res!900210 () Bool)

(assert (=> b!1355125 (=> (not res!900210) (not e!769646))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92253 0))(
  ( (array!92254 (arr!44570 (Array (_ BitVec 32) (_ BitVec 64))) (size!45121 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92253)

(assert (=> b!1355125 (= res!900210 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45121 a!3742)))))

(declare-fun b!1355126 () Bool)

(declare-fun lt!598474 () Unit!44474)

(assert (=> b!1355126 (= e!769647 lt!598474)))

(declare-fun lt!598473 () Unit!44474)

(declare-fun lemmaListSubSeqRefl!0 (List!31791) Unit!44474)

(assert (=> b!1355126 (= lt!598473 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!765 (List!31791 List!31791) Bool)

(assert (=> b!1355126 (subseq!765 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92253 List!31791 List!31791 (_ BitVec 32)) Unit!44474)

(declare-fun $colon$colon!782 (List!31791 (_ BitVec 64)) List!31791)

(assert (=> b!1355126 (= lt!598474 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!782 acc!759 (select (arr!44570 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92253 (_ BitVec 32) List!31791) Bool)

(assert (=> b!1355126 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!900213 () Bool)

(assert (=> start!114148 (=> (not res!900213) (not e!769646))))

(assert (=> start!114148 (= res!900213 (and (bvslt (size!45121 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45121 a!3742))))))

(assert (=> start!114148 e!769646))

(assert (=> start!114148 true))

(declare-fun array_inv!33515 (array!92253) Bool)

(assert (=> start!114148 (array_inv!33515 a!3742)))

(declare-fun b!1355127 () Bool)

(declare-fun e!769648 () Bool)

(assert (=> b!1355127 (= e!769646 e!769648)))

(declare-fun res!900208 () Bool)

(assert (=> b!1355127 (=> (not res!900208) (not e!769648))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!598471 () Bool)

(assert (=> b!1355127 (= res!900208 (and (not (= from!3120 i!1404)) (not lt!598471) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598472 () Unit!44474)

(assert (=> b!1355127 (= lt!598472 e!769647)))

(declare-fun c!126901 () Bool)

(assert (=> b!1355127 (= c!126901 lt!598471)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355127 (= lt!598471 (validKeyInArray!0 (select (arr!44570 a!3742) from!3120)))))

(declare-fun b!1355128 () Bool)

(declare-fun res!900205 () Bool)

(assert (=> b!1355128 (=> (not res!900205) (not e!769646))))

(assert (=> b!1355128 (= res!900205 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31788))))

(declare-fun b!1355129 () Bool)

(declare-fun res!900206 () Bool)

(assert (=> b!1355129 (=> (not res!900206) (not e!769646))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355129 (= res!900206 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355130 () Bool)

(declare-fun res!900204 () Bool)

(assert (=> b!1355130 (=> (not res!900204) (not e!769646))))

(assert (=> b!1355130 (= res!900204 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355131 () Bool)

(assert (=> b!1355131 (= e!769648 false)))

(declare-fun lt!598475 () Bool)

(assert (=> b!1355131 (= lt!598475 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355132 () Bool)

(declare-fun res!900207 () Bool)

(assert (=> b!1355132 (=> (not res!900207) (not e!769646))))

(assert (=> b!1355132 (= res!900207 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45121 a!3742))))))

(assert (= (and start!114148 res!900213) b!1355123))

(assert (= (and b!1355123 res!900211) b!1355121))

(assert (= (and b!1355121 res!900209) b!1355122))

(assert (= (and b!1355122 res!900212) b!1355128))

(assert (= (and b!1355128 res!900205) b!1355130))

(assert (= (and b!1355130 res!900204) b!1355132))

(assert (= (and b!1355132 res!900207) b!1355129))

(assert (= (and b!1355129 res!900206) b!1355125))

(assert (= (and b!1355125 res!900210) b!1355127))

(assert (= (and b!1355127 c!126901) b!1355126))

(assert (= (and b!1355127 (not c!126901)) b!1355124))

(assert (= (and b!1355127 res!900208) b!1355131))

(declare-fun m!1241393 () Bool)

(assert (=> b!1355127 m!1241393))

(assert (=> b!1355127 m!1241393))

(declare-fun m!1241395 () Bool)

(assert (=> b!1355127 m!1241395))

(declare-fun m!1241397 () Bool)

(assert (=> b!1355123 m!1241397))

(declare-fun m!1241399 () Bool)

(assert (=> b!1355128 m!1241399))

(declare-fun m!1241401 () Bool)

(assert (=> start!114148 m!1241401))

(declare-fun m!1241403 () Bool)

(assert (=> b!1355129 m!1241403))

(declare-fun m!1241405 () Bool)

(assert (=> b!1355130 m!1241405))

(declare-fun m!1241407 () Bool)

(assert (=> b!1355126 m!1241407))

(assert (=> b!1355126 m!1241393))

(declare-fun m!1241409 () Bool)

(assert (=> b!1355126 m!1241409))

(declare-fun m!1241411 () Bool)

(assert (=> b!1355126 m!1241411))

(declare-fun m!1241413 () Bool)

(assert (=> b!1355126 m!1241413))

(assert (=> b!1355126 m!1241393))

(assert (=> b!1355126 m!1241409))

(declare-fun m!1241415 () Bool)

(assert (=> b!1355126 m!1241415))

(declare-fun m!1241417 () Bool)

(assert (=> b!1355122 m!1241417))

(declare-fun m!1241419 () Bool)

(assert (=> b!1355121 m!1241419))

(assert (=> b!1355131 m!1241413))

(check-sat (not b!1355129) (not b!1355127) (not b!1355122) (not b!1355121) (not b!1355128) (not b!1355126) (not b!1355130) (not start!114148) (not b!1355123) (not b!1355131))
(check-sat)
