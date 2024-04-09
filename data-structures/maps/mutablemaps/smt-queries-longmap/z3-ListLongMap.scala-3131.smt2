; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44094 () Bool)

(assert start!44094)

(declare-fun b!485647 () Bool)

(declare-fun res!289399 () Bool)

(declare-fun e!285909 () Bool)

(assert (=> b!485647 (=> (not res!289399) (not e!285909))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485647 (= res!289399 (validKeyInArray!0 k0!2280))))

(declare-fun b!485648 () Bool)

(declare-fun res!289401 () Bool)

(assert (=> b!485648 (=> (not res!289401) (not e!285909))))

(declare-datatypes ((array!31422 0))(
  ( (array!31423 (arr!15106 (Array (_ BitVec 32) (_ BitVec 64))) (size!15470 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31422)

(declare-fun arrayContainsKey!0 (array!31422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485648 (= res!289401 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485649 () Bool)

(declare-fun res!289400 () Bool)

(assert (=> b!485649 (=> (not res!289400) (not e!285909))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485649 (= res!289400 (and (= (size!15470 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15470 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15470 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485650 () Bool)

(assert (=> b!485650 (= e!285909 false)))

(declare-datatypes ((SeekEntryResult!3580 0))(
  ( (MissingZero!3580 (index!16499 (_ BitVec 32))) (Found!3580 (index!16500 (_ BitVec 32))) (Intermediate!3580 (undefined!4392 Bool) (index!16501 (_ BitVec 32)) (x!45667 (_ BitVec 32))) (Undefined!3580) (MissingVacant!3580 (index!16502 (_ BitVec 32))) )
))
(declare-fun lt!219542 () SeekEntryResult!3580)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31422 (_ BitVec 32)) SeekEntryResult!3580)

(assert (=> b!485650 (= lt!219542 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!289402 () Bool)

(assert (=> start!44094 (=> (not res!289402) (not e!285909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44094 (= res!289402 (validMask!0 mask!3524))))

(assert (=> start!44094 e!285909))

(assert (=> start!44094 true))

(declare-fun array_inv!10880 (array!31422) Bool)

(assert (=> start!44094 (array_inv!10880 a!3235)))

(declare-fun b!485651 () Bool)

(declare-fun res!289403 () Bool)

(assert (=> b!485651 (=> (not res!289403) (not e!285909))))

(assert (=> b!485651 (= res!289403 (validKeyInArray!0 (select (arr!15106 a!3235) j!176)))))

(assert (= (and start!44094 res!289402) b!485649))

(assert (= (and b!485649 res!289400) b!485651))

(assert (= (and b!485651 res!289403) b!485647))

(assert (= (and b!485647 res!289399) b!485648))

(assert (= (and b!485648 res!289401) b!485650))

(declare-fun m!465753 () Bool)

(assert (=> start!44094 m!465753))

(declare-fun m!465755 () Bool)

(assert (=> start!44094 m!465755))

(declare-fun m!465757 () Bool)

(assert (=> b!485647 m!465757))

(declare-fun m!465759 () Bool)

(assert (=> b!485648 m!465759))

(declare-fun m!465761 () Bool)

(assert (=> b!485650 m!465761))

(declare-fun m!465763 () Bool)

(assert (=> b!485651 m!465763))

(assert (=> b!485651 m!465763))

(declare-fun m!465765 () Bool)

(assert (=> b!485651 m!465765))

(check-sat (not start!44094) (not b!485650) (not b!485651) (not b!485647) (not b!485648))
