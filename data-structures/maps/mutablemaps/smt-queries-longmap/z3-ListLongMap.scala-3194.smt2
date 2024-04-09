; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44802 () Bool)

(assert start!44802)

(declare-fun b!491612 () Bool)

(declare-fun e!288821 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!491612 (= e!288821 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!491613 () Bool)

(declare-fun res!294706 () Bool)

(declare-fun e!288822 () Bool)

(assert (=> b!491613 (=> (not res!294706) (not e!288822))))

(declare-datatypes ((array!31821 0))(
  ( (array!31822 (arr!15295 (Array (_ BitVec 32) (_ BitVec 64))) (size!15659 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31821)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31821 (_ BitVec 32)) Bool)

(assert (=> b!491613 (= res!294706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!294707 () Bool)

(declare-fun e!288819 () Bool)

(assert (=> start!44802 (=> (not res!294707) (not e!288819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44802 (= res!294707 (validMask!0 mask!3524))))

(assert (=> start!44802 e!288819))

(assert (=> start!44802 true))

(declare-fun array_inv!11069 (array!31821) Bool)

(assert (=> start!44802 (array_inv!11069 a!3235)))

(declare-fun e!288820 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!491614 () Bool)

(declare-datatypes ((SeekEntryResult!3769 0))(
  ( (MissingZero!3769 (index!17255 (_ BitVec 32))) (Found!3769 (index!17256 (_ BitVec 32))) (Intermediate!3769 (undefined!4581 Bool) (index!17257 (_ BitVec 32)) (x!46366 (_ BitVec 32))) (Undefined!3769) (MissingVacant!3769 (index!17258 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31821 (_ BitVec 32)) SeekEntryResult!3769)

(assert (=> b!491614 (= e!288820 (= (seekEntryOrOpen!0 (select (arr!15295 a!3235) j!176) a!3235 mask!3524) (Found!3769 j!176)))))

(declare-fun b!491615 () Bool)

(declare-fun res!294701 () Bool)

(assert (=> b!491615 (=> (not res!294701) (not e!288819))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491615 (= res!294701 (validKeyInArray!0 k0!2280))))

(declare-fun b!491616 () Bool)

(declare-fun res!294703 () Bool)

(assert (=> b!491616 (=> (not res!294703) (not e!288819))))

(assert (=> b!491616 (= res!294703 (validKeyInArray!0 (select (arr!15295 a!3235) j!176)))))

(declare-fun b!491617 () Bool)

(declare-fun res!294700 () Bool)

(assert (=> b!491617 (=> (not res!294700) (not e!288819))))

(declare-fun arrayContainsKey!0 (array!31821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491617 (= res!294700 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491618 () Bool)

(declare-fun res!294702 () Bool)

(assert (=> b!491618 (=> (not res!294702) (not e!288819))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491618 (= res!294702 (and (= (size!15659 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15659 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15659 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491619 () Bool)

(assert (=> b!491619 (= e!288822 (not e!288821))))

(declare-fun res!294705 () Bool)

(assert (=> b!491619 (=> res!294705 e!288821)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31821 (_ BitVec 32)) SeekEntryResult!3769)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491619 (= res!294705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15295 a!3235) j!176) mask!3524) (select (arr!15295 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15295 a!3235) i!1204 k0!2280) j!176) mask!3524) (select (store (arr!15295 a!3235) i!1204 k0!2280) j!176) (array!31822 (store (arr!15295 a!3235) i!1204 k0!2280) (size!15659 a!3235)) mask!3524)))))

(assert (=> b!491619 e!288820))

(declare-fun res!294704 () Bool)

(assert (=> b!491619 (=> (not res!294704) (not e!288820))))

(assert (=> b!491619 (= res!294704 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14476 0))(
  ( (Unit!14477) )
))
(declare-fun lt!222331 () Unit!14476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14476)

(assert (=> b!491619 (= lt!222331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491620 () Bool)

(assert (=> b!491620 (= e!288819 e!288822)))

(declare-fun res!294699 () Bool)

(assert (=> b!491620 (=> (not res!294699) (not e!288822))))

(declare-fun lt!222332 () SeekEntryResult!3769)

(assert (=> b!491620 (= res!294699 (or (= lt!222332 (MissingZero!3769 i!1204)) (= lt!222332 (MissingVacant!3769 i!1204))))))

(assert (=> b!491620 (= lt!222332 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!491621 () Bool)

(declare-fun res!294698 () Bool)

(assert (=> b!491621 (=> (not res!294698) (not e!288822))))

(declare-datatypes ((List!9506 0))(
  ( (Nil!9503) (Cons!9502 (h!10364 (_ BitVec 64)) (t!15742 List!9506)) )
))
(declare-fun arrayNoDuplicates!0 (array!31821 (_ BitVec 32) List!9506) Bool)

(assert (=> b!491621 (= res!294698 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9503))))

(assert (= (and start!44802 res!294707) b!491618))

(assert (= (and b!491618 res!294702) b!491616))

(assert (= (and b!491616 res!294703) b!491615))

(assert (= (and b!491615 res!294701) b!491617))

(assert (= (and b!491617 res!294700) b!491620))

(assert (= (and b!491620 res!294699) b!491613))

(assert (= (and b!491613 res!294706) b!491621))

(assert (= (and b!491621 res!294698) b!491619))

(assert (= (and b!491619 res!294704) b!491614))

(assert (= (and b!491619 (not res!294705)) b!491612))

(declare-fun m!472387 () Bool)

(assert (=> b!491616 m!472387))

(assert (=> b!491616 m!472387))

(declare-fun m!472389 () Bool)

(assert (=> b!491616 m!472389))

(declare-fun m!472391 () Bool)

(assert (=> b!491617 m!472391))

(declare-fun m!472393 () Bool)

(assert (=> b!491620 m!472393))

(assert (=> b!491614 m!472387))

(assert (=> b!491614 m!472387))

(declare-fun m!472395 () Bool)

(assert (=> b!491614 m!472395))

(declare-fun m!472397 () Bool)

(assert (=> b!491613 m!472397))

(declare-fun m!472399 () Bool)

(assert (=> b!491619 m!472399))

(declare-fun m!472401 () Bool)

(assert (=> b!491619 m!472401))

(declare-fun m!472403 () Bool)

(assert (=> b!491619 m!472403))

(declare-fun m!472405 () Bool)

(assert (=> b!491619 m!472405))

(assert (=> b!491619 m!472387))

(declare-fun m!472407 () Bool)

(assert (=> b!491619 m!472407))

(assert (=> b!491619 m!472387))

(assert (=> b!491619 m!472405))

(declare-fun m!472409 () Bool)

(assert (=> b!491619 m!472409))

(assert (=> b!491619 m!472403))

(declare-fun m!472411 () Bool)

(assert (=> b!491619 m!472411))

(assert (=> b!491619 m!472387))

(declare-fun m!472413 () Bool)

(assert (=> b!491619 m!472413))

(assert (=> b!491619 m!472403))

(assert (=> b!491619 m!472409))

(declare-fun m!472415 () Bool)

(assert (=> b!491615 m!472415))

(declare-fun m!472417 () Bool)

(assert (=> start!44802 m!472417))

(declare-fun m!472419 () Bool)

(assert (=> start!44802 m!472419))

(declare-fun m!472421 () Bool)

(assert (=> b!491621 m!472421))

(check-sat (not b!491620) (not b!491621) (not b!491614) (not b!491619) (not b!491615) (not b!491616) (not start!44802) (not b!491617) (not b!491613))
(check-sat)
