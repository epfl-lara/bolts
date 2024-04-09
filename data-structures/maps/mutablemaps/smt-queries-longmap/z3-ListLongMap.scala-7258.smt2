; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92678 () Bool)

(assert start!92678)

(declare-fun b!1053085 () Bool)

(declare-fun res!702286 () Bool)

(declare-fun e!598080 () Bool)

(assert (=> b!1053085 (=> (not res!702286) (not e!598080))))

(declare-datatypes ((array!66400 0))(
  ( (array!66401 (arr!31934 (Array (_ BitVec 32) (_ BitVec 64))) (size!32471 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66400)

(declare-datatypes ((List!22377 0))(
  ( (Nil!22374) (Cons!22373 (h!23582 (_ BitVec 64)) (t!31691 List!22377)) )
))
(declare-fun arrayNoDuplicates!0 (array!66400 (_ BitVec 32) List!22377) Bool)

(assert (=> b!1053085 (= res!702286 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22374))))

(declare-fun b!1053086 () Bool)

(declare-fun res!702285 () Bool)

(assert (=> b!1053086 (=> (not res!702285) (not e!598080))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053086 (= res!702285 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053087 () Bool)

(declare-fun e!598081 () Bool)

(assert (=> b!1053087 (= e!598081 false)))

(declare-fun lt!465051 () (_ BitVec 32))

(declare-fun lt!465052 () array!66400)

(declare-fun arrayScanForKey!0 (array!66400 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053087 (= lt!465051 (arrayScanForKey!0 lt!465052 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053088 () Bool)

(declare-fun res!702287 () Bool)

(assert (=> b!1053088 (=> (not res!702287) (not e!598080))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053088 (= res!702287 (= (select (arr!31934 a!3488) i!1381) k0!2747))))

(declare-fun res!702284 () Bool)

(assert (=> start!92678 (=> (not res!702284) (not e!598080))))

(assert (=> start!92678 (= res!702284 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32471 a!3488)) (bvslt (size!32471 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92678 e!598080))

(assert (=> start!92678 true))

(declare-fun array_inv!24556 (array!66400) Bool)

(assert (=> start!92678 (array_inv!24556 a!3488)))

(declare-fun b!1053089 () Bool)

(assert (=> b!1053089 (= e!598080 e!598081)))

(declare-fun res!702288 () Bool)

(assert (=> b!1053089 (=> (not res!702288) (not e!598081))))

(declare-fun arrayContainsKey!0 (array!66400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053089 (= res!702288 (arrayContainsKey!0 lt!465052 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053089 (= lt!465052 (array!66401 (store (arr!31934 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32471 a!3488)))))

(assert (= (and start!92678 res!702284) b!1053085))

(assert (= (and b!1053085 res!702286) b!1053086))

(assert (= (and b!1053086 res!702285) b!1053088))

(assert (= (and b!1053088 res!702287) b!1053089))

(assert (= (and b!1053089 res!702288) b!1053087))

(declare-fun m!973589 () Bool)

(assert (=> b!1053085 m!973589))

(declare-fun m!973591 () Bool)

(assert (=> start!92678 m!973591))

(declare-fun m!973593 () Bool)

(assert (=> b!1053086 m!973593))

(declare-fun m!973595 () Bool)

(assert (=> b!1053088 m!973595))

(declare-fun m!973597 () Bool)

(assert (=> b!1053087 m!973597))

(declare-fun m!973599 () Bool)

(assert (=> b!1053089 m!973599))

(declare-fun m!973601 () Bool)

(assert (=> b!1053089 m!973601))

(check-sat (not b!1053086) (not start!92678) (not b!1053085) (not b!1053089) (not b!1053087))
(check-sat)
