; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136806 () Bool)

(assert start!136806)

(declare-fun res!1078539 () Bool)

(declare-fun e!880439 () Bool)

(assert (=> start!136806 (=> (not res!1078539) (not e!880439))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105735 0))(
  ( (array!105736 (arr!50972 (Array (_ BitVec 32) (_ BitVec 64))) (size!51523 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105735)

(assert (=> start!136806 (= res!1078539 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51523 a!3559)) (bvslt (size!51523 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136806 e!880439))

(assert (=> start!136806 true))

(declare-fun array_inv!39617 (array!105735) Bool)

(assert (=> start!136806 (array_inv!39617 a!3559)))

(declare-fun b!1578464 () Bool)

(assert (=> b!1578464 (= e!880439 (not (bvslt #b00000000000000000000000000000000 (size!51523 a!3559))))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578464 (arrayContainsKey!0 a!3559 k0!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52122 0))(
  ( (Unit!52123) )
))
(declare-fun lt!676231 () Unit!52122)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105735 (_ BitVec 64) (_ BitVec 32)) Unit!52122)

(assert (=> b!1578464 (= lt!676231 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578462 () Bool)

(declare-fun res!1078538 () Bool)

(assert (=> b!1578462 (=> (not res!1078538) (not e!880439))))

(assert (=> b!1578462 (= res!1078538 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51523 a!3559))))))

(declare-fun b!1578463 () Bool)

(declare-fun res!1078540 () Bool)

(assert (=> b!1578463 (=> (not res!1078540) (not e!880439))))

(assert (=> b!1578463 (= res!1078540 (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578461 () Bool)

(declare-fun res!1078541 () Bool)

(assert (=> b!1578461 (=> (not res!1078541) (not e!880439))))

(assert (=> b!1578461 (= res!1078541 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(assert (= (and start!136806 res!1078539) b!1578461))

(assert (= (and b!1578461 res!1078541) b!1578462))

(assert (= (and b!1578462 res!1078538) b!1578463))

(assert (= (and b!1578463 res!1078540) b!1578464))

(declare-fun m!1450575 () Bool)

(assert (=> start!136806 m!1450575))

(declare-fun m!1450577 () Bool)

(assert (=> b!1578464 m!1450577))

(declare-fun m!1450579 () Bool)

(assert (=> b!1578464 m!1450579))

(declare-fun m!1450581 () Bool)

(assert (=> b!1578463 m!1450581))

(declare-fun m!1450583 () Bool)

(assert (=> b!1578461 m!1450583))

(check-sat (not b!1578464) (not start!136806) (not b!1578463) (not b!1578461))
(check-sat)
