; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114160 () Bool)

(assert start!114160)

(declare-fun b!1355337 () Bool)

(declare-fun res!900389 () Bool)

(declare-fun e!769719 () Bool)

(assert (=> b!1355337 (=> (not res!900389) (not e!769719))))

(declare-datatypes ((List!31797 0))(
  ( (Nil!31794) (Cons!31793 (h!33002 (_ BitVec 64)) (t!46462 List!31797)) )
))
(declare-fun acc!759 () List!31797)

(declare-fun contains!9362 (List!31797 (_ BitVec 64)) Bool)

(assert (=> b!1355337 (= res!900389 (not (contains!9362 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355338 () Bool)

(declare-fun res!900387 () Bool)

(assert (=> b!1355338 (=> (not res!900387) (not e!769719))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355338 (= res!900387 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355339 () Bool)

(declare-datatypes ((Unit!44492 0))(
  ( (Unit!44493) )
))
(declare-fun e!769717 () Unit!44492)

(declare-fun lt!598565 () Unit!44492)

(assert (=> b!1355339 (= e!769717 lt!598565)))

(declare-fun lt!598563 () Unit!44492)

(declare-fun lemmaListSubSeqRefl!0 (List!31797) Unit!44492)

(assert (=> b!1355339 (= lt!598563 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!771 (List!31797 List!31797) Bool)

(assert (=> b!1355339 (subseq!771 acc!759 acc!759)))

(declare-datatypes ((array!92265 0))(
  ( (array!92266 (arr!44576 (Array (_ BitVec 32) (_ BitVec 64))) (size!45127 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92265)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92265 List!31797 List!31797 (_ BitVec 32)) Unit!44492)

(declare-fun $colon$colon!788 (List!31797 (_ BitVec 64)) List!31797)

(assert (=> b!1355339 (= lt!598565 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!788 acc!759 (select (arr!44576 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92265 (_ BitVec 32) List!31797) Bool)

(assert (=> b!1355339 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355340 () Bool)

(declare-fun e!769718 () Bool)

(assert (=> b!1355340 (= e!769718 false)))

(declare-fun lt!598562 () Bool)

(assert (=> b!1355340 (= lt!598562 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355341 () Bool)

(declare-fun Unit!44494 () Unit!44492)

(assert (=> b!1355341 (= e!769717 Unit!44494)))

(declare-fun b!1355342 () Bool)

(declare-fun res!900391 () Bool)

(assert (=> b!1355342 (=> (not res!900391) (not e!769719))))

(assert (=> b!1355342 (= res!900391 (not (contains!9362 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355343 () Bool)

(assert (=> b!1355343 (= e!769719 e!769718)))

(declare-fun res!900384 () Bool)

(assert (=> b!1355343 (=> (not res!900384) (not e!769718))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!598561 () Bool)

(assert (=> b!1355343 (= res!900384 (and (not (= from!3120 i!1404)) (not lt!598561) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598564 () Unit!44492)

(assert (=> b!1355343 (= lt!598564 e!769717)))

(declare-fun c!126919 () Bool)

(assert (=> b!1355343 (= c!126919 lt!598561)))

(assert (=> b!1355343 (= lt!598561 (validKeyInArray!0 (select (arr!44576 a!3742) from!3120)))))

(declare-fun b!1355344 () Bool)

(declare-fun res!900393 () Bool)

(assert (=> b!1355344 (=> (not res!900393) (not e!769719))))

(declare-fun noDuplicate!2241 (List!31797) Bool)

(assert (=> b!1355344 (= res!900393 (noDuplicate!2241 acc!759))))

(declare-fun b!1355345 () Bool)

(declare-fun res!900388 () Bool)

(assert (=> b!1355345 (=> (not res!900388) (not e!769719))))

(assert (=> b!1355345 (= res!900388 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355346 () Bool)

(declare-fun res!900385 () Bool)

(assert (=> b!1355346 (=> (not res!900385) (not e!769719))))

(assert (=> b!1355346 (= res!900385 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31794))))

(declare-fun b!1355347 () Bool)

(declare-fun res!900386 () Bool)

(assert (=> b!1355347 (=> (not res!900386) (not e!769719))))

(assert (=> b!1355347 (= res!900386 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45127 a!3742))))))

(declare-fun res!900392 () Bool)

(assert (=> start!114160 (=> (not res!900392) (not e!769719))))

(assert (=> start!114160 (= res!900392 (and (bvslt (size!45127 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45127 a!3742))))))

(assert (=> start!114160 e!769719))

(assert (=> start!114160 true))

(declare-fun array_inv!33521 (array!92265) Bool)

(assert (=> start!114160 (array_inv!33521 a!3742)))

(declare-fun b!1355348 () Bool)

(declare-fun res!900390 () Bool)

(assert (=> b!1355348 (=> (not res!900390) (not e!769719))))

(assert (=> b!1355348 (= res!900390 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45127 a!3742)))))

(assert (= (and start!114160 res!900392) b!1355344))

(assert (= (and b!1355344 res!900393) b!1355342))

(assert (= (and b!1355342 res!900391) b!1355337))

(assert (= (and b!1355337 res!900389) b!1355346))

(assert (= (and b!1355346 res!900385) b!1355345))

(assert (= (and b!1355345 res!900388) b!1355347))

(assert (= (and b!1355347 res!900386) b!1355338))

(assert (= (and b!1355338 res!900387) b!1355348))

(assert (= (and b!1355348 res!900390) b!1355343))

(assert (= (and b!1355343 c!126919) b!1355339))

(assert (= (and b!1355343 (not c!126919)) b!1355341))

(assert (= (and b!1355343 res!900384) b!1355340))

(declare-fun m!1241561 () Bool)

(assert (=> b!1355338 m!1241561))

(declare-fun m!1241563 () Bool)

(assert (=> b!1355342 m!1241563))

(declare-fun m!1241565 () Bool)

(assert (=> b!1355337 m!1241565))

(declare-fun m!1241567 () Bool)

(assert (=> b!1355339 m!1241567))

(declare-fun m!1241569 () Bool)

(assert (=> b!1355339 m!1241569))

(declare-fun m!1241571 () Bool)

(assert (=> b!1355339 m!1241571))

(declare-fun m!1241573 () Bool)

(assert (=> b!1355339 m!1241573))

(declare-fun m!1241575 () Bool)

(assert (=> b!1355339 m!1241575))

(assert (=> b!1355339 m!1241569))

(assert (=> b!1355339 m!1241571))

(declare-fun m!1241577 () Bool)

(assert (=> b!1355339 m!1241577))

(assert (=> b!1355343 m!1241569))

(assert (=> b!1355343 m!1241569))

(declare-fun m!1241579 () Bool)

(assert (=> b!1355343 m!1241579))

(declare-fun m!1241581 () Bool)

(assert (=> b!1355344 m!1241581))

(declare-fun m!1241583 () Bool)

(assert (=> b!1355345 m!1241583))

(declare-fun m!1241585 () Bool)

(assert (=> start!114160 m!1241585))

(assert (=> b!1355340 m!1241575))

(declare-fun m!1241587 () Bool)

(assert (=> b!1355346 m!1241587))

(check-sat (not b!1355343) (not b!1355339) (not b!1355345) (not b!1355342) (not b!1355344) (not b!1355346) (not b!1355338) (not b!1355337) (not start!114160) (not b!1355340))
(check-sat)
