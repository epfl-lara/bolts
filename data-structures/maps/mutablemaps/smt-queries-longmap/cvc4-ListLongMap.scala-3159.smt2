; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44540 () Bool)

(assert start!44540)

(declare-fun b!488589 () Bool)

(declare-fun e!287413 () Bool)

(declare-fun e!287416 () Bool)

(assert (=> b!488589 (= e!287413 e!287416)))

(declare-fun res!291794 () Bool)

(assert (=> b!488589 (=> (not res!291794) (not e!287416))))

(declare-datatypes ((SeekEntryResult!3665 0))(
  ( (MissingZero!3665 (index!16839 (_ BitVec 32))) (Found!3665 (index!16840 (_ BitVec 32))) (Intermediate!3665 (undefined!4477 Bool) (index!16841 (_ BitVec 32)) (x!45979 (_ BitVec 32))) (Undefined!3665) (MissingVacant!3665 (index!16842 (_ BitVec 32))) )
))
(declare-fun lt!220492 () SeekEntryResult!3665)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488589 (= res!291794 (or (= lt!220492 (MissingZero!3665 i!1204)) (= lt!220492 (MissingVacant!3665 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31610 0))(
  ( (array!31611 (arr!15191 (Array (_ BitVec 32) (_ BitVec 64))) (size!15555 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31610)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31610 (_ BitVec 32)) SeekEntryResult!3665)

(assert (=> b!488589 (= lt!220492 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488590 () Bool)

(declare-fun res!291790 () Bool)

(assert (=> b!488590 (=> (not res!291790) (not e!287416))))

(declare-datatypes ((List!9402 0))(
  ( (Nil!9399) (Cons!9398 (h!10257 (_ BitVec 64)) (t!15638 List!9402)) )
))
(declare-fun arrayNoDuplicates!0 (array!31610 (_ BitVec 32) List!9402) Bool)

(assert (=> b!488590 (= res!291790 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9399))))

(declare-fun b!488591 () Bool)

(declare-fun res!291789 () Bool)

(assert (=> b!488591 (=> (not res!291789) (not e!287413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488591 (= res!291789 (validKeyInArray!0 k!2280))))

(declare-fun e!287415 () Bool)

(declare-fun b!488592 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488592 (= e!287415 (= (seekEntryOrOpen!0 (select (arr!15191 a!3235) j!176) a!3235 mask!3524) (Found!3665 j!176)))))

(declare-fun b!488593 () Bool)

(assert (=> b!488593 (= e!287416 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun lt!220491 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488593 (= lt!220491 (toIndex!0 (select (store (arr!15191 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!488593 e!287415))

(declare-fun res!291791 () Bool)

(assert (=> b!488593 (=> (not res!291791) (not e!287415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31610 (_ BitVec 32)) Bool)

(assert (=> b!488593 (= res!291791 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14268 0))(
  ( (Unit!14269) )
))
(declare-fun lt!220493 () Unit!14268)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14268)

(assert (=> b!488593 (= lt!220493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!291788 () Bool)

(assert (=> start!44540 (=> (not res!291788) (not e!287413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44540 (= res!291788 (validMask!0 mask!3524))))

(assert (=> start!44540 e!287413))

(assert (=> start!44540 true))

(declare-fun array_inv!10965 (array!31610) Bool)

(assert (=> start!44540 (array_inv!10965 a!3235)))

(declare-fun b!488594 () Bool)

(declare-fun res!291786 () Bool)

(assert (=> b!488594 (=> (not res!291786) (not e!287413))))

(declare-fun arrayContainsKey!0 (array!31610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488594 (= res!291786 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488595 () Bool)

(declare-fun res!291787 () Bool)

(assert (=> b!488595 (=> (not res!291787) (not e!287416))))

(assert (=> b!488595 (= res!291787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488596 () Bool)

(declare-fun res!291793 () Bool)

(assert (=> b!488596 (=> (not res!291793) (not e!287413))))

(assert (=> b!488596 (= res!291793 (and (= (size!15555 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15555 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15555 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488597 () Bool)

(declare-fun res!291792 () Bool)

(assert (=> b!488597 (=> (not res!291792) (not e!287413))))

(assert (=> b!488597 (= res!291792 (validKeyInArray!0 (select (arr!15191 a!3235) j!176)))))

(assert (= (and start!44540 res!291788) b!488596))

(assert (= (and b!488596 res!291793) b!488597))

(assert (= (and b!488597 res!291792) b!488591))

(assert (= (and b!488591 res!291789) b!488594))

(assert (= (and b!488594 res!291786) b!488589))

(assert (= (and b!488589 res!291794) b!488595))

(assert (= (and b!488595 res!291787) b!488590))

(assert (= (and b!488590 res!291790) b!488593))

(assert (= (and b!488593 res!291791) b!488592))

(declare-fun m!468349 () Bool)

(assert (=> b!488593 m!468349))

(declare-fun m!468351 () Bool)

(assert (=> b!488593 m!468351))

(declare-fun m!468353 () Bool)

(assert (=> b!488593 m!468353))

(declare-fun m!468355 () Bool)

(assert (=> b!488593 m!468355))

(assert (=> b!488593 m!468353))

(declare-fun m!468357 () Bool)

(assert (=> b!488593 m!468357))

(declare-fun m!468359 () Bool)

(assert (=> b!488592 m!468359))

(assert (=> b!488592 m!468359))

(declare-fun m!468361 () Bool)

(assert (=> b!488592 m!468361))

(declare-fun m!468363 () Bool)

(assert (=> b!488591 m!468363))

(declare-fun m!468365 () Bool)

(assert (=> start!44540 m!468365))

(declare-fun m!468367 () Bool)

(assert (=> start!44540 m!468367))

(declare-fun m!468369 () Bool)

(assert (=> b!488590 m!468369))

(declare-fun m!468371 () Bool)

(assert (=> b!488594 m!468371))

(declare-fun m!468373 () Bool)

(assert (=> b!488595 m!468373))

(assert (=> b!488597 m!468359))

(assert (=> b!488597 m!468359))

(declare-fun m!468375 () Bool)

(assert (=> b!488597 m!468375))

(declare-fun m!468377 () Bool)

(assert (=> b!488589 m!468377))

(push 1)

(assert (not b!488592))

(assert (not b!488595))

(assert (not start!44540))

(assert (not b!488593))

