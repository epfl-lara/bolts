; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92800 () Bool)

(assert start!92800)

(declare-fun b!1053643 () Bool)

(declare-fun e!598493 () Bool)

(declare-fun e!598489 () Bool)

(assert (=> b!1053643 (= e!598493 e!598489)))

(declare-fun res!702737 () Bool)

(assert (=> b!1053643 (=> (not res!702737) (not e!598489))))

(declare-datatypes ((array!66441 0))(
  ( (array!66442 (arr!31950 (Array (_ BitVec 32) (_ BitVec 64))) (size!32487 (_ BitVec 32))) )
))
(declare-fun lt!465175 () array!66441)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053643 (= res!702737 (arrayContainsKey!0 lt!465175 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66441)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053643 (= lt!465175 (array!66442 (store (arr!31950 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32487 a!3488)))))

(declare-fun b!1053644 () Bool)

(declare-fun res!702738 () Bool)

(assert (=> b!1053644 (=> (not res!702738) (not e!598493))))

(assert (=> b!1053644 (= res!702738 (= (select (arr!31950 a!3488) i!1381) k!2747))))

(declare-fun res!702736 () Bool)

(assert (=> start!92800 (=> (not res!702736) (not e!598493))))

(assert (=> start!92800 (= res!702736 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32487 a!3488)) (bvslt (size!32487 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92800 e!598493))

(assert (=> start!92800 true))

(declare-fun array_inv!24572 (array!66441) Bool)

(assert (=> start!92800 (array_inv!24572 a!3488)))

(declare-fun b!1053645 () Bool)

(declare-fun e!598488 () Bool)

(declare-fun e!598491 () Bool)

(assert (=> b!1053645 (= e!598488 e!598491)))

(declare-fun res!702741 () Bool)

(assert (=> b!1053645 (=> res!702741 e!598491)))

(declare-fun lt!465174 () (_ BitVec 32))

(assert (=> b!1053645 (= res!702741 (bvsle lt!465174 i!1381))))

(declare-fun b!1053646 () Bool)

(declare-fun res!702734 () Bool)

(assert (=> b!1053646 (=> (not res!702734) (not e!598493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053646 (= res!702734 (validKeyInArray!0 k!2747))))

(declare-fun b!1053647 () Bool)

(declare-fun e!598490 () Bool)

(assert (=> b!1053647 (= e!598490 (not true))))

(assert (=> b!1053647 e!598488))

(declare-fun res!702739 () Bool)

(assert (=> b!1053647 (=> (not res!702739) (not e!598488))))

(assert (=> b!1053647 (= res!702739 (= (select (store (arr!31950 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465174) k!2747))))

(declare-fun b!1053648 () Bool)

(assert (=> b!1053648 (= e!598491 (arrayContainsKey!0 a!3488 k!2747 lt!465174))))

(declare-fun b!1053649 () Bool)

(assert (=> b!1053649 (= e!598489 e!598490)))

(declare-fun res!702740 () Bool)

(assert (=> b!1053649 (=> (not res!702740) (not e!598490))))

(assert (=> b!1053649 (= res!702740 (not (= lt!465174 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66441 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053649 (= lt!465174 (arrayScanForKey!0 lt!465175 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053650 () Bool)

(declare-fun res!702735 () Bool)

(assert (=> b!1053650 (=> (not res!702735) (not e!598493))))

(declare-datatypes ((List!22393 0))(
  ( (Nil!22390) (Cons!22389 (h!23598 (_ BitVec 64)) (t!31707 List!22393)) )
))
(declare-fun arrayNoDuplicates!0 (array!66441 (_ BitVec 32) List!22393) Bool)

(assert (=> b!1053650 (= res!702735 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22390))))

(assert (= (and start!92800 res!702736) b!1053650))

(assert (= (and b!1053650 res!702735) b!1053646))

(assert (= (and b!1053646 res!702734) b!1053644))

(assert (= (and b!1053644 res!702738) b!1053643))

(assert (= (and b!1053643 res!702737) b!1053649))

(assert (= (and b!1053649 res!702740) b!1053647))

(assert (= (and b!1053647 res!702739) b!1053645))

(assert (= (and b!1053645 (not res!702741)) b!1053648))

(declare-fun m!974007 () Bool)

(assert (=> b!1053648 m!974007))

(declare-fun m!974009 () Bool)

(assert (=> start!92800 m!974009))

(declare-fun m!974011 () Bool)

(assert (=> b!1053646 m!974011))

(declare-fun m!974013 () Bool)

(assert (=> b!1053644 m!974013))

(declare-fun m!974015 () Bool)

(assert (=> b!1053649 m!974015))

(declare-fun m!974017 () Bool)

(assert (=> b!1053647 m!974017))

(declare-fun m!974019 () Bool)

(assert (=> b!1053647 m!974019))

(declare-fun m!974021 () Bool)

(assert (=> b!1053643 m!974021))

(assert (=> b!1053643 m!974017))

(declare-fun m!974023 () Bool)

(assert (=> b!1053650 m!974023))

(push 1)

