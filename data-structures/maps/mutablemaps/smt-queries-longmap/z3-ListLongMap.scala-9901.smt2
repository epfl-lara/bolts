; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117196 () Bool)

(assert start!117196)

(declare-fun b!1378732 () Bool)

(declare-fun e!781069 () Bool)

(assert (=> b!1378732 (= e!781069 false)))

(declare-datatypes ((array!93729 0))(
  ( (array!93730 (arr!45260 (Array (_ BitVec 32) (_ BitVec 64))) (size!45811 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93729)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun lt!606928 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93729 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378732 (= lt!606928 (arrayCountValidKeys!0 (array!93730 (store (arr!45260 a!4094) i!1451 k0!2953) (size!45811 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606927 () (_ BitVec 32))

(assert (=> b!1378732 (= lt!606927 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun res!921375 () Bool)

(assert (=> start!117196 (=> (not res!921375) (not e!781069))))

(assert (=> start!117196 (= res!921375 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45811 a!4094))))))

(assert (=> start!117196 e!781069))

(assert (=> start!117196 true))

(declare-fun array_inv!34205 (array!93729) Bool)

(assert (=> start!117196 (array_inv!34205 a!4094)))

(declare-fun b!1378730 () Bool)

(declare-fun res!921373 () Bool)

(assert (=> b!1378730 (=> (not res!921373) (not e!781069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378730 (= res!921373 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378729 () Bool)

(declare-fun res!921374 () Bool)

(assert (=> b!1378729 (=> (not res!921374) (not e!781069))))

(assert (=> b!1378729 (= res!921374 (validKeyInArray!0 (select (arr!45260 a!4094) i!1451)))))

(declare-fun b!1378731 () Bool)

(declare-fun res!921372 () Bool)

(assert (=> b!1378731 (=> (not res!921372) (not e!781069))))

(assert (=> b!1378731 (= res!921372 (and (bvslt (size!45811 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45811 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117196 res!921375) b!1378729))

(assert (= (and b!1378729 res!921374) b!1378730))

(assert (= (and b!1378730 res!921373) b!1378731))

(assert (= (and b!1378731 res!921372) b!1378732))

(declare-fun m!1263611 () Bool)

(assert (=> b!1378732 m!1263611))

(declare-fun m!1263613 () Bool)

(assert (=> b!1378732 m!1263613))

(declare-fun m!1263615 () Bool)

(assert (=> b!1378732 m!1263615))

(declare-fun m!1263617 () Bool)

(assert (=> start!117196 m!1263617))

(declare-fun m!1263619 () Bool)

(assert (=> b!1378730 m!1263619))

(declare-fun m!1263621 () Bool)

(assert (=> b!1378729 m!1263621))

(assert (=> b!1378729 m!1263621))

(declare-fun m!1263623 () Bool)

(assert (=> b!1378729 m!1263623))

(check-sat (not b!1378730) (not b!1378729) (not start!117196) (not b!1378732))
