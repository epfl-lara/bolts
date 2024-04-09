; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44544 () Bool)

(assert start!44544)

(declare-fun res!291844 () Bool)

(declare-fun e!287439 () Bool)

(assert (=> start!44544 (=> (not res!291844) (not e!287439))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44544 (= res!291844 (validMask!0 mask!3524))))

(assert (=> start!44544 e!287439))

(assert (=> start!44544 true))

(declare-datatypes ((array!31614 0))(
  ( (array!31615 (arr!15193 (Array (_ BitVec 32) (_ BitVec 64))) (size!15557 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31614)

(declare-fun array_inv!10967 (array!31614) Bool)

(assert (=> start!44544 (array_inv!10967 a!3235)))

(declare-fun b!488643 () Bool)

(declare-fun res!291848 () Bool)

(assert (=> b!488643 (=> (not res!291848) (not e!287439))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488643 (= res!291848 (validKeyInArray!0 (select (arr!15193 a!3235) j!176)))))

(declare-fun b!488644 () Bool)

(declare-fun res!291840 () Bool)

(declare-fun e!287437 () Bool)

(assert (=> b!488644 (=> (not res!291840) (not e!287437))))

(declare-datatypes ((List!9404 0))(
  ( (Nil!9401) (Cons!9400 (h!10259 (_ BitVec 64)) (t!15640 List!9404)) )
))
(declare-fun arrayNoDuplicates!0 (array!31614 (_ BitVec 32) List!9404) Bool)

(assert (=> b!488644 (= res!291840 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9401))))

(declare-fun b!488645 () Bool)

(declare-fun res!291843 () Bool)

(assert (=> b!488645 (=> (not res!291843) (not e!287439))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488645 (= res!291843 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488646 () Bool)

(declare-fun res!291846 () Bool)

(assert (=> b!488646 (=> (not res!291846) (not e!287437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31614 (_ BitVec 32)) Bool)

(assert (=> b!488646 (= res!291846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488647 () Bool)

(declare-fun res!291841 () Bool)

(assert (=> b!488647 (=> (not res!291841) (not e!287439))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488647 (= res!291841 (and (= (size!15557 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15557 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15557 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488648 () Bool)

(assert (=> b!488648 (= e!287437 (not true))))

(declare-fun lt!220510 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488648 (= lt!220510 (toIndex!0 (select (store (arr!15193 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(declare-fun e!287440 () Bool)

(assert (=> b!488648 e!287440))

(declare-fun res!291847 () Bool)

(assert (=> b!488648 (=> (not res!291847) (not e!287440))))

(assert (=> b!488648 (= res!291847 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14272 0))(
  ( (Unit!14273) )
))
(declare-fun lt!220509 () Unit!14272)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14272)

(assert (=> b!488648 (= lt!220509 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488649 () Bool)

(assert (=> b!488649 (= e!287439 e!287437)))

(declare-fun res!291845 () Bool)

(assert (=> b!488649 (=> (not res!291845) (not e!287437))))

(declare-datatypes ((SeekEntryResult!3667 0))(
  ( (MissingZero!3667 (index!16847 (_ BitVec 32))) (Found!3667 (index!16848 (_ BitVec 32))) (Intermediate!3667 (undefined!4479 Bool) (index!16849 (_ BitVec 32)) (x!45989 (_ BitVec 32))) (Undefined!3667) (MissingVacant!3667 (index!16850 (_ BitVec 32))) )
))
(declare-fun lt!220511 () SeekEntryResult!3667)

(assert (=> b!488649 (= res!291845 (or (= lt!220511 (MissingZero!3667 i!1204)) (= lt!220511 (MissingVacant!3667 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31614 (_ BitVec 32)) SeekEntryResult!3667)

(assert (=> b!488649 (= lt!220511 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488650 () Bool)

(declare-fun res!291842 () Bool)

(assert (=> b!488650 (=> (not res!291842) (not e!287439))))

(assert (=> b!488650 (= res!291842 (validKeyInArray!0 k0!2280))))

(declare-fun b!488651 () Bool)

(assert (=> b!488651 (= e!287440 (= (seekEntryOrOpen!0 (select (arr!15193 a!3235) j!176) a!3235 mask!3524) (Found!3667 j!176)))))

(assert (= (and start!44544 res!291844) b!488647))

(assert (= (and b!488647 res!291841) b!488643))

(assert (= (and b!488643 res!291848) b!488650))

(assert (= (and b!488650 res!291842) b!488645))

(assert (= (and b!488645 res!291843) b!488649))

(assert (= (and b!488649 res!291845) b!488646))

(assert (= (and b!488646 res!291846) b!488644))

(assert (= (and b!488644 res!291840) b!488648))

(assert (= (and b!488648 res!291847) b!488651))

(declare-fun m!468409 () Bool)

(assert (=> b!488648 m!468409))

(declare-fun m!468411 () Bool)

(assert (=> b!488648 m!468411))

(declare-fun m!468413 () Bool)

(assert (=> b!488648 m!468413))

(declare-fun m!468415 () Bool)

(assert (=> b!488648 m!468415))

(assert (=> b!488648 m!468413))

(declare-fun m!468417 () Bool)

(assert (=> b!488648 m!468417))

(declare-fun m!468419 () Bool)

(assert (=> b!488651 m!468419))

(assert (=> b!488651 m!468419))

(declare-fun m!468421 () Bool)

(assert (=> b!488651 m!468421))

(declare-fun m!468423 () Bool)

(assert (=> b!488644 m!468423))

(assert (=> b!488643 m!468419))

(assert (=> b!488643 m!468419))

(declare-fun m!468425 () Bool)

(assert (=> b!488643 m!468425))

(declare-fun m!468427 () Bool)

(assert (=> start!44544 m!468427))

(declare-fun m!468429 () Bool)

(assert (=> start!44544 m!468429))

(declare-fun m!468431 () Bool)

(assert (=> b!488650 m!468431))

(declare-fun m!468433 () Bool)

(assert (=> b!488645 m!468433))

(declare-fun m!468435 () Bool)

(assert (=> b!488646 m!468435))

(declare-fun m!468437 () Bool)

(assert (=> b!488649 m!468437))

(check-sat (not b!488649) (not b!488650) (not b!488648) (not b!488651) (not b!488645) (not b!488643) (not b!488644) (not b!488646) (not start!44544))
(check-sat)
