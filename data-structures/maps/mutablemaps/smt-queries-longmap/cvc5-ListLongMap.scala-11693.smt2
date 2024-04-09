; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136810 () Bool)

(assert start!136810)

(declare-fun b!1578488 () Bool)

(declare-fun e!880451 () Bool)

(assert (=> b!1578488 (= e!880451 (not true))))

(declare-datatypes ((array!105739 0))(
  ( (array!105740 (arr!50974 (Array (_ BitVec 32) (_ BitVec 64))) (size!51525 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105739)

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578488 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((Unit!52126 0))(
  ( (Unit!52127) )
))
(declare-fun lt!676237 () Unit!52126)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105739 (_ BitVec 64) (_ BitVec 32)) Unit!52126)

(assert (=> b!1578488 (= lt!676237 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578486 () Bool)

(declare-fun res!1078563 () Bool)

(assert (=> b!1578486 (=> (not res!1078563) (not e!880451))))

(assert (=> b!1578486 (= res!1078563 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51525 a!3559))))))

(declare-fun b!1578485 () Bool)

(declare-fun res!1078562 () Bool)

(assert (=> b!1578485 (=> (not res!1078562) (not e!880451))))

(assert (=> b!1578485 (= res!1078562 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun res!1078565 () Bool)

(assert (=> start!136810 (=> (not res!1078565) (not e!880451))))

(assert (=> start!136810 (= res!1078565 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51525 a!3559)) (bvslt (size!51525 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136810 e!880451))

(assert (=> start!136810 true))

(declare-fun array_inv!39619 (array!105739) Bool)

(assert (=> start!136810 (array_inv!39619 a!3559)))

(declare-fun b!1578487 () Bool)

(declare-fun res!1078564 () Bool)

(assert (=> b!1578487 (=> (not res!1078564) (not e!880451))))

(assert (=> b!1578487 (= res!1078564 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(assert (= (and start!136810 res!1078565) b!1578485))

(assert (= (and b!1578485 res!1078562) b!1578486))

(assert (= (and b!1578486 res!1078563) b!1578487))

(assert (= (and b!1578487 res!1078564) b!1578488))

(declare-fun m!1450595 () Bool)

(assert (=> b!1578488 m!1450595))

(declare-fun m!1450597 () Bool)

(assert (=> b!1578488 m!1450597))

(declare-fun m!1450599 () Bool)

(assert (=> b!1578485 m!1450599))

(declare-fun m!1450601 () Bool)

(assert (=> start!136810 m!1450601))

(declare-fun m!1450603 () Bool)

(assert (=> b!1578487 m!1450603))

(push 1)

(assert (not b!1578488))

(assert (not b!1578485))

(assert (not b!1578487))

(assert (not start!136810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

