; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44298 () Bool)

(assert start!44298)

(declare-fun b!486829 () Bool)

(declare-fun res!290372 () Bool)

(declare-fun e!286515 () Bool)

(assert (=> b!486829 (=> (not res!290372) (not e!286515))))

(declare-datatypes ((array!31509 0))(
  ( (array!31510 (arr!15145 (Array (_ BitVec 32) (_ BitVec 64))) (size!15509 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31509)

(declare-datatypes ((List!9356 0))(
  ( (Nil!9353) (Cons!9352 (h!10208 (_ BitVec 64)) (t!15592 List!9356)) )
))
(declare-fun arrayNoDuplicates!0 (array!31509 (_ BitVec 32) List!9356) Bool)

(assert (=> b!486829 (= res!290372 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9353))))

(declare-fun b!486830 () Bool)

(declare-fun res!290368 () Bool)

(declare-fun e!286516 () Bool)

(assert (=> b!486830 (=> (not res!290368) (not e!286516))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486830 (= res!290368 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486832 () Bool)

(assert (=> b!486832 (= e!286516 e!286515)))

(declare-fun res!290371 () Bool)

(assert (=> b!486832 (=> (not res!290371) (not e!286515))))

(declare-datatypes ((SeekEntryResult!3619 0))(
  ( (MissingZero!3619 (index!16655 (_ BitVec 32))) (Found!3619 (index!16656 (_ BitVec 32))) (Intermediate!3619 (undefined!4431 Bool) (index!16657 (_ BitVec 32)) (x!45810 (_ BitVec 32))) (Undefined!3619) (MissingVacant!3619 (index!16658 (_ BitVec 32))) )
))
(declare-fun lt!219883 () SeekEntryResult!3619)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486832 (= res!290371 (or (= lt!219883 (MissingZero!3619 i!1204)) (= lt!219883 (MissingVacant!3619 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31509 (_ BitVec 32)) SeekEntryResult!3619)

(assert (=> b!486832 (= lt!219883 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486833 () Bool)

(declare-fun res!290369 () Bool)

(assert (=> b!486833 (=> (not res!290369) (not e!286516))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486833 (= res!290369 (and (= (size!15509 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15509 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15509 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486834 () Bool)

(assert (=> b!486834 (= e!286515 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31509 (_ BitVec 32)) Bool)

(assert (=> b!486834 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14176 0))(
  ( (Unit!14177) )
))
(declare-fun lt!219884 () Unit!14176)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31509 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14176)

(assert (=> b!486834 (= lt!219884 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!290366 () Bool)

(assert (=> start!44298 (=> (not res!290366) (not e!286516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44298 (= res!290366 (validMask!0 mask!3524))))

(assert (=> start!44298 e!286516))

(assert (=> start!44298 true))

(declare-fun array_inv!10919 (array!31509) Bool)

(assert (=> start!44298 (array_inv!10919 a!3235)))

(declare-fun b!486831 () Bool)

(declare-fun res!290367 () Bool)

(assert (=> b!486831 (=> (not res!290367) (not e!286515))))

(assert (=> b!486831 (= res!290367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486835 () Bool)

(declare-fun res!290370 () Bool)

(assert (=> b!486835 (=> (not res!290370) (not e!286516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486835 (= res!290370 (validKeyInArray!0 k0!2280))))

(declare-fun b!486836 () Bool)

(declare-fun res!290365 () Bool)

(assert (=> b!486836 (=> (not res!290365) (not e!286516))))

(assert (=> b!486836 (= res!290365 (validKeyInArray!0 (select (arr!15145 a!3235) j!176)))))

(assert (= (and start!44298 res!290366) b!486833))

(assert (= (and b!486833 res!290369) b!486836))

(assert (= (and b!486836 res!290365) b!486835))

(assert (= (and b!486835 res!290370) b!486830))

(assert (= (and b!486830 res!290368) b!486832))

(assert (= (and b!486832 res!290371) b!486831))

(assert (= (and b!486831 res!290367) b!486829))

(assert (= (and b!486829 res!290372) b!486834))

(declare-fun m!466721 () Bool)

(assert (=> start!44298 m!466721))

(declare-fun m!466723 () Bool)

(assert (=> start!44298 m!466723))

(declare-fun m!466725 () Bool)

(assert (=> b!486835 m!466725))

(declare-fun m!466727 () Bool)

(assert (=> b!486834 m!466727))

(declare-fun m!466729 () Bool)

(assert (=> b!486834 m!466729))

(declare-fun m!466731 () Bool)

(assert (=> b!486836 m!466731))

(assert (=> b!486836 m!466731))

(declare-fun m!466733 () Bool)

(assert (=> b!486836 m!466733))

(declare-fun m!466735 () Bool)

(assert (=> b!486832 m!466735))

(declare-fun m!466737 () Bool)

(assert (=> b!486831 m!466737))

(declare-fun m!466739 () Bool)

(assert (=> b!486829 m!466739))

(declare-fun m!466741 () Bool)

(assert (=> b!486830 m!466741))

(check-sat (not b!486831) (not b!486829) (not b!486836) (not b!486830) (not start!44298) (not b!486832) (not b!486834) (not b!486835))
(check-sat)
