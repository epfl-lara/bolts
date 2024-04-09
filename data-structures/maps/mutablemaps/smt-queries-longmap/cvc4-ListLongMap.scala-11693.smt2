; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136814 () Bool)

(assert start!136814)

(declare-fun b!1578510 () Bool)

(declare-fun res!1078587 () Bool)

(declare-fun e!880464 () Bool)

(assert (=> b!1578510 (=> (not res!1078587) (not e!880464))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105743 0))(
  ( (array!105744 (arr!50976 (Array (_ BitVec 32) (_ BitVec 64))) (size!51527 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105743)

(assert (=> b!1578510 (= res!1078587 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51527 a!3559))))))

(declare-fun res!1078586 () Bool)

(assert (=> start!136814 (=> (not res!1078586) (not e!880464))))

(assert (=> start!136814 (= res!1078586 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51527 a!3559)) (bvslt (size!51527 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136814 e!880464))

(assert (=> start!136814 true))

(declare-fun array_inv!39621 (array!105743) Bool)

(assert (=> start!136814 (array_inv!39621 a!3559)))

(declare-fun b!1578511 () Bool)

(declare-fun res!1078589 () Bool)

(assert (=> b!1578511 (=> (not res!1078589) (not e!880464))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578511 (= res!1078589 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578509 () Bool)

(declare-fun res!1078588 () Bool)

(assert (=> b!1578509 (=> (not res!1078588) (not e!880464))))

(assert (=> b!1578509 (= res!1078588 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578512 () Bool)

(assert (=> b!1578512 (= e!880464 (not true))))

(assert (=> b!1578512 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52130 0))(
  ( (Unit!52131) )
))
(declare-fun lt!676243 () Unit!52130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105743 (_ BitVec 64) (_ BitVec 32)) Unit!52130)

(assert (=> b!1578512 (= lt!676243 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(assert (= (and start!136814 res!1078586) b!1578509))

(assert (= (and b!1578509 res!1078588) b!1578510))

(assert (= (and b!1578510 res!1078587) b!1578511))

(assert (= (and b!1578511 res!1078589) b!1578512))

(declare-fun m!1450615 () Bool)

(assert (=> start!136814 m!1450615))

(declare-fun m!1450617 () Bool)

(assert (=> b!1578511 m!1450617))

(declare-fun m!1450619 () Bool)

(assert (=> b!1578509 m!1450619))

(declare-fun m!1450621 () Bool)

(assert (=> b!1578512 m!1450621))

(declare-fun m!1450623 () Bool)

(assert (=> b!1578512 m!1450623))

(push 1)

(assert (not start!136814))

(assert (not b!1578511))

(assert (not b!1578512))

(assert (not b!1578509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

