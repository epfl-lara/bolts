; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114156 () Bool)

(assert start!114156)

(declare-fun b!1355265 () Bool)

(declare-datatypes ((Unit!44486 0))(
  ( (Unit!44487) )
))
(declare-fun e!769695 () Unit!44486)

(declare-fun Unit!44488 () Unit!44486)

(assert (=> b!1355265 (= e!769695 Unit!44488)))

(declare-fun b!1355266 () Bool)

(declare-fun res!900325 () Bool)

(declare-fun e!769694 () Bool)

(assert (=> b!1355266 (=> (not res!900325) (not e!769694))))

(declare-datatypes ((array!92261 0))(
  ( (array!92262 (arr!44574 (Array (_ BitVec 32) (_ BitVec 64))) (size!45125 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92261)

(declare-datatypes ((List!31795 0))(
  ( (Nil!31792) (Cons!31791 (h!33000 (_ BitVec 64)) (t!46460 List!31795)) )
))
(declare-fun arrayNoDuplicates!0 (array!92261 (_ BitVec 32) List!31795) Bool)

(assert (=> b!1355266 (= res!900325 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31792))))

(declare-fun b!1355267 () Bool)

(declare-fun e!769693 () Bool)

(assert (=> b!1355267 (= e!769693 false)))

(declare-fun acc!759 () List!31795)

(declare-fun lt!598535 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1355267 (= lt!598535 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355268 () Bool)

(declare-fun res!900333 () Bool)

(assert (=> b!1355268 (=> (not res!900333) (not e!769694))))

(assert (=> b!1355268 (= res!900333 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45125 a!3742)))))

(declare-fun b!1355269 () Bool)

(declare-fun lt!598533 () Unit!44486)

(assert (=> b!1355269 (= e!769695 lt!598533)))

(declare-fun lt!598534 () Unit!44486)

(declare-fun lemmaListSubSeqRefl!0 (List!31795) Unit!44486)

(assert (=> b!1355269 (= lt!598534 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!769 (List!31795 List!31795) Bool)

(assert (=> b!1355269 (subseq!769 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92261 List!31795 List!31795 (_ BitVec 32)) Unit!44486)

(declare-fun $colon$colon!786 (List!31795 (_ BitVec 64)) List!31795)

(assert (=> b!1355269 (= lt!598533 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!786 acc!759 (select (arr!44574 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355269 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!900328 () Bool)

(assert (=> start!114156 (=> (not res!900328) (not e!769694))))

(assert (=> start!114156 (= res!900328 (and (bvslt (size!45125 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45125 a!3742))))))

(assert (=> start!114156 e!769694))

(assert (=> start!114156 true))

(declare-fun array_inv!33519 (array!92261) Bool)

(assert (=> start!114156 (array_inv!33519 a!3742)))

(declare-fun b!1355270 () Bool)

(declare-fun res!900327 () Bool)

(assert (=> b!1355270 (=> (not res!900327) (not e!769694))))

(declare-fun contains!9360 (List!31795 (_ BitVec 64)) Bool)

(assert (=> b!1355270 (= res!900327 (not (contains!9360 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355271 () Bool)

(declare-fun res!900331 () Bool)

(assert (=> b!1355271 (=> (not res!900331) (not e!769694))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355271 (= res!900331 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355272 () Bool)

(assert (=> b!1355272 (= e!769694 e!769693)))

(declare-fun res!900326 () Bool)

(assert (=> b!1355272 (=> (not res!900326) (not e!769693))))

(declare-fun lt!598531 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355272 (= res!900326 (and (not (= from!3120 i!1404)) (not lt!598531) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598532 () Unit!44486)

(assert (=> b!1355272 (= lt!598532 e!769695)))

(declare-fun c!126913 () Bool)

(assert (=> b!1355272 (= c!126913 lt!598531)))

(assert (=> b!1355272 (= lt!598531 (validKeyInArray!0 (select (arr!44574 a!3742) from!3120)))))

(declare-fun b!1355273 () Bool)

(declare-fun res!900332 () Bool)

(assert (=> b!1355273 (=> (not res!900332) (not e!769694))))

(assert (=> b!1355273 (= res!900332 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45125 a!3742))))))

(declare-fun b!1355274 () Bool)

(declare-fun res!900324 () Bool)

(assert (=> b!1355274 (=> (not res!900324) (not e!769694))))

(assert (=> b!1355274 (= res!900324 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355275 () Bool)

(declare-fun res!900329 () Bool)

(assert (=> b!1355275 (=> (not res!900329) (not e!769694))))

(declare-fun noDuplicate!2239 (List!31795) Bool)

(assert (=> b!1355275 (= res!900329 (noDuplicate!2239 acc!759))))

(declare-fun b!1355276 () Bool)

(declare-fun res!900330 () Bool)

(assert (=> b!1355276 (=> (not res!900330) (not e!769694))))

(assert (=> b!1355276 (= res!900330 (not (contains!9360 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114156 res!900328) b!1355275))

(assert (= (and b!1355275 res!900329) b!1355276))

(assert (= (and b!1355276 res!900330) b!1355270))

(assert (= (and b!1355270 res!900327) b!1355266))

(assert (= (and b!1355266 res!900325) b!1355274))

(assert (= (and b!1355274 res!900324) b!1355273))

(assert (= (and b!1355273 res!900332) b!1355271))

(assert (= (and b!1355271 res!900331) b!1355268))

(assert (= (and b!1355268 res!900333) b!1355272))

(assert (= (and b!1355272 c!126913) b!1355269))

(assert (= (and b!1355272 (not c!126913)) b!1355265))

(assert (= (and b!1355272 res!900326) b!1355267))

(declare-fun m!1241505 () Bool)

(assert (=> b!1355276 m!1241505))

(declare-fun m!1241507 () Bool)

(assert (=> b!1355267 m!1241507))

(declare-fun m!1241509 () Bool)

(assert (=> b!1355275 m!1241509))

(declare-fun m!1241511 () Bool)

(assert (=> b!1355269 m!1241511))

(declare-fun m!1241513 () Bool)

(assert (=> b!1355269 m!1241513))

(declare-fun m!1241515 () Bool)

(assert (=> b!1355269 m!1241515))

(declare-fun m!1241517 () Bool)

(assert (=> b!1355269 m!1241517))

(assert (=> b!1355269 m!1241507))

(assert (=> b!1355269 m!1241513))

(assert (=> b!1355269 m!1241515))

(declare-fun m!1241519 () Bool)

(assert (=> b!1355269 m!1241519))

(declare-fun m!1241521 () Bool)

(assert (=> start!114156 m!1241521))

(declare-fun m!1241523 () Bool)

(assert (=> b!1355274 m!1241523))

(declare-fun m!1241525 () Bool)

(assert (=> b!1355270 m!1241525))

(declare-fun m!1241527 () Bool)

(assert (=> b!1355271 m!1241527))

(declare-fun m!1241529 () Bool)

(assert (=> b!1355266 m!1241529))

(assert (=> b!1355272 m!1241513))

(assert (=> b!1355272 m!1241513))

(declare-fun m!1241531 () Bool)

(assert (=> b!1355272 m!1241531))

(push 1)

