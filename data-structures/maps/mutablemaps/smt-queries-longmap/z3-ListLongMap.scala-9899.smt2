; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117184 () Bool)

(assert start!117184)

(declare-fun b!1378649 () Bool)

(declare-fun res!921292 () Bool)

(declare-fun e!781033 () Bool)

(assert (=> b!1378649 (=> (not res!921292) (not e!781033))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378649 (= res!921292 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!921294 () Bool)

(assert (=> start!117184 (=> (not res!921294) (not e!781033))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93717 0))(
  ( (array!93718 (arr!45254 (Array (_ BitVec 32) (_ BitVec 64))) (size!45805 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93717)

(assert (=> start!117184 (= res!921294 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45805 a!4094))))))

(assert (=> start!117184 e!781033))

(assert (=> start!117184 true))

(declare-fun array_inv!34199 (array!93717) Bool)

(assert (=> start!117184 (array_inv!34199 a!4094)))

(declare-fun b!1378651 () Bool)

(assert (=> b!1378651 (= e!781033 false)))

(declare-fun lt!606910 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93717 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378651 (= lt!606910 (arrayCountValidKeys!0 (array!93718 (store (arr!45254 a!4094) i!1451 k0!2953) (size!45805 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606909 () (_ BitVec 32))

(assert (=> b!1378651 (= lt!606909 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378648 () Bool)

(declare-fun res!921291 () Bool)

(assert (=> b!1378648 (=> (not res!921291) (not e!781033))))

(assert (=> b!1378648 (= res!921291 (validKeyInArray!0 (select (arr!45254 a!4094) i!1451)))))

(declare-fun b!1378650 () Bool)

(declare-fun res!921293 () Bool)

(assert (=> b!1378650 (=> (not res!921293) (not e!781033))))

(assert (=> b!1378650 (= res!921293 (and (bvslt (size!45805 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45805 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117184 res!921294) b!1378648))

(assert (= (and b!1378648 res!921291) b!1378649))

(assert (= (and b!1378649 res!921292) b!1378650))

(assert (= (and b!1378650 res!921293) b!1378651))

(declare-fun m!1263527 () Bool)

(assert (=> b!1378649 m!1263527))

(declare-fun m!1263529 () Bool)

(assert (=> start!117184 m!1263529))

(declare-fun m!1263531 () Bool)

(assert (=> b!1378651 m!1263531))

(declare-fun m!1263533 () Bool)

(assert (=> b!1378651 m!1263533))

(declare-fun m!1263535 () Bool)

(assert (=> b!1378651 m!1263535))

(declare-fun m!1263537 () Bool)

(assert (=> b!1378648 m!1263537))

(assert (=> b!1378648 m!1263537))

(declare-fun m!1263539 () Bool)

(assert (=> b!1378648 m!1263539))

(check-sat (not b!1378651) (not b!1378649) (not b!1378648) (not start!117184))
