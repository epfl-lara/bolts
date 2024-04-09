; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114154 () Bool)

(assert start!114154)

(declare-fun b!1355229 () Bool)

(declare-fun res!900300 () Bool)

(declare-fun e!769681 () Bool)

(assert (=> b!1355229 (=> (not res!900300) (not e!769681))))

(declare-datatypes ((List!31794 0))(
  ( (Nil!31791) (Cons!31790 (h!32999 (_ BitVec 64)) (t!46459 List!31794)) )
))
(declare-fun acc!759 () List!31794)

(declare-fun contains!9359 (List!31794 (_ BitVec 64)) Bool)

(assert (=> b!1355229 (= res!900300 (not (contains!9359 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355230 () Bool)

(declare-fun res!900299 () Bool)

(assert (=> b!1355230 (=> (not res!900299) (not e!769681))))

(declare-datatypes ((array!92259 0))(
  ( (array!92260 (arr!44573 (Array (_ BitVec 32) (_ BitVec 64))) (size!45124 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92259)

(declare-fun arrayNoDuplicates!0 (array!92259 (_ BitVec 32) List!31794) Bool)

(assert (=> b!1355230 (= res!900299 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31791))))

(declare-fun b!1355231 () Bool)

(declare-fun res!900296 () Bool)

(assert (=> b!1355231 (=> (not res!900296) (not e!769681))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355231 (= res!900296 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355232 () Bool)

(declare-datatypes ((Unit!44483 0))(
  ( (Unit!44484) )
))
(declare-fun e!769683 () Unit!44483)

(declare-fun lt!598520 () Unit!44483)

(assert (=> b!1355232 (= e!769683 lt!598520)))

(declare-fun lt!598516 () Unit!44483)

(declare-fun lemmaListSubSeqRefl!0 (List!31794) Unit!44483)

(assert (=> b!1355232 (= lt!598516 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!768 (List!31794 List!31794) Bool)

(assert (=> b!1355232 (subseq!768 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92259 List!31794 List!31794 (_ BitVec 32)) Unit!44483)

(declare-fun $colon$colon!785 (List!31794 (_ BitVec 64)) List!31794)

(assert (=> b!1355232 (= lt!598520 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!785 acc!759 (select (arr!44573 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355232 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355233 () Bool)

(declare-fun res!900303 () Bool)

(assert (=> b!1355233 (=> (not res!900303) (not e!769681))))

(assert (=> b!1355233 (= res!900303 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45124 a!3742)))))

(declare-fun b!1355234 () Bool)

(declare-fun res!900302 () Bool)

(assert (=> b!1355234 (=> (not res!900302) (not e!769681))))

(assert (=> b!1355234 (= res!900302 (not (contains!9359 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355235 () Bool)

(declare-fun res!900294 () Bool)

(assert (=> b!1355235 (=> (not res!900294) (not e!769681))))

(declare-fun noDuplicate!2238 (List!31794) Bool)

(assert (=> b!1355235 (= res!900294 (noDuplicate!2238 acc!759))))

(declare-fun b!1355236 () Bool)

(declare-fun e!769684 () Bool)

(assert (=> b!1355236 (= e!769681 e!769684)))

(declare-fun res!900301 () Bool)

(assert (=> b!1355236 (=> (not res!900301) (not e!769684))))

(declare-fun lt!598517 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355236 (= res!900301 (and (not (= from!3120 i!1404)) (not lt!598517) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598519 () Unit!44483)

(assert (=> b!1355236 (= lt!598519 e!769683)))

(declare-fun c!126910 () Bool)

(assert (=> b!1355236 (= c!126910 lt!598517)))

(assert (=> b!1355236 (= lt!598517 (validKeyInArray!0 (select (arr!44573 a!3742) from!3120)))))

(declare-fun b!1355237 () Bool)

(declare-fun Unit!44485 () Unit!44483)

(assert (=> b!1355237 (= e!769683 Unit!44485)))

(declare-fun b!1355239 () Bool)

(declare-fun res!900297 () Bool)

(assert (=> b!1355239 (=> (not res!900297) (not e!769681))))

(assert (=> b!1355239 (= res!900297 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355240 () Bool)

(declare-fun res!900298 () Bool)

(assert (=> b!1355240 (=> (not res!900298) (not e!769681))))

(assert (=> b!1355240 (= res!900298 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45124 a!3742))))))

(declare-fun res!900295 () Bool)

(assert (=> start!114154 (=> (not res!900295) (not e!769681))))

(assert (=> start!114154 (= res!900295 (and (bvslt (size!45124 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45124 a!3742))))))

(assert (=> start!114154 e!769681))

(assert (=> start!114154 true))

(declare-fun array_inv!33518 (array!92259) Bool)

(assert (=> start!114154 (array_inv!33518 a!3742)))

(declare-fun b!1355238 () Bool)

(assert (=> b!1355238 (= e!769684 false)))

(declare-fun lt!598518 () Bool)

(assert (=> b!1355238 (= lt!598518 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114154 res!900295) b!1355235))

(assert (= (and b!1355235 res!900294) b!1355229))

(assert (= (and b!1355229 res!900300) b!1355234))

(assert (= (and b!1355234 res!900302) b!1355230))

(assert (= (and b!1355230 res!900299) b!1355239))

(assert (= (and b!1355239 res!900297) b!1355240))

(assert (= (and b!1355240 res!900298) b!1355231))

(assert (= (and b!1355231 res!900296) b!1355233))

(assert (= (and b!1355233 res!900303) b!1355236))

(assert (= (and b!1355236 c!126910) b!1355232))

(assert (= (and b!1355236 (not c!126910)) b!1355237))

(assert (= (and b!1355236 res!900301) b!1355238))

(declare-fun m!1241477 () Bool)

(assert (=> b!1355238 m!1241477))

(declare-fun m!1241479 () Bool)

(assert (=> b!1355235 m!1241479))

(declare-fun m!1241481 () Bool)

(assert (=> b!1355230 m!1241481))

(declare-fun m!1241483 () Bool)

(assert (=> b!1355232 m!1241483))

(declare-fun m!1241485 () Bool)

(assert (=> b!1355232 m!1241485))

(declare-fun m!1241487 () Bool)

(assert (=> b!1355232 m!1241487))

(declare-fun m!1241489 () Bool)

(assert (=> b!1355232 m!1241489))

(assert (=> b!1355232 m!1241477))

(assert (=> b!1355232 m!1241485))

(assert (=> b!1355232 m!1241487))

(declare-fun m!1241491 () Bool)

(assert (=> b!1355232 m!1241491))

(assert (=> b!1355236 m!1241485))

(assert (=> b!1355236 m!1241485))

(declare-fun m!1241493 () Bool)

(assert (=> b!1355236 m!1241493))

(declare-fun m!1241495 () Bool)

(assert (=> b!1355229 m!1241495))

(declare-fun m!1241497 () Bool)

(assert (=> b!1355239 m!1241497))

(declare-fun m!1241499 () Bool)

(assert (=> b!1355234 m!1241499))

(declare-fun m!1241501 () Bool)

(assert (=> start!114154 m!1241501))

(declare-fun m!1241503 () Bool)

(assert (=> b!1355231 m!1241503))

(check-sat (not b!1355231) (not b!1355236) (not b!1355230) (not b!1355232) (not b!1355229) (not b!1355234) (not start!114154) (not b!1355238) (not b!1355235) (not b!1355239))
(check-sat)
