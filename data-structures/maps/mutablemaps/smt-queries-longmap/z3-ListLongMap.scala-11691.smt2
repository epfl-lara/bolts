; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136800 () Bool)

(assert start!136800)

(declare-fun b!1578427 () Bool)

(declare-fun res!1078505 () Bool)

(declare-fun e!880421 () Bool)

(assert (=> b!1578427 (=> (not res!1078505) (not e!880421))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105729 0))(
  ( (array!105730 (arr!50969 (Array (_ BitVec 32) (_ BitVec 64))) (size!51520 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105729)

(declare-fun arrayContainsKey!0 (array!105729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578427 (= res!1078505 (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578428 () Bool)

(assert (=> b!1578428 (= e!880421 (not true))))

(assert (=> b!1578428 (arrayContainsKey!0 a!3559 k0!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52116 0))(
  ( (Unit!52117) )
))
(declare-fun lt!676222 () Unit!52116)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105729 (_ BitVec 64) (_ BitVec 32)) Unit!52116)

(assert (=> b!1578428 (= lt!676222 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578426 () Bool)

(declare-fun res!1078502 () Bool)

(assert (=> b!1578426 (=> (not res!1078502) (not e!880421))))

(assert (=> b!1578426 (= res!1078502 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51520 a!3559))))))

(declare-fun res!1078503 () Bool)

(assert (=> start!136800 (=> (not res!1078503) (not e!880421))))

(assert (=> start!136800 (= res!1078503 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51520 a!3559)) (bvslt (size!51520 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136800 e!880421))

(assert (=> start!136800 true))

(declare-fun array_inv!39614 (array!105729) Bool)

(assert (=> start!136800 (array_inv!39614 a!3559)))

(declare-fun b!1578425 () Bool)

(declare-fun res!1078504 () Bool)

(assert (=> b!1578425 (=> (not res!1078504) (not e!880421))))

(assert (=> b!1578425 (= res!1078504 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(assert (= (and start!136800 res!1078503) b!1578425))

(assert (= (and b!1578425 res!1078504) b!1578426))

(assert (= (and b!1578426 res!1078502) b!1578427))

(assert (= (and b!1578427 res!1078505) b!1578428))

(declare-fun m!1450545 () Bool)

(assert (=> b!1578427 m!1450545))

(declare-fun m!1450547 () Bool)

(assert (=> b!1578428 m!1450547))

(declare-fun m!1450549 () Bool)

(assert (=> b!1578428 m!1450549))

(declare-fun m!1450551 () Bool)

(assert (=> start!136800 m!1450551))

(declare-fun m!1450553 () Bool)

(assert (=> b!1578425 m!1450553))

(check-sat (not b!1578428) (not b!1578425) (not b!1578427) (not start!136800))
