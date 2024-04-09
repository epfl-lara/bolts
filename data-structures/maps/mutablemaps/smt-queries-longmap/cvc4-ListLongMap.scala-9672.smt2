; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114210 () Bool)

(assert start!114210)

(declare-fun b!1356263 () Bool)

(declare-fun e!770020 () Bool)

(assert (=> b!1356263 (= e!770020 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-datatypes ((List!31822 0))(
  ( (Nil!31819) (Cons!31818 (h!33027 (_ BitVec 64)) (t!46487 List!31822)) )
))
(declare-fun acc!759 () List!31822)

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92315 0))(
  ( (array!92316 (arr!44601 (Array (_ BitVec 32) (_ BitVec 64))) (size!45152 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92315)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92315 (_ BitVec 32) List!31822) Bool)

(assert (=> b!1356263 (arrayNoDuplicates!0 (array!92316 (store (arr!44601 a!3742) i!1404 l!3587) (size!45152 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-datatypes ((Unit!44567 0))(
  ( (Unit!44568) )
))
(declare-fun lt!598938 () Unit!44567)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92315 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31822) Unit!44567)

(assert (=> b!1356263 (= lt!598938 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356264 () Bool)

(declare-fun res!901167 () Bool)

(declare-fun e!770019 () Bool)

(assert (=> b!1356264 (=> (not res!901167) (not e!770019))))

(assert (=> b!1356264 (= res!901167 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45152 a!3742))))))

(declare-fun b!1356265 () Bool)

(declare-fun res!901170 () Bool)

(assert (=> b!1356265 (=> (not res!901170) (not e!770019))))

(assert (=> b!1356265 (= res!901170 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356266 () Bool)

(declare-fun e!770017 () Unit!44567)

(declare-fun lt!598939 () Unit!44567)

(assert (=> b!1356266 (= e!770017 lt!598939)))

(declare-fun lt!598936 () Unit!44567)

(declare-fun lemmaListSubSeqRefl!0 (List!31822) Unit!44567)

(assert (=> b!1356266 (= lt!598936 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!796 (List!31822 List!31822) Bool)

(assert (=> b!1356266 (subseq!796 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92315 List!31822 List!31822 (_ BitVec 32)) Unit!44567)

(declare-fun $colon$colon!813 (List!31822 (_ BitVec 64)) List!31822)

(assert (=> b!1356266 (= lt!598939 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!813 acc!759 (select (arr!44601 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356266 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356267 () Bool)

(declare-fun res!901166 () Bool)

(assert (=> b!1356267 (=> (not res!901166) (not e!770019))))

(declare-fun contains!9387 (List!31822 (_ BitVec 64)) Bool)

(assert (=> b!1356267 (= res!901166 (not (contains!9387 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356268 () Bool)

(assert (=> b!1356268 (= e!770019 e!770020)))

(declare-fun res!901161 () Bool)

(assert (=> b!1356268 (=> (not res!901161) (not e!770020))))

(declare-fun lt!598937 () Bool)

(assert (=> b!1356268 (= res!901161 (and (not (= from!3120 i!1404)) (not lt!598937) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598940 () Unit!44567)

(assert (=> b!1356268 (= lt!598940 e!770017)))

(declare-fun c!126994 () Bool)

(assert (=> b!1356268 (= c!126994 lt!598937)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356268 (= lt!598937 (validKeyInArray!0 (select (arr!44601 a!3742) from!3120)))))

(declare-fun b!1356269 () Bool)

(declare-fun res!901164 () Bool)

(assert (=> b!1356269 (=> (not res!901164) (not e!770019))))

(declare-fun noDuplicate!2266 (List!31822) Bool)

(assert (=> b!1356269 (= res!901164 (noDuplicate!2266 acc!759))))

(declare-fun b!1356270 () Bool)

(declare-fun res!901165 () Bool)

(assert (=> b!1356270 (=> (not res!901165) (not e!770019))))

(assert (=> b!1356270 (= res!901165 (not (contains!9387 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356271 () Bool)

(declare-fun res!901168 () Bool)

(assert (=> b!1356271 (=> (not res!901168) (not e!770019))))

(assert (=> b!1356271 (= res!901168 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45152 a!3742)))))

(declare-fun res!901169 () Bool)

(assert (=> start!114210 (=> (not res!901169) (not e!770019))))

(assert (=> start!114210 (= res!901169 (and (bvslt (size!45152 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45152 a!3742))))))

(assert (=> start!114210 e!770019))

(assert (=> start!114210 true))

(declare-fun array_inv!33546 (array!92315) Bool)

(assert (=> start!114210 (array_inv!33546 a!3742)))

(declare-fun b!1356272 () Bool)

(declare-fun Unit!44569 () Unit!44567)

(assert (=> b!1356272 (= e!770017 Unit!44569)))

(declare-fun b!1356273 () Bool)

(declare-fun res!901160 () Bool)

(assert (=> b!1356273 (=> (not res!901160) (not e!770019))))

(assert (=> b!1356273 (= res!901160 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356274 () Bool)

(declare-fun res!901163 () Bool)

(assert (=> b!1356274 (=> (not res!901163) (not e!770019))))

(assert (=> b!1356274 (= res!901163 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31819))))

(declare-fun b!1356275 () Bool)

(declare-fun res!901162 () Bool)

(assert (=> b!1356275 (=> (not res!901162) (not e!770020))))

(assert (=> b!1356275 (= res!901162 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114210 res!901169) b!1356269))

(assert (= (and b!1356269 res!901164) b!1356270))

(assert (= (and b!1356270 res!901165) b!1356267))

(assert (= (and b!1356267 res!901166) b!1356274))

(assert (= (and b!1356274 res!901163) b!1356265))

(assert (= (and b!1356265 res!901170) b!1356264))

(assert (= (and b!1356264 res!901167) b!1356273))

(assert (= (and b!1356273 res!901160) b!1356271))

(assert (= (and b!1356271 res!901168) b!1356268))

(assert (= (and b!1356268 c!126994) b!1356266))

(assert (= (and b!1356268 (not c!126994)) b!1356272))

(assert (= (and b!1356268 res!901161) b!1356275))

(assert (= (and b!1356275 res!901162) b!1356263))

(declare-fun m!1242309 () Bool)

(assert (=> start!114210 m!1242309))

(declare-fun m!1242311 () Bool)

(assert (=> b!1356268 m!1242311))

(assert (=> b!1356268 m!1242311))

(declare-fun m!1242313 () Bool)

(assert (=> b!1356268 m!1242313))

(declare-fun m!1242315 () Bool)

(assert (=> b!1356273 m!1242315))

(declare-fun m!1242317 () Bool)

(assert (=> b!1356266 m!1242317))

(assert (=> b!1356266 m!1242311))

(declare-fun m!1242319 () Bool)

(assert (=> b!1356266 m!1242319))

(declare-fun m!1242321 () Bool)

(assert (=> b!1356266 m!1242321))

(declare-fun m!1242323 () Bool)

(assert (=> b!1356266 m!1242323))

(assert (=> b!1356266 m!1242311))

(assert (=> b!1356266 m!1242319))

(declare-fun m!1242325 () Bool)

(assert (=> b!1356266 m!1242325))

(declare-fun m!1242327 () Bool)

(assert (=> b!1356267 m!1242327))

(declare-fun m!1242329 () Bool)

(assert (=> b!1356270 m!1242329))

(declare-fun m!1242331 () Bool)

(assert (=> b!1356269 m!1242331))

(declare-fun m!1242333 () Bool)

(assert (=> b!1356274 m!1242333))

(declare-fun m!1242335 () Bool)

(assert (=> b!1356265 m!1242335))

(declare-fun m!1242337 () Bool)

(assert (=> b!1356263 m!1242337))

(declare-fun m!1242339 () Bool)

(assert (=> b!1356263 m!1242339))

(declare-fun m!1242341 () Bool)

(assert (=> b!1356263 m!1242341))

(assert (=> b!1356275 m!1242323))

(push 1)

