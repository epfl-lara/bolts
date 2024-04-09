; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114162 () Bool)

(assert start!114162)

(declare-fun b!1355373 () Bool)

(declare-fun res!900414 () Bool)

(declare-fun e!769730 () Bool)

(assert (=> b!1355373 (=> (not res!900414) (not e!769730))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355373 (= res!900414 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355374 () Bool)

(declare-fun res!900415 () Bool)

(assert (=> b!1355374 (=> (not res!900415) (not e!769730))))

(declare-datatypes ((List!31798 0))(
  ( (Nil!31795) (Cons!31794 (h!33003 (_ BitVec 64)) (t!46463 List!31798)) )
))
(declare-fun acc!759 () List!31798)

(declare-fun contains!9363 (List!31798 (_ BitVec 64)) Bool)

(assert (=> b!1355374 (= res!900415 (not (contains!9363 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355375 () Bool)

(declare-datatypes ((Unit!44495 0))(
  ( (Unit!44496) )
))
(declare-fun e!769731 () Unit!44495)

(declare-fun lt!598580 () Unit!44495)

(assert (=> b!1355375 (= e!769731 lt!598580)))

(declare-fun lt!598578 () Unit!44495)

(declare-fun lemmaListSubSeqRefl!0 (List!31798) Unit!44495)

(assert (=> b!1355375 (= lt!598578 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!772 (List!31798 List!31798) Bool)

(assert (=> b!1355375 (subseq!772 acc!759 acc!759)))

(declare-datatypes ((array!92267 0))(
  ( (array!92268 (arr!44577 (Array (_ BitVec 32) (_ BitVec 64))) (size!45128 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92267)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92267 List!31798 List!31798 (_ BitVec 32)) Unit!44495)

(declare-fun $colon$colon!789 (List!31798 (_ BitVec 64)) List!31798)

(assert (=> b!1355375 (= lt!598580 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!789 acc!759 (select (arr!44577 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92267 (_ BitVec 32) List!31798) Bool)

(assert (=> b!1355375 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355376 () Bool)

(declare-fun res!900416 () Bool)

(assert (=> b!1355376 (=> (not res!900416) (not e!769730))))

(declare-fun noDuplicate!2242 (List!31798) Bool)

(assert (=> b!1355376 (= res!900416 (noDuplicate!2242 acc!759))))

(declare-fun res!900421 () Bool)

(assert (=> start!114162 (=> (not res!900421) (not e!769730))))

(assert (=> start!114162 (= res!900421 (and (bvslt (size!45128 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45128 a!3742))))))

(assert (=> start!114162 e!769730))

(assert (=> start!114162 true))

(declare-fun array_inv!33522 (array!92267) Bool)

(assert (=> start!114162 (array_inv!33522 a!3742)))

(declare-fun b!1355377 () Bool)

(declare-fun res!900419 () Bool)

(assert (=> b!1355377 (=> (not res!900419) (not e!769730))))

(assert (=> b!1355377 (= res!900419 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355378 () Bool)

(declare-fun res!900418 () Bool)

(assert (=> b!1355378 (=> (not res!900418) (not e!769730))))

(assert (=> b!1355378 (= res!900418 (not (contains!9363 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355379 () Bool)

(declare-fun res!900422 () Bool)

(assert (=> b!1355379 (=> (not res!900422) (not e!769730))))

(assert (=> b!1355379 (= res!900422 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45128 a!3742)))))

(declare-fun b!1355380 () Bool)

(declare-fun e!769732 () Bool)

(assert (=> b!1355380 (= e!769732 false)))

(declare-fun lt!598579 () Bool)

(assert (=> b!1355380 (= lt!598579 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355381 () Bool)

(assert (=> b!1355381 (= e!769730 e!769732)))

(declare-fun res!900423 () Bool)

(assert (=> b!1355381 (=> (not res!900423) (not e!769732))))

(declare-fun lt!598576 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355381 (= res!900423 (and (not (= from!3120 i!1404)) (not lt!598576) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598577 () Unit!44495)

(assert (=> b!1355381 (= lt!598577 e!769731)))

(declare-fun c!126922 () Bool)

(assert (=> b!1355381 (= c!126922 lt!598576)))

(assert (=> b!1355381 (= lt!598576 (validKeyInArray!0 (select (arr!44577 a!3742) from!3120)))))

(declare-fun b!1355382 () Bool)

(declare-fun res!900420 () Bool)

(assert (=> b!1355382 (=> (not res!900420) (not e!769730))))

(assert (=> b!1355382 (= res!900420 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31795))))

(declare-fun b!1355383 () Bool)

(declare-fun res!900417 () Bool)

(assert (=> b!1355383 (=> (not res!900417) (not e!769730))))

(assert (=> b!1355383 (= res!900417 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45128 a!3742))))))

(declare-fun b!1355384 () Bool)

(declare-fun Unit!44497 () Unit!44495)

(assert (=> b!1355384 (= e!769731 Unit!44497)))

(assert (= (and start!114162 res!900421) b!1355376))

(assert (= (and b!1355376 res!900416) b!1355378))

(assert (= (and b!1355378 res!900418) b!1355374))

(assert (= (and b!1355374 res!900415) b!1355382))

(assert (= (and b!1355382 res!900420) b!1355377))

(assert (= (and b!1355377 res!900419) b!1355383))

(assert (= (and b!1355383 res!900417) b!1355373))

(assert (= (and b!1355373 res!900414) b!1355379))

(assert (= (and b!1355379 res!900422) b!1355381))

(assert (= (and b!1355381 c!126922) b!1355375))

(assert (= (and b!1355381 (not c!126922)) b!1355384))

(assert (= (and b!1355381 res!900423) b!1355380))

(declare-fun m!1241589 () Bool)

(assert (=> b!1355374 m!1241589))

(declare-fun m!1241591 () Bool)

(assert (=> b!1355377 m!1241591))

(declare-fun m!1241593 () Bool)

(assert (=> start!114162 m!1241593))

(declare-fun m!1241595 () Bool)

(assert (=> b!1355373 m!1241595))

(declare-fun m!1241597 () Bool)

(assert (=> b!1355382 m!1241597))

(declare-fun m!1241599 () Bool)

(assert (=> b!1355378 m!1241599))

(declare-fun m!1241601 () Bool)

(assert (=> b!1355376 m!1241601))

(declare-fun m!1241603 () Bool)

(assert (=> b!1355375 m!1241603))

(declare-fun m!1241605 () Bool)

(assert (=> b!1355375 m!1241605))

(declare-fun m!1241607 () Bool)

(assert (=> b!1355375 m!1241607))

(declare-fun m!1241609 () Bool)

(assert (=> b!1355375 m!1241609))

(declare-fun m!1241611 () Bool)

(assert (=> b!1355375 m!1241611))

(assert (=> b!1355375 m!1241605))

(assert (=> b!1355375 m!1241607))

(declare-fun m!1241613 () Bool)

(assert (=> b!1355375 m!1241613))

(assert (=> b!1355380 m!1241611))

(assert (=> b!1355381 m!1241605))

(assert (=> b!1355381 m!1241605))

(declare-fun m!1241615 () Bool)

(assert (=> b!1355381 m!1241615))

(push 1)

