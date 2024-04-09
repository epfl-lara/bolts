; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114700 () Bool)

(assert start!114700)

(declare-fun b!1360099 () Bool)

(declare-fun res!904565 () Bool)

(declare-fun e!771719 () Bool)

(assert (=> b!1360099 (=> (not res!904565) (not e!771719))))

(declare-datatypes ((List!31911 0))(
  ( (Nil!31908) (Cons!31907 (h!33116 (_ BitVec 64)) (t!46594 List!31911)) )
))
(declare-fun acc!759 () List!31911)

(declare-fun contains!9476 (List!31911 (_ BitVec 64)) Bool)

(assert (=> b!1360099 (= res!904565 (not (contains!9476 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360100 () Bool)

(declare-fun res!904563 () Bool)

(assert (=> b!1360100 (=> (not res!904563) (not e!771719))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360100 (= res!904563 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360101 () Bool)

(declare-datatypes ((Unit!44753 0))(
  ( (Unit!44754) )
))
(declare-fun e!771720 () Unit!44753)

(declare-fun lt!599748 () Unit!44753)

(assert (=> b!1360101 (= e!771720 lt!599748)))

(declare-fun lt!599749 () Unit!44753)

(declare-fun lemmaListSubSeqRefl!0 (List!31911) Unit!44753)

(assert (=> b!1360101 (= lt!599749 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!867 (List!31911 List!31911) Bool)

(assert (=> b!1360101 (subseq!867 acc!759 acc!759)))

(declare-datatypes ((array!92511 0))(
  ( (array!92512 (arr!44690 (Array (_ BitVec 32) (_ BitVec 64))) (size!45241 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92511)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92511 List!31911 List!31911 (_ BitVec 32)) Unit!44753)

(declare-fun $colon$colon!872 (List!31911 (_ BitVec 64)) List!31911)

(assert (=> b!1360101 (= lt!599748 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!872 acc!759 (select (arr!44690 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92511 (_ BitVec 32) List!31911) Bool)

(assert (=> b!1360101 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360102 () Bool)

(declare-fun res!904562 () Bool)

(assert (=> b!1360102 (=> (not res!904562) (not e!771719))))

(assert (=> b!1360102 (= res!904562 (not (contains!9476 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360103 () Bool)

(declare-fun Unit!44755 () Unit!44753)

(assert (=> b!1360103 (= e!771720 Unit!44755)))

(declare-fun b!1360104 () Bool)

(assert (=> b!1360104 (= e!771719 false)))

(declare-fun lt!599750 () Unit!44753)

(assert (=> b!1360104 (= lt!599750 e!771720)))

(declare-fun c!127213 () Bool)

(assert (=> b!1360104 (= c!127213 (validKeyInArray!0 (select (arr!44690 a!3742) from!3120)))))

(declare-fun res!904566 () Bool)

(assert (=> start!114700 (=> (not res!904566) (not e!771719))))

(assert (=> start!114700 (= res!904566 (and (bvslt (size!45241 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45241 a!3742))))))

(assert (=> start!114700 e!771719))

(assert (=> start!114700 true))

(declare-fun array_inv!33635 (array!92511) Bool)

(assert (=> start!114700 (array_inv!33635 a!3742)))

(declare-fun b!1360105 () Bool)

(declare-fun res!904559 () Bool)

(assert (=> b!1360105 (=> (not res!904559) (not e!771719))))

(assert (=> b!1360105 (= res!904559 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45241 a!3742)))))

(declare-fun b!1360106 () Bool)

(declare-fun res!904561 () Bool)

(assert (=> b!1360106 (=> (not res!904561) (not e!771719))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360106 (= res!904561 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45241 a!3742))))))

(declare-fun b!1360107 () Bool)

(declare-fun res!904564 () Bool)

(assert (=> b!1360107 (=> (not res!904564) (not e!771719))))

(declare-fun noDuplicate!2355 (List!31911) Bool)

(assert (=> b!1360107 (= res!904564 (noDuplicate!2355 acc!759))))

(declare-fun b!1360108 () Bool)

(declare-fun res!904560 () Bool)

(assert (=> b!1360108 (=> (not res!904560) (not e!771719))))

(assert (=> b!1360108 (= res!904560 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31908))))

(declare-fun b!1360109 () Bool)

(declare-fun res!904558 () Bool)

(assert (=> b!1360109 (=> (not res!904558) (not e!771719))))

(assert (=> b!1360109 (= res!904558 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114700 res!904566) b!1360107))

(assert (= (and b!1360107 res!904564) b!1360099))

(assert (= (and b!1360099 res!904565) b!1360102))

(assert (= (and b!1360102 res!904562) b!1360108))

(assert (= (and b!1360108 res!904560) b!1360109))

(assert (= (and b!1360109 res!904558) b!1360106))

(assert (= (and b!1360106 res!904561) b!1360100))

(assert (= (and b!1360100 res!904563) b!1360105))

(assert (= (and b!1360105 res!904559) b!1360104))

(assert (= (and b!1360104 c!127213) b!1360101))

(assert (= (and b!1360104 (not c!127213)) b!1360103))

(declare-fun m!1245449 () Bool)

(assert (=> b!1360099 m!1245449))

(declare-fun m!1245451 () Bool)

(assert (=> b!1360104 m!1245451))

(assert (=> b!1360104 m!1245451))

(declare-fun m!1245453 () Bool)

(assert (=> b!1360104 m!1245453))

(declare-fun m!1245455 () Bool)

(assert (=> b!1360108 m!1245455))

(declare-fun m!1245457 () Bool)

(assert (=> b!1360102 m!1245457))

(declare-fun m!1245459 () Bool)

(assert (=> b!1360100 m!1245459))

(declare-fun m!1245461 () Bool)

(assert (=> b!1360101 m!1245461))

(assert (=> b!1360101 m!1245451))

(declare-fun m!1245463 () Bool)

(assert (=> b!1360101 m!1245463))

(declare-fun m!1245465 () Bool)

(assert (=> b!1360101 m!1245465))

(declare-fun m!1245467 () Bool)

(assert (=> b!1360101 m!1245467))

(assert (=> b!1360101 m!1245451))

(assert (=> b!1360101 m!1245463))

(declare-fun m!1245469 () Bool)

(assert (=> b!1360101 m!1245469))

(declare-fun m!1245471 () Bool)

(assert (=> start!114700 m!1245471))

(declare-fun m!1245473 () Bool)

(assert (=> b!1360107 m!1245473))

(declare-fun m!1245475 () Bool)

(assert (=> b!1360109 m!1245475))

(check-sat (not b!1360108) (not b!1360102) (not b!1360104) (not start!114700) (not b!1360099) (not b!1360109) (not b!1360101) (not b!1360100) (not b!1360107))
