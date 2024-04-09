; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115098 () Bool)

(assert start!115098)

(declare-fun b!1363401 () Bool)

(declare-datatypes ((Unit!44936 0))(
  ( (Unit!44937) )
))
(declare-fun e!773254 () Unit!44936)

(declare-fun Unit!44938 () Unit!44936)

(assert (=> b!1363401 (= e!773254 Unit!44938)))

(declare-fun b!1363402 () Bool)

(declare-fun res!907324 () Bool)

(declare-fun e!773256 () Bool)

(assert (=> b!1363402 (=> (not res!907324) (not e!773256))))

(declare-datatypes ((array!92648 0))(
  ( (array!92649 (arr!44751 (Array (_ BitVec 32) (_ BitVec 64))) (size!45302 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92648)

(declare-datatypes ((List!31972 0))(
  ( (Nil!31969) (Cons!31968 (h!33177 (_ BitVec 64)) (t!46670 List!31972)) )
))
(declare-fun arrayNoDuplicates!0 (array!92648 (_ BitVec 32) List!31972) Bool)

(assert (=> b!1363402 (= res!907324 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31969))))

(declare-fun b!1363403 () Bool)

(declare-fun lt!600727 () Unit!44936)

(assert (=> b!1363403 (= e!773254 lt!600727)))

(declare-fun lt!600726 () Unit!44936)

(declare-fun acc!759 () List!31972)

(declare-fun lemmaListSubSeqRefl!0 (List!31972) Unit!44936)

(assert (=> b!1363403 (= lt!600726 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!928 (List!31972 List!31972) Bool)

(assert (=> b!1363403 (subseq!928 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92648 List!31972 List!31972 (_ BitVec 32)) Unit!44936)

(declare-fun $colon$colon!933 (List!31972 (_ BitVec 64)) List!31972)

(assert (=> b!1363403 (= lt!600727 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!933 acc!759 (select (arr!44751 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363403 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363404 () Bool)

(declare-fun e!773255 () Bool)

(assert (=> b!1363404 (= e!773255 false)))

(declare-fun lt!600725 () Bool)

(assert (=> b!1363404 (= lt!600725 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363405 () Bool)

(declare-fun res!907320 () Bool)

(assert (=> b!1363405 (=> (not res!907320) (not e!773256))))

(declare-fun contains!9537 (List!31972 (_ BitVec 64)) Bool)

(assert (=> b!1363405 (= res!907320 (not (contains!9537 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363406 () Bool)

(declare-fun res!907323 () Bool)

(assert (=> b!1363406 (=> (not res!907323) (not e!773256))))

(assert (=> b!1363406 (= res!907323 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363407 () Bool)

(declare-fun res!907322 () Bool)

(assert (=> b!1363407 (=> (not res!907322) (not e!773256))))

(assert (=> b!1363407 (= res!907322 (not (contains!9537 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363408 () Bool)

(declare-fun res!907321 () Bool)

(assert (=> b!1363408 (=> (not res!907321) (not e!773256))))

(assert (=> b!1363408 (= res!907321 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45302 a!3742)))))

(declare-fun b!1363409 () Bool)

(declare-fun res!907329 () Bool)

(assert (=> b!1363409 (=> (not res!907329) (not e!773256))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363409 (= res!907329 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45302 a!3742))))))

(declare-fun res!907326 () Bool)

(assert (=> start!115098 (=> (not res!907326) (not e!773256))))

(assert (=> start!115098 (= res!907326 (and (bvslt (size!45302 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45302 a!3742))))))

(assert (=> start!115098 e!773256))

(assert (=> start!115098 true))

(declare-fun array_inv!33696 (array!92648) Bool)

(assert (=> start!115098 (array_inv!33696 a!3742)))

(declare-fun b!1363410 () Bool)

(assert (=> b!1363410 (= e!773256 e!773255)))

(declare-fun res!907328 () Bool)

(assert (=> b!1363410 (=> (not res!907328) (not e!773255))))

(declare-fun lt!600728 () Bool)

(assert (=> b!1363410 (= res!907328 (and (not (= from!3120 i!1404)) (not lt!600728) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600724 () Unit!44936)

(assert (=> b!1363410 (= lt!600724 e!773254)))

(declare-fun c!127483 () Bool)

(assert (=> b!1363410 (= c!127483 lt!600728)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363410 (= lt!600728 (validKeyInArray!0 (select (arr!44751 a!3742) from!3120)))))

(declare-fun b!1363411 () Bool)

(declare-fun res!907325 () Bool)

(assert (=> b!1363411 (=> (not res!907325) (not e!773256))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1363411 (= res!907325 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363412 () Bool)

(declare-fun res!907327 () Bool)

(assert (=> b!1363412 (=> (not res!907327) (not e!773256))))

(declare-fun noDuplicate!2416 (List!31972) Bool)

(assert (=> b!1363412 (= res!907327 (noDuplicate!2416 acc!759))))

(assert (= (and start!115098 res!907326) b!1363412))

(assert (= (and b!1363412 res!907327) b!1363407))

(assert (= (and b!1363407 res!907322) b!1363405))

(assert (= (and b!1363405 res!907320) b!1363402))

(assert (= (and b!1363402 res!907324) b!1363406))

(assert (= (and b!1363406 res!907323) b!1363409))

(assert (= (and b!1363409 res!907329) b!1363411))

(assert (= (and b!1363411 res!907325) b!1363408))

(assert (= (and b!1363408 res!907321) b!1363410))

(assert (= (and b!1363410 c!127483) b!1363403))

(assert (= (and b!1363410 (not c!127483)) b!1363401))

(assert (= (and b!1363410 res!907328) b!1363404))

(declare-fun m!1248237 () Bool)

(assert (=> b!1363412 m!1248237))

(declare-fun m!1248239 () Bool)

(assert (=> start!115098 m!1248239))

(declare-fun m!1248241 () Bool)

(assert (=> b!1363407 m!1248241))

(declare-fun m!1248243 () Bool)

(assert (=> b!1363410 m!1248243))

(assert (=> b!1363410 m!1248243))

(declare-fun m!1248245 () Bool)

(assert (=> b!1363410 m!1248245))

(declare-fun m!1248247 () Bool)

(assert (=> b!1363403 m!1248247))

(assert (=> b!1363403 m!1248243))

(declare-fun m!1248249 () Bool)

(assert (=> b!1363403 m!1248249))

(declare-fun m!1248251 () Bool)

(assert (=> b!1363403 m!1248251))

(declare-fun m!1248253 () Bool)

(assert (=> b!1363403 m!1248253))

(assert (=> b!1363403 m!1248243))

(assert (=> b!1363403 m!1248249))

(declare-fun m!1248255 () Bool)

(assert (=> b!1363403 m!1248255))

(declare-fun m!1248257 () Bool)

(assert (=> b!1363402 m!1248257))

(declare-fun m!1248259 () Bool)

(assert (=> b!1363411 m!1248259))

(declare-fun m!1248261 () Bool)

(assert (=> b!1363405 m!1248261))

(assert (=> b!1363404 m!1248253))

(declare-fun m!1248263 () Bool)

(assert (=> b!1363406 m!1248263))

(push 1)

(assert (not b!1363404))

(assert (not b!1363407))

(assert (not b!1363412))

(assert (not b!1363411))

(assert (not b!1363406))

(assert (not start!115098))

(assert (not b!1363410))

(assert (not b!1363405))

(assert (not b!1363402))

(assert (not b!1363403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

