; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44956 () Bool)

(assert start!44956)

(declare-fun b!492684 () Bool)

(declare-fun res!295411 () Bool)

(declare-fun e!289429 () Bool)

(assert (=> b!492684 (=> (not res!295411) (not e!289429))))

(declare-datatypes ((array!31861 0))(
  ( (array!31862 (arr!15312 (Array (_ BitVec 32) (_ BitVec 64))) (size!15676 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31861)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31861 (_ BitVec 32)) Bool)

(assert (=> b!492684 (= res!295411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492685 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!289427 () Bool)

(declare-datatypes ((SeekEntryResult!3786 0))(
  ( (MissingZero!3786 (index!17323 (_ BitVec 32))) (Found!3786 (index!17324 (_ BitVec 32))) (Intermediate!3786 (undefined!4598 Bool) (index!17325 (_ BitVec 32)) (x!46443 (_ BitVec 32))) (Undefined!3786) (MissingVacant!3786 (index!17326 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31861 (_ BitVec 32)) SeekEntryResult!3786)

(assert (=> b!492685 (= e!289427 (= (seekEntryOrOpen!0 (select (arr!15312 a!3235) j!176) a!3235 mask!3524) (Found!3786 j!176)))))

(declare-fun res!295406 () Bool)

(declare-fun e!289428 () Bool)

(assert (=> start!44956 (=> (not res!295406) (not e!289428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44956 (= res!295406 (validMask!0 mask!3524))))

(assert (=> start!44956 e!289428))

(assert (=> start!44956 true))

(declare-fun array_inv!11086 (array!31861) Bool)

(assert (=> start!44956 (array_inv!11086 a!3235)))

(declare-fun b!492686 () Bool)

(declare-fun res!295410 () Bool)

(assert (=> b!492686 (=> (not res!295410) (not e!289428))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492686 (= res!295410 (and (= (size!15676 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15676 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15676 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492687 () Bool)

(assert (=> b!492687 (= e!289429 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!222782 () SeekEntryResult!3786)

(declare-fun lt!222783 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31861 (_ BitVec 32)) SeekEntryResult!3786)

(assert (=> b!492687 (= lt!222782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222783 (select (store (arr!15312 a!3235) i!1204 k!2280) j!176) (array!31862 (store (arr!15312 a!3235) i!1204 k!2280) (size!15676 a!3235)) mask!3524))))

(declare-fun lt!222781 () (_ BitVec 32))

(declare-fun lt!222785 () SeekEntryResult!3786)

(assert (=> b!492687 (= lt!222785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222781 (select (arr!15312 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492687 (= lt!222783 (toIndex!0 (select (store (arr!15312 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492687 (= lt!222781 (toIndex!0 (select (arr!15312 a!3235) j!176) mask!3524))))

(assert (=> b!492687 e!289427))

(declare-fun res!295408 () Bool)

(assert (=> b!492687 (=> (not res!295408) (not e!289427))))

(assert (=> b!492687 (= res!295408 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14510 0))(
  ( (Unit!14511) )
))
(declare-fun lt!222780 () Unit!14510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14510)

(assert (=> b!492687 (= lt!222780 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492688 () Bool)

(declare-fun res!295405 () Bool)

(assert (=> b!492688 (=> (not res!295405) (not e!289428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492688 (= res!295405 (validKeyInArray!0 (select (arr!15312 a!3235) j!176)))))

(declare-fun b!492689 () Bool)

(declare-fun res!295409 () Bool)

(assert (=> b!492689 (=> (not res!295409) (not e!289428))))

(declare-fun arrayContainsKey!0 (array!31861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492689 (= res!295409 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492690 () Bool)

(declare-fun res!295404 () Bool)

(assert (=> b!492690 (=> (not res!295404) (not e!289428))))

(assert (=> b!492690 (= res!295404 (validKeyInArray!0 k!2280))))

(declare-fun b!492691 () Bool)

(assert (=> b!492691 (= e!289428 e!289429)))

(declare-fun res!295412 () Bool)

(assert (=> b!492691 (=> (not res!295412) (not e!289429))))

(declare-fun lt!222784 () SeekEntryResult!3786)

(assert (=> b!492691 (= res!295412 (or (= lt!222784 (MissingZero!3786 i!1204)) (= lt!222784 (MissingVacant!3786 i!1204))))))

(assert (=> b!492691 (= lt!222784 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492692 () Bool)

(declare-fun res!295407 () Bool)

(assert (=> b!492692 (=> (not res!295407) (not e!289429))))

(declare-datatypes ((List!9523 0))(
  ( (Nil!9520) (Cons!9519 (h!10387 (_ BitVec 64)) (t!15759 List!9523)) )
))
(declare-fun arrayNoDuplicates!0 (array!31861 (_ BitVec 32) List!9523) Bool)

(assert (=> b!492692 (= res!295407 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9520))))

(assert (= (and start!44956 res!295406) b!492686))

(assert (= (and b!492686 res!295410) b!492688))

(assert (= (and b!492688 res!295405) b!492690))

(assert (= (and b!492690 res!295404) b!492689))

(assert (= (and b!492689 res!295409) b!492691))

(assert (= (and b!492691 res!295412) b!492684))

(assert (= (and b!492684 res!295411) b!492692))

(assert (= (and b!492692 res!295407) b!492687))

(assert (= (and b!492687 res!295408) b!492685))

(declare-fun m!473401 () Bool)

(assert (=> b!492690 m!473401))

(declare-fun m!473403 () Bool)

(assert (=> b!492684 m!473403))

(declare-fun m!473405 () Bool)

(assert (=> b!492688 m!473405))

(assert (=> b!492688 m!473405))

(declare-fun m!473407 () Bool)

(assert (=> b!492688 m!473407))

(declare-fun m!473409 () Bool)

(assert (=> b!492687 m!473409))

(declare-fun m!473411 () Bool)

(assert (=> b!492687 m!473411))

(declare-fun m!473413 () Bool)

(assert (=> b!492687 m!473413))

(assert (=> b!492687 m!473405))

(declare-fun m!473415 () Bool)

(assert (=> b!492687 m!473415))

(assert (=> b!492687 m!473405))

(declare-fun m!473417 () Bool)

(assert (=> b!492687 m!473417))

(assert (=> b!492687 m!473413))

(declare-fun m!473419 () Bool)

(assert (=> b!492687 m!473419))

(assert (=> b!492687 m!473413))

(declare-fun m!473421 () Bool)

(assert (=> b!492687 m!473421))

(assert (=> b!492687 m!473405))

(declare-fun m!473423 () Bool)

(assert (=> b!492687 m!473423))

(declare-fun m!473425 () Bool)

(assert (=> b!492691 m!473425))

(declare-fun m!473427 () Bool)

(assert (=> start!44956 m!473427))

(declare-fun m!473429 () Bool)

(assert (=> start!44956 m!473429))

(declare-fun m!473431 () Bool)

(assert (=> b!492692 m!473431))

(assert (=> b!492685 m!473405))

(assert (=> b!492685 m!473405))

(declare-fun m!473433 () Bool)

(assert (=> b!492685 m!473433))

(declare-fun m!473435 () Bool)

(assert (=> b!492689 m!473435))

(push 1)

