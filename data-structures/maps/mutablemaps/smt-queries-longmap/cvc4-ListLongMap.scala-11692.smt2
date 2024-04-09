; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136808 () Bool)

(assert start!136808)

(declare-fun b!1578475 () Bool)

(declare-fun res!1078551 () Bool)

(declare-fun e!880446 () Bool)

(assert (=> b!1578475 (=> (not res!1078551) (not e!880446))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105737 0))(
  ( (array!105738 (arr!50973 (Array (_ BitVec 32) (_ BitVec 64))) (size!51524 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105737)

(declare-fun arrayContainsKey!0 (array!105737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578475 (= res!1078551 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun res!1078553 () Bool)

(assert (=> start!136808 (=> (not res!1078553) (not e!880446))))

(assert (=> start!136808 (= res!1078553 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51524 a!3559)) (bvslt (size!51524 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136808 e!880446))

(assert (=> start!136808 true))

(declare-fun array_inv!39618 (array!105737) Bool)

(assert (=> start!136808 (array_inv!39618 a!3559)))

(declare-fun b!1578476 () Bool)

(assert (=> b!1578476 (= e!880446 (not (bvslt #b00000000000000000000000000000000 (size!51524 a!3559))))))

(assert (=> b!1578476 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52124 0))(
  ( (Unit!52125) )
))
(declare-fun lt!676234 () Unit!52124)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105737 (_ BitVec 64) (_ BitVec 32)) Unit!52124)

(assert (=> b!1578476 (= lt!676234 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578473 () Bool)

(declare-fun res!1078550 () Bool)

(assert (=> b!1578473 (=> (not res!1078550) (not e!880446))))

(assert (=> b!1578473 (= res!1078550 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578474 () Bool)

(declare-fun res!1078552 () Bool)

(assert (=> b!1578474 (=> (not res!1078552) (not e!880446))))

(assert (=> b!1578474 (= res!1078552 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51524 a!3559))))))

(assert (= (and start!136808 res!1078553) b!1578473))

(assert (= (and b!1578473 res!1078550) b!1578474))

(assert (= (and b!1578474 res!1078552) b!1578475))

(assert (= (and b!1578475 res!1078551) b!1578476))

(declare-fun m!1450585 () Bool)

(assert (=> b!1578475 m!1450585))

(declare-fun m!1450587 () Bool)

(assert (=> start!136808 m!1450587))

(declare-fun m!1450589 () Bool)

(assert (=> b!1578476 m!1450589))

(declare-fun m!1450591 () Bool)

(assert (=> b!1578476 m!1450591))

(declare-fun m!1450593 () Bool)

(assert (=> b!1578473 m!1450593))

(push 1)

(assert (not b!1578476))

(assert (not b!1578475))

(assert (not start!136808))

(assert (not b!1578473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

