; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114150 () Bool)

(assert start!114150)

(declare-fun b!1355157 () Bool)

(declare-fun res!900241 () Bool)

(declare-fun e!769657 () Bool)

(assert (=> b!1355157 (=> (not res!900241) (not e!769657))))

(declare-datatypes ((array!92255 0))(
  ( (array!92256 (arr!44571 (Array (_ BitVec 32) (_ BitVec 64))) (size!45122 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92255)

(declare-datatypes ((List!31792 0))(
  ( (Nil!31789) (Cons!31788 (h!32997 (_ BitVec 64)) (t!46457 List!31792)) )
))
(declare-fun arrayNoDuplicates!0 (array!92255 (_ BitVec 32) List!31792) Bool)

(assert (=> b!1355157 (= res!900241 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31789))))

(declare-fun b!1355158 () Bool)

(declare-fun res!900239 () Bool)

(assert (=> b!1355158 (=> (not res!900239) (not e!769657))))

(declare-fun acc!759 () List!31792)

(declare-fun noDuplicate!2236 (List!31792) Bool)

(assert (=> b!1355158 (= res!900239 (noDuplicate!2236 acc!759))))

(declare-fun b!1355159 () Bool)

(declare-fun res!900234 () Bool)

(assert (=> b!1355159 (=> (not res!900234) (not e!769657))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1355159 (= res!900234 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45122 a!3742)))))

(declare-fun b!1355160 () Bool)

(declare-fun res!900235 () Bool)

(assert (=> b!1355160 (=> (not res!900235) (not e!769657))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355160 (= res!900235 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45122 a!3742))))))

(declare-fun res!900243 () Bool)

(assert (=> start!114150 (=> (not res!900243) (not e!769657))))

(assert (=> start!114150 (= res!900243 (and (bvslt (size!45122 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45122 a!3742))))))

(assert (=> start!114150 e!769657))

(assert (=> start!114150 true))

(declare-fun array_inv!33516 (array!92255) Bool)

(assert (=> start!114150 (array_inv!33516 a!3742)))

(declare-fun b!1355161 () Bool)

(declare-datatypes ((Unit!44477 0))(
  ( (Unit!44478) )
))
(declare-fun e!769659 () Unit!44477)

(declare-fun Unit!44479 () Unit!44477)

(assert (=> b!1355161 (= e!769659 Unit!44479)))

(declare-fun b!1355162 () Bool)

(declare-fun res!900242 () Bool)

(assert (=> b!1355162 (=> (not res!900242) (not e!769657))))

(assert (=> b!1355162 (= res!900242 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355163 () Bool)

(declare-fun e!769658 () Bool)

(assert (=> b!1355163 (= e!769657 e!769658)))

(declare-fun res!900237 () Bool)

(assert (=> b!1355163 (=> (not res!900237) (not e!769658))))

(declare-fun lt!598488 () Bool)

(assert (=> b!1355163 (= res!900237 (and (not (= from!3120 i!1404)) (not lt!598488) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598490 () Unit!44477)

(assert (=> b!1355163 (= lt!598490 e!769659)))

(declare-fun c!126904 () Bool)

(assert (=> b!1355163 (= c!126904 lt!598488)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355163 (= lt!598488 (validKeyInArray!0 (select (arr!44571 a!3742) from!3120)))))

(declare-fun b!1355164 () Bool)

(declare-fun res!900238 () Bool)

(assert (=> b!1355164 (=> (not res!900238) (not e!769657))))

(declare-fun contains!9357 (List!31792 (_ BitVec 64)) Bool)

(assert (=> b!1355164 (= res!900238 (not (contains!9357 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355165 () Bool)

(assert (=> b!1355165 (= e!769658 false)))

(declare-fun lt!598487 () Bool)

(assert (=> b!1355165 (= lt!598487 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355166 () Bool)

(declare-fun lt!598489 () Unit!44477)

(assert (=> b!1355166 (= e!769659 lt!598489)))

(declare-fun lt!598486 () Unit!44477)

(declare-fun lemmaListSubSeqRefl!0 (List!31792) Unit!44477)

(assert (=> b!1355166 (= lt!598486 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!766 (List!31792 List!31792) Bool)

(assert (=> b!1355166 (subseq!766 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92255 List!31792 List!31792 (_ BitVec 32)) Unit!44477)

(declare-fun $colon$colon!783 (List!31792 (_ BitVec 64)) List!31792)

(assert (=> b!1355166 (= lt!598489 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!783 acc!759 (select (arr!44571 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355166 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355167 () Bool)

(declare-fun res!900240 () Bool)

(assert (=> b!1355167 (=> (not res!900240) (not e!769657))))

(assert (=> b!1355167 (= res!900240 (not (contains!9357 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355168 () Bool)

(declare-fun res!900236 () Bool)

(assert (=> b!1355168 (=> (not res!900236) (not e!769657))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355168 (= res!900236 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114150 res!900243) b!1355158))

(assert (= (and b!1355158 res!900239) b!1355164))

(assert (= (and b!1355164 res!900238) b!1355167))

(assert (= (and b!1355167 res!900240) b!1355157))

(assert (= (and b!1355157 res!900241) b!1355162))

(assert (= (and b!1355162 res!900242) b!1355160))

(assert (= (and b!1355160 res!900235) b!1355168))

(assert (= (and b!1355168 res!900236) b!1355159))

(assert (= (and b!1355159 res!900234) b!1355163))

(assert (= (and b!1355163 c!126904) b!1355166))

(assert (= (and b!1355163 (not c!126904)) b!1355161))

(assert (= (and b!1355163 res!900237) b!1355165))

(declare-fun m!1241421 () Bool)

(assert (=> b!1355168 m!1241421))

(declare-fun m!1241423 () Bool)

(assert (=> b!1355166 m!1241423))

(declare-fun m!1241425 () Bool)

(assert (=> b!1355166 m!1241425))

(declare-fun m!1241427 () Bool)

(assert (=> b!1355166 m!1241427))

(declare-fun m!1241429 () Bool)

(assert (=> b!1355166 m!1241429))

(declare-fun m!1241431 () Bool)

(assert (=> b!1355166 m!1241431))

(assert (=> b!1355166 m!1241425))

(assert (=> b!1355166 m!1241427))

(declare-fun m!1241433 () Bool)

(assert (=> b!1355166 m!1241433))

(assert (=> b!1355165 m!1241431))

(declare-fun m!1241435 () Bool)

(assert (=> b!1355162 m!1241435))

(declare-fun m!1241437 () Bool)

(assert (=> start!114150 m!1241437))

(declare-fun m!1241439 () Bool)

(assert (=> b!1355164 m!1241439))

(assert (=> b!1355163 m!1241425))

(assert (=> b!1355163 m!1241425))

(declare-fun m!1241441 () Bool)

(assert (=> b!1355163 m!1241441))

(declare-fun m!1241443 () Bool)

(assert (=> b!1355167 m!1241443))

(declare-fun m!1241445 () Bool)

(assert (=> b!1355157 m!1241445))

(declare-fun m!1241447 () Bool)

(assert (=> b!1355158 m!1241447))

(push 1)

