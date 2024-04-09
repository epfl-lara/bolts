; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115094 () Bool)

(assert start!115094)

(declare-fun b!1363329 () Bool)

(declare-fun res!907260 () Bool)

(declare-fun e!773231 () Bool)

(assert (=> b!1363329 (=> (not res!907260) (not e!773231))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363329 (= res!907260 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363330 () Bool)

(declare-fun res!907268 () Bool)

(assert (=> b!1363330 (=> (not res!907268) (not e!773231))))

(declare-datatypes ((List!31970 0))(
  ( (Nil!31967) (Cons!31966 (h!33175 (_ BitVec 64)) (t!46668 List!31970)) )
))
(declare-fun acc!759 () List!31970)

(declare-fun contains!9535 (List!31970 (_ BitVec 64)) Bool)

(assert (=> b!1363330 (= res!907268 (not (contains!9535 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363331 () Bool)

(declare-fun e!773232 () Bool)

(assert (=> b!1363331 (= e!773232 false)))

(declare-fun lt!600696 () Bool)

(declare-datatypes ((array!92644 0))(
  ( (array!92645 (arr!44749 (Array (_ BitVec 32) (_ BitVec 64))) (size!45300 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92644)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92644 (_ BitVec 32) List!31970) Bool)

(assert (=> b!1363331 (= lt!600696 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363332 () Bool)

(declare-fun res!907266 () Bool)

(assert (=> b!1363332 (=> (not res!907266) (not e!773231))))

(assert (=> b!1363332 (= res!907266 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363333 () Bool)

(assert (=> b!1363333 (= e!773231 e!773232)))

(declare-fun res!907267 () Bool)

(assert (=> b!1363333 (=> (not res!907267) (not e!773232))))

(declare-fun lt!600694 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363333 (= res!907267 (and (not (= from!3120 i!1404)) (not lt!600694) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44930 0))(
  ( (Unit!44931) )
))
(declare-fun lt!600698 () Unit!44930)

(declare-fun e!773230 () Unit!44930)

(assert (=> b!1363333 (= lt!600698 e!773230)))

(declare-fun c!127477 () Bool)

(assert (=> b!1363333 (= c!127477 lt!600694)))

(assert (=> b!1363333 (= lt!600694 (validKeyInArray!0 (select (arr!44749 a!3742) from!3120)))))

(declare-fun b!1363334 () Bool)

(declare-fun res!907265 () Bool)

(assert (=> b!1363334 (=> (not res!907265) (not e!773231))))

(declare-fun noDuplicate!2414 (List!31970) Bool)

(assert (=> b!1363334 (= res!907265 (noDuplicate!2414 acc!759))))

(declare-fun b!1363335 () Bool)

(declare-fun res!907269 () Bool)

(assert (=> b!1363335 (=> (not res!907269) (not e!773231))))

(assert (=> b!1363335 (= res!907269 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45300 a!3742))))))

(declare-fun b!1363336 () Bool)

(declare-fun Unit!44932 () Unit!44930)

(assert (=> b!1363336 (= e!773230 Unit!44932)))

(declare-fun res!907261 () Bool)

(assert (=> start!115094 (=> (not res!907261) (not e!773231))))

(assert (=> start!115094 (= res!907261 (and (bvslt (size!45300 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45300 a!3742))))))

(assert (=> start!115094 e!773231))

(assert (=> start!115094 true))

(declare-fun array_inv!33694 (array!92644) Bool)

(assert (=> start!115094 (array_inv!33694 a!3742)))

(declare-fun b!1363337 () Bool)

(declare-fun res!907262 () Bool)

(assert (=> b!1363337 (=> (not res!907262) (not e!773231))))

(assert (=> b!1363337 (= res!907262 (not (contains!9535 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363338 () Bool)

(declare-fun res!907263 () Bool)

(assert (=> b!1363338 (=> (not res!907263) (not e!773231))))

(assert (=> b!1363338 (= res!907263 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31967))))

(declare-fun b!1363339 () Bool)

(declare-fun lt!600695 () Unit!44930)

(assert (=> b!1363339 (= e!773230 lt!600695)))

(declare-fun lt!600697 () Unit!44930)

(declare-fun lemmaListSubSeqRefl!0 (List!31970) Unit!44930)

(assert (=> b!1363339 (= lt!600697 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!926 (List!31970 List!31970) Bool)

(assert (=> b!1363339 (subseq!926 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92644 List!31970 List!31970 (_ BitVec 32)) Unit!44930)

(declare-fun $colon$colon!931 (List!31970 (_ BitVec 64)) List!31970)

(assert (=> b!1363339 (= lt!600695 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!931 acc!759 (select (arr!44749 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363339 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363340 () Bool)

(declare-fun res!907264 () Bool)

(assert (=> b!1363340 (=> (not res!907264) (not e!773231))))

(assert (=> b!1363340 (= res!907264 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45300 a!3742)))))

(assert (= (and start!115094 res!907261) b!1363334))

(assert (= (and b!1363334 res!907265) b!1363337))

(assert (= (and b!1363337 res!907262) b!1363330))

(assert (= (and b!1363330 res!907268) b!1363338))

(assert (= (and b!1363338 res!907263) b!1363332))

(assert (= (and b!1363332 res!907266) b!1363335))

(assert (= (and b!1363335 res!907269) b!1363329))

(assert (= (and b!1363329 res!907260) b!1363340))

(assert (= (and b!1363340 res!907264) b!1363333))

(assert (= (and b!1363333 c!127477) b!1363339))

(assert (= (and b!1363333 (not c!127477)) b!1363336))

(assert (= (and b!1363333 res!907267) b!1363331))

(declare-fun m!1248181 () Bool)

(assert (=> b!1363337 m!1248181))

(declare-fun m!1248183 () Bool)

(assert (=> b!1363339 m!1248183))

(declare-fun m!1248185 () Bool)

(assert (=> b!1363339 m!1248185))

(declare-fun m!1248187 () Bool)

(assert (=> b!1363339 m!1248187))

(declare-fun m!1248189 () Bool)

(assert (=> b!1363339 m!1248189))

(declare-fun m!1248191 () Bool)

(assert (=> b!1363339 m!1248191))

(assert (=> b!1363339 m!1248185))

(assert (=> b!1363339 m!1248187))

(declare-fun m!1248193 () Bool)

(assert (=> b!1363339 m!1248193))

(declare-fun m!1248195 () Bool)

(assert (=> b!1363338 m!1248195))

(assert (=> b!1363331 m!1248191))

(assert (=> b!1363333 m!1248185))

(assert (=> b!1363333 m!1248185))

(declare-fun m!1248197 () Bool)

(assert (=> b!1363333 m!1248197))

(declare-fun m!1248199 () Bool)

(assert (=> b!1363332 m!1248199))

(declare-fun m!1248201 () Bool)

(assert (=> b!1363334 m!1248201))

(declare-fun m!1248203 () Bool)

(assert (=> b!1363329 m!1248203))

(declare-fun m!1248205 () Bool)

(assert (=> b!1363330 m!1248205))

(declare-fun m!1248207 () Bool)

(assert (=> start!115094 m!1248207))

(push 1)

