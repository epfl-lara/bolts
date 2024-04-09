; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117190 () Bool)

(assert start!117190)

(declare-fun b!1378689 () Bool)

(declare-fun e!781052 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378689 (= e!781052 (and (bvsle from!3466 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451))))))

(declare-fun b!1378690 () Bool)

(declare-fun res!921332 () Bool)

(assert (=> b!1378690 (=> (not res!921332) (not e!781052))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378690 (= res!921332 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!921333 () Bool)

(assert (=> start!117190 (=> (not res!921333) (not e!781052))))

(declare-datatypes ((array!93723 0))(
  ( (array!93724 (arr!45257 (Array (_ BitVec 32) (_ BitVec 64))) (size!45808 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93723)

(assert (=> start!117190 (= res!921333 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45808 a!4094))))))

(assert (=> start!117190 e!781052))

(assert (=> start!117190 true))

(declare-fun array_inv!34202 (array!93723) Bool)

(assert (=> start!117190 (array_inv!34202 a!4094)))

(declare-fun b!1378691 () Bool)

(declare-fun res!921335 () Bool)

(assert (=> b!1378691 (=> (not res!921335) (not e!781052))))

(assert (=> b!1378691 (= res!921335 (validKeyInArray!0 (select (arr!45257 a!4094) i!1451)))))

(declare-fun b!1378692 () Bool)

(declare-fun res!921334 () Bool)

(assert (=> b!1378692 (=> (not res!921334) (not e!781052))))

(assert (=> b!1378692 (= res!921334 (and (bvslt (size!45808 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45808 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378693 () Bool)

(declare-fun res!921336 () Bool)

(assert (=> b!1378693 (=> (not res!921336) (not e!781052))))

(declare-fun arrayCountValidKeys!0 (array!93723 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378693 (= res!921336 (= (arrayCountValidKeys!0 (array!93724 (store (arr!45257 a!4094) i!1451 k0!2953) (size!45808 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(assert (= (and start!117190 res!921333) b!1378691))

(assert (= (and b!1378691 res!921335) b!1378690))

(assert (= (and b!1378690 res!921332) b!1378692))

(assert (= (and b!1378692 res!921334) b!1378693))

(assert (= (and b!1378693 res!921336) b!1378689))

(declare-fun m!1263569 () Bool)

(assert (=> b!1378690 m!1263569))

(declare-fun m!1263571 () Bool)

(assert (=> start!117190 m!1263571))

(declare-fun m!1263573 () Bool)

(assert (=> b!1378691 m!1263573))

(assert (=> b!1378691 m!1263573))

(declare-fun m!1263575 () Bool)

(assert (=> b!1378691 m!1263575))

(declare-fun m!1263577 () Bool)

(assert (=> b!1378693 m!1263577))

(declare-fun m!1263579 () Bool)

(assert (=> b!1378693 m!1263579))

(declare-fun m!1263581 () Bool)

(assert (=> b!1378693 m!1263581))

(check-sat (not start!117190) (not b!1378693) (not b!1378691) (not b!1378690))
(check-sat)
