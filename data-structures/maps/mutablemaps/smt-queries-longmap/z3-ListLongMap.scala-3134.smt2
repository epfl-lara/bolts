; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44112 () Bool)

(assert start!44112)

(declare-fun b!485782 () Bool)

(declare-fun res!289534 () Bool)

(declare-fun e!285963 () Bool)

(assert (=> b!485782 (=> (not res!289534) (not e!285963))))

(declare-datatypes ((array!31440 0))(
  ( (array!31441 (arr!15115 (Array (_ BitVec 32) (_ BitVec 64))) (size!15479 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31440)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485782 (= res!289534 (validKeyInArray!0 (select (arr!15115 a!3235) j!176)))))

(declare-fun b!485783 () Bool)

(declare-fun res!289538 () Bool)

(assert (=> b!485783 (=> (not res!289538) (not e!285963))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485783 (= res!289538 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485784 () Bool)

(declare-fun res!289536 () Bool)

(assert (=> b!485784 (=> (not res!289536) (not e!285963))))

(assert (=> b!485784 (= res!289536 (validKeyInArray!0 k0!2280))))

(declare-fun res!289537 () Bool)

(assert (=> start!44112 (=> (not res!289537) (not e!285963))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44112 (= res!289537 (validMask!0 mask!3524))))

(assert (=> start!44112 e!285963))

(assert (=> start!44112 true))

(declare-fun array_inv!10889 (array!31440) Bool)

(assert (=> start!44112 (array_inv!10889 a!3235)))

(declare-fun b!485785 () Bool)

(declare-fun res!289535 () Bool)

(assert (=> b!485785 (=> (not res!289535) (not e!285963))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485785 (= res!289535 (and (= (size!15479 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15479 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15479 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485786 () Bool)

(declare-datatypes ((SeekEntryResult!3589 0))(
  ( (MissingZero!3589 (index!16535 (_ BitVec 32))) (Found!3589 (index!16536 (_ BitVec 32))) (Intermediate!3589 (undefined!4401 Bool) (index!16537 (_ BitVec 32)) (x!45700 (_ BitVec 32))) (Undefined!3589) (MissingVacant!3589 (index!16538 (_ BitVec 32))) )
))
(declare-fun lt!219569 () SeekEntryResult!3589)

(assert (=> b!485786 (= e!285963 (and (or (= lt!219569 (MissingZero!3589 i!1204)) (= lt!219569 (MissingVacant!3589 i!1204))) (bvsgt #b00000000000000000000000000000000 (size!15479 a!3235))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31440 (_ BitVec 32)) SeekEntryResult!3589)

(assert (=> b!485786 (= lt!219569 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!44112 res!289537) b!485785))

(assert (= (and b!485785 res!289535) b!485782))

(assert (= (and b!485782 res!289534) b!485784))

(assert (= (and b!485784 res!289536) b!485783))

(assert (= (and b!485783 res!289538) b!485786))

(declare-fun m!465879 () Bool)

(assert (=> b!485782 m!465879))

(assert (=> b!485782 m!465879))

(declare-fun m!465881 () Bool)

(assert (=> b!485782 m!465881))

(declare-fun m!465883 () Bool)

(assert (=> b!485783 m!465883))

(declare-fun m!465885 () Bool)

(assert (=> b!485784 m!465885))

(declare-fun m!465887 () Bool)

(assert (=> b!485786 m!465887))

(declare-fun m!465889 () Bool)

(assert (=> start!44112 m!465889))

(declare-fun m!465891 () Bool)

(assert (=> start!44112 m!465891))

(check-sat (not b!485783) (not b!485782) (not b!485784) (not b!485786) (not start!44112))
(check-sat)
