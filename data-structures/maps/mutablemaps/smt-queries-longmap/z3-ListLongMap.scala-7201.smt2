; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92306 () Bool)

(assert start!92306)

(declare-fun b!1048582 () Bool)

(declare-fun e!594819 () Bool)

(declare-fun e!594821 () Bool)

(assert (=> b!1048582 (= e!594819 e!594821)))

(declare-fun res!697819 () Bool)

(assert (=> b!1048582 (=> res!697819 e!594821)))

(declare-fun lt!463225 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048582 (= res!697819 (bvsle lt!463225 i!1381))))

(declare-datatypes ((array!66055 0))(
  ( (array!66056 (arr!31763 (Array (_ BitVec 32) (_ BitVec 64))) (size!32300 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66055)

(declare-fun b!1048583 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048583 (= e!594821 (arrayContainsKey!0 a!3488 k0!2747 lt!463225))))

(declare-fun b!1048584 () Bool)

(declare-fun res!697821 () Bool)

(declare-fun e!594823 () Bool)

(assert (=> b!1048584 (=> (not res!697821) (not e!594823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048584 (= res!697821 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048585 () Bool)

(declare-fun res!697824 () Bool)

(assert (=> b!1048585 (=> (not res!697824) (not e!594823))))

(declare-datatypes ((List!22206 0))(
  ( (Nil!22203) (Cons!22202 (h!23411 (_ BitVec 64)) (t!31520 List!22206)) )
))
(declare-fun arrayNoDuplicates!0 (array!66055 (_ BitVec 32) List!22206) Bool)

(assert (=> b!1048585 (= res!697824 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22203))))

(declare-fun b!1048587 () Bool)

(declare-fun res!697822 () Bool)

(assert (=> b!1048587 (=> (not res!697822) (not e!594823))))

(assert (=> b!1048587 (= res!697822 (= (select (arr!31763 a!3488) i!1381) k0!2747))))

(declare-fun b!1048586 () Bool)

(declare-fun e!594820 () Bool)

(assert (=> b!1048586 (= e!594820 (not true))))

(assert (=> b!1048586 e!594819))

(declare-fun res!697818 () Bool)

(assert (=> b!1048586 (=> (not res!697818) (not e!594819))))

(assert (=> b!1048586 (= res!697818 (= (select (store (arr!31763 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463225) k0!2747))))

(declare-fun res!697820 () Bool)

(assert (=> start!92306 (=> (not res!697820) (not e!594823))))

(assert (=> start!92306 (= res!697820 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32300 a!3488)) (bvslt (size!32300 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92306 e!594823))

(assert (=> start!92306 true))

(declare-fun array_inv!24385 (array!66055) Bool)

(assert (=> start!92306 (array_inv!24385 a!3488)))

(declare-fun b!1048588 () Bool)

(declare-fun e!594824 () Bool)

(assert (=> b!1048588 (= e!594823 e!594824)))

(declare-fun res!697817 () Bool)

(assert (=> b!1048588 (=> (not res!697817) (not e!594824))))

(declare-fun lt!463224 () array!66055)

(assert (=> b!1048588 (= res!697817 (arrayContainsKey!0 lt!463224 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048588 (= lt!463224 (array!66056 (store (arr!31763 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32300 a!3488)))))

(declare-fun b!1048589 () Bool)

(assert (=> b!1048589 (= e!594824 e!594820)))

(declare-fun res!697823 () Bool)

(assert (=> b!1048589 (=> (not res!697823) (not e!594820))))

(assert (=> b!1048589 (= res!697823 (not (= lt!463225 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66055 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048589 (= lt!463225 (arrayScanForKey!0 lt!463224 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92306 res!697820) b!1048585))

(assert (= (and b!1048585 res!697824) b!1048584))

(assert (= (and b!1048584 res!697821) b!1048587))

(assert (= (and b!1048587 res!697822) b!1048588))

(assert (= (and b!1048588 res!697817) b!1048589))

(assert (= (and b!1048589 res!697823) b!1048586))

(assert (= (and b!1048586 res!697818) b!1048582))

(assert (= (and b!1048582 (not res!697819)) b!1048583))

(declare-fun m!969645 () Bool)

(assert (=> start!92306 m!969645))

(declare-fun m!969647 () Bool)

(assert (=> b!1048588 m!969647))

(declare-fun m!969649 () Bool)

(assert (=> b!1048588 m!969649))

(declare-fun m!969651 () Bool)

(assert (=> b!1048584 m!969651))

(declare-fun m!969653 () Bool)

(assert (=> b!1048589 m!969653))

(declare-fun m!969655 () Bool)

(assert (=> b!1048585 m!969655))

(declare-fun m!969657 () Bool)

(assert (=> b!1048587 m!969657))

(declare-fun m!969659 () Bool)

(assert (=> b!1048583 m!969659))

(assert (=> b!1048586 m!969649))

(declare-fun m!969661 () Bool)

(assert (=> b!1048586 m!969661))

(check-sat (not b!1048584) (not b!1048583) (not start!92306) (not b!1048588) (not b!1048585) (not b!1048589))
(check-sat)
