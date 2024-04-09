; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117304 () Bool)

(assert start!117304)

(declare-fun res!922022 () Bool)

(declare-fun e!781487 () Bool)

(assert (=> start!117304 (=> (not res!922022) (not e!781487))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93816 0))(
  ( (array!93817 (arr!45302 (Array (_ BitVec 32) (_ BitVec 64))) (size!45853 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93816)

(assert (=> start!117304 (= res!922022 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45853 a!4094))))))

(assert (=> start!117304 e!781487))

(assert (=> start!117304 true))

(declare-fun array_inv!34247 (array!93816) Bool)

(assert (=> start!117304 (array_inv!34247 a!4094)))

(declare-fun b!1379476 () Bool)

(assert (=> b!1379476 (= e!781487 false)))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!607603 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93816 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379476 (= lt!607603 (arrayCountValidKeys!0 (array!93817 (store (arr!45302 a!4094) i!1451 k0!2953) (size!45853 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607602 () (_ BitVec 32))

(assert (=> b!1379476 (= lt!607602 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379473 () Bool)

(declare-fun res!922020 () Bool)

(assert (=> b!1379473 (=> (not res!922020) (not e!781487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379473 (= res!922020 (validKeyInArray!0 (select (arr!45302 a!4094) i!1451)))))

(declare-fun b!1379475 () Bool)

(declare-fun res!922023 () Bool)

(assert (=> b!1379475 (=> (not res!922023) (not e!781487))))

(assert (=> b!1379475 (= res!922023 (and (bvslt (size!45853 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45853 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379474 () Bool)

(declare-fun res!922021 () Bool)

(assert (=> b!1379474 (=> (not res!922021) (not e!781487))))

(assert (=> b!1379474 (= res!922021 (not (validKeyInArray!0 k0!2953)))))

(assert (= (and start!117304 res!922022) b!1379473))

(assert (= (and b!1379473 res!922020) b!1379474))

(assert (= (and b!1379474 res!922021) b!1379475))

(assert (= (and b!1379475 res!922023) b!1379476))

(declare-fun m!1264691 () Bool)

(assert (=> start!117304 m!1264691))

(declare-fun m!1264693 () Bool)

(assert (=> b!1379476 m!1264693))

(declare-fun m!1264695 () Bool)

(assert (=> b!1379476 m!1264695))

(declare-fun m!1264697 () Bool)

(assert (=> b!1379476 m!1264697))

(declare-fun m!1264699 () Bool)

(assert (=> b!1379473 m!1264699))

(assert (=> b!1379473 m!1264699))

(declare-fun m!1264701 () Bool)

(assert (=> b!1379473 m!1264701))

(declare-fun m!1264703 () Bool)

(assert (=> b!1379474 m!1264703))

(check-sat (not start!117304) (not b!1379473) (not b!1379474) (not b!1379476))
