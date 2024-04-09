; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114214 () Bool)

(assert start!114214)

(declare-fun b!1356341 () Bool)

(declare-fun e!770043 () Bool)

(assert (=> b!1356341 (= e!770043 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-datatypes ((List!31824 0))(
  ( (Nil!31821) (Cons!31820 (h!33029 (_ BitVec 64)) (t!46489 List!31824)) )
))
(declare-fun acc!759 () List!31824)

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92319 0))(
  ( (array!92320 (arr!44603 (Array (_ BitVec 32) (_ BitVec 64))) (size!45154 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92319)

(declare-fun arrayNoDuplicates!0 (array!92319 (_ BitVec 32) List!31824) Bool)

(assert (=> b!1356341 (arrayNoDuplicates!0 (array!92320 (store (arr!44603 a!3742) i!1404 l!3587) (size!45154 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-datatypes ((Unit!44573 0))(
  ( (Unit!44574) )
))
(declare-fun lt!598970 () Unit!44573)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92319 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31824) Unit!44573)

(assert (=> b!1356341 (= lt!598970 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356342 () Bool)

(declare-fun e!770041 () Unit!44573)

(declare-fun lt!598968 () Unit!44573)

(assert (=> b!1356342 (= e!770041 lt!598968)))

(declare-fun lt!598966 () Unit!44573)

(declare-fun lemmaListSubSeqRefl!0 (List!31824) Unit!44573)

(assert (=> b!1356342 (= lt!598966 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!798 (List!31824 List!31824) Bool)

(assert (=> b!1356342 (subseq!798 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92319 List!31824 List!31824 (_ BitVec 32)) Unit!44573)

(declare-fun $colon$colon!815 (List!31824 (_ BitVec 64)) List!31824)

(assert (=> b!1356342 (= lt!598968 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!815 acc!759 (select (arr!44603 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356342 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356343 () Bool)

(declare-fun res!901236 () Bool)

(declare-fun e!770042 () Bool)

(assert (=> b!1356343 (=> (not res!901236) (not e!770042))))

(declare-fun noDuplicate!2268 (List!31824) Bool)

(assert (=> b!1356343 (= res!901236 (noDuplicate!2268 acc!759))))

(declare-fun res!901229 () Bool)

(assert (=> start!114214 (=> (not res!901229) (not e!770042))))

(assert (=> start!114214 (= res!901229 (and (bvslt (size!45154 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45154 a!3742))))))

(assert (=> start!114214 e!770042))

(assert (=> start!114214 true))

(declare-fun array_inv!33548 (array!92319) Bool)

(assert (=> start!114214 (array_inv!33548 a!3742)))

(declare-fun b!1356344 () Bool)

(assert (=> b!1356344 (= e!770042 e!770043)))

(declare-fun res!901235 () Bool)

(assert (=> b!1356344 (=> (not res!901235) (not e!770043))))

(declare-fun lt!598969 () Bool)

(assert (=> b!1356344 (= res!901235 (and (not (= from!3120 i!1404)) (not lt!598969) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598967 () Unit!44573)

(assert (=> b!1356344 (= lt!598967 e!770041)))

(declare-fun c!127000 () Bool)

(assert (=> b!1356344 (= c!127000 lt!598969)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356344 (= lt!598969 (validKeyInArray!0 (select (arr!44603 a!3742) from!3120)))))

(declare-fun b!1356345 () Bool)

(declare-fun res!901234 () Bool)

(assert (=> b!1356345 (=> (not res!901234) (not e!770042))))

(assert (=> b!1356345 (= res!901234 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45154 a!3742))))))

(declare-fun b!1356346 () Bool)

(declare-fun res!901227 () Bool)

(assert (=> b!1356346 (=> (not res!901227) (not e!770042))))

(declare-fun contains!9389 (List!31824 (_ BitVec 64)) Bool)

(assert (=> b!1356346 (= res!901227 (not (contains!9389 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356347 () Bool)

(declare-fun res!901232 () Bool)

(assert (=> b!1356347 (=> (not res!901232) (not e!770042))))

(assert (=> b!1356347 (= res!901232 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356348 () Bool)

(declare-fun res!901233 () Bool)

(assert (=> b!1356348 (=> (not res!901233) (not e!770042))))

(assert (=> b!1356348 (= res!901233 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356349 () Bool)

(declare-fun res!901230 () Bool)

(assert (=> b!1356349 (=> (not res!901230) (not e!770042))))

(assert (=> b!1356349 (= res!901230 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45154 a!3742)))))

(declare-fun b!1356350 () Bool)

(declare-fun res!901231 () Bool)

(assert (=> b!1356350 (=> (not res!901231) (not e!770043))))

(assert (=> b!1356350 (= res!901231 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356351 () Bool)

(declare-fun res!901226 () Bool)

(assert (=> b!1356351 (=> (not res!901226) (not e!770042))))

(assert (=> b!1356351 (= res!901226 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31821))))

(declare-fun b!1356352 () Bool)

(declare-fun Unit!44575 () Unit!44573)

(assert (=> b!1356352 (= e!770041 Unit!44575)))

(declare-fun b!1356353 () Bool)

(declare-fun res!901228 () Bool)

(assert (=> b!1356353 (=> (not res!901228) (not e!770042))))

(assert (=> b!1356353 (= res!901228 (not (contains!9389 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114214 res!901229) b!1356343))

(assert (= (and b!1356343 res!901236) b!1356353))

(assert (= (and b!1356353 res!901228) b!1356346))

(assert (= (and b!1356346 res!901227) b!1356351))

(assert (= (and b!1356351 res!901226) b!1356348))

(assert (= (and b!1356348 res!901233) b!1356345))

(assert (= (and b!1356345 res!901234) b!1356347))

(assert (= (and b!1356347 res!901232) b!1356349))

(assert (= (and b!1356349 res!901230) b!1356344))

(assert (= (and b!1356344 c!127000) b!1356342))

(assert (= (and b!1356344 (not c!127000)) b!1356352))

(assert (= (and b!1356344 res!901235) b!1356350))

(assert (= (and b!1356350 res!901231) b!1356341))

(declare-fun m!1242377 () Bool)

(assert (=> b!1356351 m!1242377))

(declare-fun m!1242379 () Bool)

(assert (=> b!1356342 m!1242379))

(declare-fun m!1242381 () Bool)

(assert (=> b!1356342 m!1242381))

(declare-fun m!1242383 () Bool)

(assert (=> b!1356342 m!1242383))

(declare-fun m!1242385 () Bool)

(assert (=> b!1356342 m!1242385))

(declare-fun m!1242387 () Bool)

(assert (=> b!1356342 m!1242387))

(assert (=> b!1356342 m!1242381))

(assert (=> b!1356342 m!1242383))

(declare-fun m!1242389 () Bool)

(assert (=> b!1356342 m!1242389))

(declare-fun m!1242391 () Bool)

(assert (=> b!1356348 m!1242391))

(declare-fun m!1242393 () Bool)

(assert (=> b!1356347 m!1242393))

(declare-fun m!1242395 () Bool)

(assert (=> b!1356346 m!1242395))

(declare-fun m!1242397 () Bool)

(assert (=> b!1356353 m!1242397))

(assert (=> b!1356344 m!1242381))

(assert (=> b!1356344 m!1242381))

(declare-fun m!1242399 () Bool)

(assert (=> b!1356344 m!1242399))

(declare-fun m!1242401 () Bool)

(assert (=> start!114214 m!1242401))

(declare-fun m!1242403 () Bool)

(assert (=> b!1356343 m!1242403))

(declare-fun m!1242405 () Bool)

(assert (=> b!1356341 m!1242405))

(declare-fun m!1242407 () Bool)

(assert (=> b!1356341 m!1242407))

(declare-fun m!1242409 () Bool)

(assert (=> b!1356341 m!1242409))

(assert (=> b!1356350 m!1242387))

(check-sat (not b!1356350) (not b!1356343) (not b!1356353) (not b!1356351) (not b!1356344) (not b!1356346) (not b!1356347) (not start!114214) (not b!1356342) (not b!1356348) (not b!1356341))
(check-sat)
