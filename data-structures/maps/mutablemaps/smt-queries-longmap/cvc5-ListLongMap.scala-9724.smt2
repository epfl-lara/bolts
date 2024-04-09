; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115106 () Bool)

(assert start!115106)

(declare-fun res!907448 () Bool)

(declare-fun e!773302 () Bool)

(assert (=> start!115106 (=> (not res!907448) (not e!773302))))

(declare-datatypes ((array!92656 0))(
  ( (array!92657 (arr!44755 (Array (_ BitVec 32) (_ BitVec 64))) (size!45306 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92656)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115106 (= res!907448 (and (bvslt (size!45306 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45306 a!3742))))))

(assert (=> start!115106 e!773302))

(assert (=> start!115106 true))

(declare-fun array_inv!33700 (array!92656) Bool)

(assert (=> start!115106 (array_inv!33700 a!3742)))

(declare-fun b!1363547 () Bool)

(declare-fun res!907450 () Bool)

(declare-fun e!773305 () Bool)

(assert (=> b!1363547 (=> (not res!907450) (not e!773305))))

(declare-datatypes ((List!31976 0))(
  ( (Nil!31973) (Cons!31972 (h!33181 (_ BitVec 64)) (t!46674 List!31976)) )
))
(declare-fun acc!759 () List!31976)

(declare-fun arrayNoDuplicates!0 (array!92656 (_ BitVec 32) List!31976) Bool)

(assert (=> b!1363547 (= res!907450 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363548 () Bool)

(declare-fun res!907445 () Bool)

(assert (=> b!1363548 (=> (not res!907445) (not e!773302))))

(assert (=> b!1363548 (= res!907445 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31973))))

(declare-fun b!1363549 () Bool)

(declare-fun res!907442 () Bool)

(assert (=> b!1363549 (=> (not res!907442) (not e!773302))))

(declare-fun contains!9541 (List!31976 (_ BitVec 64)) Bool)

(assert (=> b!1363549 (= res!907442 (not (contains!9541 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363550 () Bool)

(declare-datatypes ((Unit!44948 0))(
  ( (Unit!44949) )
))
(declare-fun e!773303 () Unit!44948)

(declare-fun lt!600785 () Unit!44948)

(assert (=> b!1363550 (= e!773303 lt!600785)))

(declare-fun lt!600782 () Unit!44948)

(declare-fun lemmaListSubSeqRefl!0 (List!31976) Unit!44948)

(assert (=> b!1363550 (= lt!600782 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!932 (List!31976 List!31976) Bool)

(assert (=> b!1363550 (subseq!932 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92656 List!31976 List!31976 (_ BitVec 32)) Unit!44948)

(declare-fun $colon$colon!937 (List!31976 (_ BitVec 64)) List!31976)

(assert (=> b!1363550 (= lt!600785 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!937 acc!759 (select (arr!44755 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363550 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363551 () Bool)

(declare-fun res!907446 () Bool)

(assert (=> b!1363551 (=> (not res!907446) (not e!773302))))

(declare-fun noDuplicate!2420 (List!31976) Bool)

(assert (=> b!1363551 (= res!907446 (noDuplicate!2420 acc!759))))

(declare-fun b!1363552 () Bool)

(assert (=> b!1363552 (= e!773302 e!773305)))

(declare-fun res!907449 () Bool)

(assert (=> b!1363552 (=> (not res!907449) (not e!773305))))

(declare-fun lt!600783 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363552 (= res!907449 (and (not (= from!3120 i!1404)) (not lt!600783) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600784 () Unit!44948)

(assert (=> b!1363552 (= lt!600784 e!773303)))

(declare-fun c!127495 () Bool)

(assert (=> b!1363552 (= c!127495 lt!600783)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363552 (= lt!600783 (validKeyInArray!0 (select (arr!44755 a!3742) from!3120)))))

(declare-fun b!1363553 () Bool)

(declare-fun res!907443 () Bool)

(assert (=> b!1363553 (=> (not res!907443) (not e!773302))))

(assert (=> b!1363553 (= res!907443 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363554 () Bool)

(declare-fun res!907452 () Bool)

(assert (=> b!1363554 (=> (not res!907452) (not e!773302))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1363554 (= res!907452 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363555 () Bool)

(declare-fun res!907447 () Bool)

(assert (=> b!1363555 (=> (not res!907447) (not e!773302))))

(assert (=> b!1363555 (= res!907447 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45306 a!3742)))))

(declare-fun b!1363556 () Bool)

(declare-fun Unit!44950 () Unit!44948)

(assert (=> b!1363556 (= e!773303 Unit!44950)))

(declare-fun b!1363557 () Bool)

(declare-fun res!907444 () Bool)

(assert (=> b!1363557 (=> (not res!907444) (not e!773302))))

(assert (=> b!1363557 (= res!907444 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45306 a!3742))))))

(declare-fun b!1363558 () Bool)

(assert (=> b!1363558 (= e!773305 (bvsge (bvsub (size!45306 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45306 a!3742) from!3120)))))

(declare-fun b!1363559 () Bool)

(declare-fun res!907451 () Bool)

(assert (=> b!1363559 (=> (not res!907451) (not e!773302))))

(assert (=> b!1363559 (= res!907451 (not (contains!9541 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115106 res!907448) b!1363551))

(assert (= (and b!1363551 res!907446) b!1363559))

(assert (= (and b!1363559 res!907451) b!1363549))

(assert (= (and b!1363549 res!907442) b!1363548))

(assert (= (and b!1363548 res!907445) b!1363553))

(assert (= (and b!1363553 res!907443) b!1363557))

(assert (= (and b!1363557 res!907444) b!1363554))

(assert (= (and b!1363554 res!907452) b!1363555))

(assert (= (and b!1363555 res!907447) b!1363552))

(assert (= (and b!1363552 c!127495) b!1363550))

(assert (= (and b!1363552 (not c!127495)) b!1363556))

(assert (= (and b!1363552 res!907449) b!1363547))

(assert (= (and b!1363547 res!907450) b!1363558))

(declare-fun m!1248349 () Bool)

(assert (=> b!1363552 m!1248349))

(assert (=> b!1363552 m!1248349))

(declare-fun m!1248351 () Bool)

(assert (=> b!1363552 m!1248351))

(declare-fun m!1248353 () Bool)

(assert (=> start!115106 m!1248353))

(declare-fun m!1248355 () Bool)

(assert (=> b!1363553 m!1248355))

(declare-fun m!1248357 () Bool)

(assert (=> b!1363551 m!1248357))

(declare-fun m!1248359 () Bool)

(assert (=> b!1363559 m!1248359))

(declare-fun m!1248361 () Bool)

(assert (=> b!1363548 m!1248361))

(declare-fun m!1248363 () Bool)

(assert (=> b!1363550 m!1248363))

(assert (=> b!1363550 m!1248349))

(declare-fun m!1248365 () Bool)

(assert (=> b!1363550 m!1248365))

(declare-fun m!1248367 () Bool)

(assert (=> b!1363550 m!1248367))

(declare-fun m!1248369 () Bool)

(assert (=> b!1363550 m!1248369))

(assert (=> b!1363550 m!1248349))

(assert (=> b!1363550 m!1248365))

(declare-fun m!1248371 () Bool)

(assert (=> b!1363550 m!1248371))

(assert (=> b!1363547 m!1248369))

(declare-fun m!1248373 () Bool)

(assert (=> b!1363549 m!1248373))

(declare-fun m!1248375 () Bool)

(assert (=> b!1363554 m!1248375))

(push 1)

(assert (not start!115106))

(assert (not b!1363549))

(assert (not b!1363550))

(assert (not b!1363553))

(assert (not b!1363554))

(assert (not b!1363547))

(assert (not b!1363551))

(assert (not b!1363552))

(assert (not b!1363548))

(assert (not b!1363559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

