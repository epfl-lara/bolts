; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114216 () Bool)

(assert start!114216)

(declare-fun res!901261 () Bool)

(declare-fun e!770055 () Bool)

(assert (=> start!114216 (=> (not res!901261) (not e!770055))))

(declare-datatypes ((array!92321 0))(
  ( (array!92322 (arr!44604 (Array (_ BitVec 32) (_ BitVec 64))) (size!45155 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92321)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114216 (= res!901261 (and (bvslt (size!45155 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45155 a!3742))))))

(assert (=> start!114216 e!770055))

(assert (=> start!114216 true))

(declare-fun array_inv!33549 (array!92321) Bool)

(assert (=> start!114216 (array_inv!33549 a!3742)))

(declare-fun b!1356380 () Bool)

(declare-fun res!901267 () Bool)

(assert (=> b!1356380 (=> (not res!901267) (not e!770055))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356380 (= res!901267 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356381 () Bool)

(declare-fun res!901259 () Bool)

(declare-fun e!770053 () Bool)

(assert (=> b!1356381 (=> (not res!901259) (not e!770053))))

(declare-datatypes ((List!31825 0))(
  ( (Nil!31822) (Cons!31821 (h!33030 (_ BitVec 64)) (t!46490 List!31825)) )
))
(declare-fun acc!759 () List!31825)

(declare-fun arrayNoDuplicates!0 (array!92321 (_ BitVec 32) List!31825) Bool)

(assert (=> b!1356381 (= res!901259 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356382 () Bool)

(declare-fun res!901263 () Bool)

(assert (=> b!1356382 (=> (not res!901263) (not e!770055))))

(assert (=> b!1356382 (= res!901263 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45155 a!3742)))))

(declare-fun b!1356383 () Bool)

(declare-fun res!901268 () Bool)

(assert (=> b!1356383 (=> (not res!901268) (not e!770055))))

(declare-fun noDuplicate!2269 (List!31825) Bool)

(assert (=> b!1356383 (= res!901268 (noDuplicate!2269 acc!759))))

(declare-fun b!1356384 () Bool)

(declare-fun res!901266 () Bool)

(assert (=> b!1356384 (=> (not res!901266) (not e!770055))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356384 (= res!901266 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45155 a!3742))))))

(declare-fun b!1356385 () Bool)

(declare-fun res!901264 () Bool)

(assert (=> b!1356385 (=> (not res!901264) (not e!770055))))

(declare-fun contains!9390 (List!31825 (_ BitVec 64)) Bool)

(assert (=> b!1356385 (= res!901264 (not (contains!9390 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356386 () Bool)

(declare-fun res!901269 () Bool)

(assert (=> b!1356386 (=> (not res!901269) (not e!770055))))

(assert (=> b!1356386 (= res!901269 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31822))))

(declare-fun b!1356387 () Bool)

(assert (=> b!1356387 (= e!770053 (not true))))

(assert (=> b!1356387 (arrayNoDuplicates!0 (array!92322 (store (arr!44604 a!3742) i!1404 l!3587) (size!45155 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-datatypes ((Unit!44576 0))(
  ( (Unit!44577) )
))
(declare-fun lt!598982 () Unit!44576)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92321 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31825) Unit!44576)

(assert (=> b!1356387 (= lt!598982 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356388 () Bool)

(declare-fun res!901260 () Bool)

(assert (=> b!1356388 (=> (not res!901260) (not e!770055))))

(assert (=> b!1356388 (= res!901260 (not (contains!9390 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356389 () Bool)

(assert (=> b!1356389 (= e!770055 e!770053)))

(declare-fun res!901265 () Bool)

(assert (=> b!1356389 (=> (not res!901265) (not e!770053))))

(declare-fun lt!598983 () Bool)

(assert (=> b!1356389 (= res!901265 (and (not (= from!3120 i!1404)) (not lt!598983) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598984 () Unit!44576)

(declare-fun e!770056 () Unit!44576)

(assert (=> b!1356389 (= lt!598984 e!770056)))

(declare-fun c!127003 () Bool)

(assert (=> b!1356389 (= c!127003 lt!598983)))

(assert (=> b!1356389 (= lt!598983 (validKeyInArray!0 (select (arr!44604 a!3742) from!3120)))))

(declare-fun b!1356390 () Bool)

(declare-fun res!901262 () Bool)

(assert (=> b!1356390 (=> (not res!901262) (not e!770055))))

(assert (=> b!1356390 (= res!901262 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356391 () Bool)

(declare-fun lt!598981 () Unit!44576)

(assert (=> b!1356391 (= e!770056 lt!598981)))

(declare-fun lt!598985 () Unit!44576)

(declare-fun lemmaListSubSeqRefl!0 (List!31825) Unit!44576)

(assert (=> b!1356391 (= lt!598985 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!799 (List!31825 List!31825) Bool)

(assert (=> b!1356391 (subseq!799 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92321 List!31825 List!31825 (_ BitVec 32)) Unit!44576)

(declare-fun $colon$colon!816 (List!31825 (_ BitVec 64)) List!31825)

(assert (=> b!1356391 (= lt!598981 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!816 acc!759 (select (arr!44604 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356391 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356392 () Bool)

(declare-fun Unit!44578 () Unit!44576)

(assert (=> b!1356392 (= e!770056 Unit!44578)))

(assert (= (and start!114216 res!901261) b!1356383))

(assert (= (and b!1356383 res!901268) b!1356388))

(assert (= (and b!1356388 res!901260) b!1356385))

(assert (= (and b!1356385 res!901264) b!1356386))

(assert (= (and b!1356386 res!901269) b!1356390))

(assert (= (and b!1356390 res!901262) b!1356384))

(assert (= (and b!1356384 res!901266) b!1356380))

(assert (= (and b!1356380 res!901267) b!1356382))

(assert (= (and b!1356382 res!901263) b!1356389))

(assert (= (and b!1356389 c!127003) b!1356391))

(assert (= (and b!1356389 (not c!127003)) b!1356392))

(assert (= (and b!1356389 res!901265) b!1356381))

(assert (= (and b!1356381 res!901259) b!1356387))

(declare-fun m!1242411 () Bool)

(assert (=> b!1356385 m!1242411))

(declare-fun m!1242413 () Bool)

(assert (=> b!1356386 m!1242413))

(declare-fun m!1242415 () Bool)

(assert (=> b!1356389 m!1242415))

(assert (=> b!1356389 m!1242415))

(declare-fun m!1242417 () Bool)

(assert (=> b!1356389 m!1242417))

(declare-fun m!1242419 () Bool)

(assert (=> b!1356390 m!1242419))

(declare-fun m!1242421 () Bool)

(assert (=> b!1356387 m!1242421))

(declare-fun m!1242423 () Bool)

(assert (=> b!1356387 m!1242423))

(declare-fun m!1242425 () Bool)

(assert (=> b!1356387 m!1242425))

(declare-fun m!1242427 () Bool)

(assert (=> b!1356380 m!1242427))

(declare-fun m!1242429 () Bool)

(assert (=> b!1356383 m!1242429))

(declare-fun m!1242431 () Bool)

(assert (=> start!114216 m!1242431))

(declare-fun m!1242433 () Bool)

(assert (=> b!1356388 m!1242433))

(declare-fun m!1242435 () Bool)

(assert (=> b!1356381 m!1242435))

(declare-fun m!1242437 () Bool)

(assert (=> b!1356391 m!1242437))

(assert (=> b!1356391 m!1242415))

(declare-fun m!1242439 () Bool)

(assert (=> b!1356391 m!1242439))

(declare-fun m!1242441 () Bool)

(assert (=> b!1356391 m!1242441))

(assert (=> b!1356391 m!1242435))

(assert (=> b!1356391 m!1242415))

(assert (=> b!1356391 m!1242439))

(declare-fun m!1242443 () Bool)

(assert (=> b!1356391 m!1242443))

(push 1)

(assert (not b!1356381))

