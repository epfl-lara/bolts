; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114386 () Bool)

(assert start!114386)

(declare-fun res!902450 () Bool)

(declare-fun e!770583 () Bool)

(assert (=> start!114386 (=> (not res!902450) (not e!770583))))

(declare-datatypes ((array!92401 0))(
  ( (array!92402 (arr!44641 (Array (_ BitVec 32) (_ BitVec 64))) (size!45192 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92401)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114386 (= res!902450 (and (bvslt (size!45192 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45192 a!3742))))))

(assert (=> start!114386 e!770583))

(assert (=> start!114386 true))

(declare-fun array_inv!33586 (array!92401) Bool)

(assert (=> start!114386 (array_inv!33586 a!3742)))

(declare-fun b!1357619 () Bool)

(declare-fun res!902451 () Bool)

(assert (=> b!1357619 (=> (not res!902451) (not e!770583))))

(assert (=> b!1357619 (= res!902451 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45192 a!3742)))))

(declare-fun b!1357620 () Bool)

(declare-fun res!902455 () Bool)

(declare-fun e!770582 () Bool)

(assert (=> b!1357620 (=> res!902455 e!770582)))

(declare-datatypes ((List!31862 0))(
  ( (Nil!31859) (Cons!31858 (h!33067 (_ BitVec 64)) (t!46533 List!31862)) )
))
(declare-fun lt!599141 () List!31862)

(declare-fun contains!9427 (List!31862 (_ BitVec 64)) Bool)

(assert (=> b!1357620 (= res!902455 (contains!9427 lt!599141 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357621 () Bool)

(assert (=> b!1357621 (= e!770583 (not e!770582))))

(declare-fun res!902456 () Bool)

(assert (=> b!1357621 (=> res!902456 e!770582)))

(assert (=> b!1357621 (= res!902456 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun acc!759 () List!31862)

(declare-fun $colon$colon!823 (List!31862 (_ BitVec 64)) List!31862)

(assert (=> b!1357621 (= lt!599141 ($colon$colon!823 acc!759 (select (arr!44641 a!3742) from!3120)))))

(declare-fun subseq!818 (List!31862 List!31862) Bool)

(assert (=> b!1357621 (subseq!818 acc!759 acc!759)))

(declare-datatypes ((Unit!44615 0))(
  ( (Unit!44616) )
))
(declare-fun lt!599140 () Unit!44615)

(declare-fun lemmaListSubSeqRefl!0 (List!31862) Unit!44615)

(assert (=> b!1357621 (= lt!599140 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357622 () Bool)

(declare-fun res!902457 () Bool)

(assert (=> b!1357622 (=> (not res!902457) (not e!770583))))

(declare-fun arrayNoDuplicates!0 (array!92401 (_ BitVec 32) List!31862) Bool)

(assert (=> b!1357622 (= res!902457 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357623 () Bool)

(declare-fun res!902452 () Bool)

(assert (=> b!1357623 (=> (not res!902452) (not e!770583))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357623 (= res!902452 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45192 a!3742))))))

(declare-fun b!1357624 () Bool)

(declare-fun res!902460 () Bool)

(assert (=> b!1357624 (=> (not res!902460) (not e!770583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357624 (= res!902460 (validKeyInArray!0 (select (arr!44641 a!3742) from!3120)))))

(declare-fun b!1357625 () Bool)

(declare-fun res!902448 () Bool)

(assert (=> b!1357625 (=> (not res!902448) (not e!770583))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357625 (= res!902448 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357626 () Bool)

(declare-fun res!902458 () Bool)

(assert (=> b!1357626 (=> (not res!902458) (not e!770583))))

(assert (=> b!1357626 (= res!902458 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31859))))

(declare-fun b!1357627 () Bool)

(assert (=> b!1357627 (= e!770582 true)))

(declare-fun lt!599139 () Bool)

(assert (=> b!1357627 (= lt!599139 (contains!9427 lt!599141 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357628 () Bool)

(declare-fun res!902454 () Bool)

(assert (=> b!1357628 (=> res!902454 e!770582)))

(declare-fun noDuplicate!2306 (List!31862) Bool)

(assert (=> b!1357628 (= res!902454 (not (noDuplicate!2306 lt!599141)))))

(declare-fun b!1357629 () Bool)

(declare-fun res!902453 () Bool)

(assert (=> b!1357629 (=> (not res!902453) (not e!770583))))

(assert (=> b!1357629 (= res!902453 (not (contains!9427 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357630 () Bool)

(declare-fun res!902449 () Bool)

(assert (=> b!1357630 (=> (not res!902449) (not e!770583))))

(assert (=> b!1357630 (= res!902449 (noDuplicate!2306 acc!759))))

(declare-fun b!1357631 () Bool)

(declare-fun res!902459 () Bool)

(assert (=> b!1357631 (=> (not res!902459) (not e!770583))))

(assert (=> b!1357631 (= res!902459 (not (contains!9427 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114386 res!902450) b!1357630))

(assert (= (and b!1357630 res!902449) b!1357631))

(assert (= (and b!1357631 res!902459) b!1357629))

(assert (= (and b!1357629 res!902453) b!1357626))

(assert (= (and b!1357626 res!902458) b!1357622))

(assert (= (and b!1357622 res!902457) b!1357623))

(assert (= (and b!1357623 res!902452) b!1357625))

(assert (= (and b!1357625 res!902448) b!1357619))

(assert (= (and b!1357619 res!902451) b!1357624))

(assert (= (and b!1357624 res!902460) b!1357621))

(assert (= (and b!1357621 (not res!902456)) b!1357628))

(assert (= (and b!1357628 (not res!902454)) b!1357620))

(assert (= (and b!1357620 (not res!902455)) b!1357627))

(declare-fun m!1243351 () Bool)

(assert (=> b!1357627 m!1243351))

(declare-fun m!1243353 () Bool)

(assert (=> b!1357622 m!1243353))

(declare-fun m!1243355 () Bool)

(assert (=> b!1357628 m!1243355))

(declare-fun m!1243357 () Bool)

(assert (=> b!1357621 m!1243357))

(assert (=> b!1357621 m!1243357))

(declare-fun m!1243359 () Bool)

(assert (=> b!1357621 m!1243359))

(declare-fun m!1243361 () Bool)

(assert (=> b!1357621 m!1243361))

(declare-fun m!1243363 () Bool)

(assert (=> b!1357621 m!1243363))

(declare-fun m!1243365 () Bool)

(assert (=> b!1357629 m!1243365))

(declare-fun m!1243367 () Bool)

(assert (=> b!1357626 m!1243367))

(declare-fun m!1243369 () Bool)

(assert (=> b!1357620 m!1243369))

(declare-fun m!1243371 () Bool)

(assert (=> b!1357630 m!1243371))

(assert (=> b!1357624 m!1243357))

(assert (=> b!1357624 m!1243357))

(declare-fun m!1243373 () Bool)

(assert (=> b!1357624 m!1243373))

(declare-fun m!1243375 () Bool)

(assert (=> b!1357625 m!1243375))

(declare-fun m!1243377 () Bool)

(assert (=> start!114386 m!1243377))

(declare-fun m!1243379 () Bool)

(assert (=> b!1357631 m!1243379))

(push 1)

(assert (not b!1357625))

(assert (not b!1357627))

(assert (not start!114386))

(assert (not b!1357624))

(assert (not b!1357628))

(assert (not b!1357629))

(assert (not b!1357631))

(assert (not b!1357620))

(assert (not b!1357621))

(assert (not b!1357622))

(assert (not b!1357630))

(assert (not b!1357626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

