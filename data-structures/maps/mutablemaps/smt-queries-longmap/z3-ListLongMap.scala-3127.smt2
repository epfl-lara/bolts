; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44070 () Bool)

(assert start!44070)

(declare-fun res!289214 () Bool)

(declare-fun e!285837 () Bool)

(assert (=> start!44070 (=> (not res!289214) (not e!285837))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44070 (= res!289214 (validMask!0 mask!3524))))

(assert (=> start!44070 e!285837))

(assert (=> start!44070 true))

(declare-datatypes ((array!31398 0))(
  ( (array!31399 (arr!15094 (Array (_ BitVec 32) (_ BitVec 64))) (size!15458 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31398)

(declare-fun array_inv!10868 (array!31398) Bool)

(assert (=> start!44070 (array_inv!10868 a!3235)))

(declare-fun b!485458 () Bool)

(declare-fun res!289210 () Bool)

(assert (=> b!485458 (=> (not res!289210) (not e!285837))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485458 (= res!289210 (validKeyInArray!0 (select (arr!15094 a!3235) j!176)))))

(declare-fun b!485459 () Bool)

(declare-fun res!289213 () Bool)

(assert (=> b!485459 (=> (not res!289213) (not e!285837))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!485459 (= res!289213 (validKeyInArray!0 k0!2280))))

(declare-fun b!485460 () Bool)

(declare-fun res!289211 () Bool)

(assert (=> b!485460 (=> (not res!289211) (not e!285837))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485460 (= res!289211 (and (= (size!15458 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15458 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15458 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485461 () Bool)

(assert (=> b!485461 (= e!285837 false)))

(declare-datatypes ((SeekEntryResult!3568 0))(
  ( (MissingZero!3568 (index!16451 (_ BitVec 32))) (Found!3568 (index!16452 (_ BitVec 32))) (Intermediate!3568 (undefined!4380 Bool) (index!16453 (_ BitVec 32)) (x!45623 (_ BitVec 32))) (Undefined!3568) (MissingVacant!3568 (index!16454 (_ BitVec 32))) )
))
(declare-fun lt!219515 () SeekEntryResult!3568)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31398 (_ BitVec 32)) SeekEntryResult!3568)

(assert (=> b!485461 (= lt!219515 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485462 () Bool)

(declare-fun res!289212 () Bool)

(assert (=> b!485462 (=> (not res!289212) (not e!285837))))

(declare-fun arrayContainsKey!0 (array!31398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485462 (= res!289212 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44070 res!289214) b!485460))

(assert (= (and b!485460 res!289211) b!485458))

(assert (= (and b!485458 res!289210) b!485459))

(assert (= (and b!485459 res!289213) b!485462))

(assert (= (and b!485462 res!289212) b!485461))

(declare-fun m!465585 () Bool)

(assert (=> b!485461 m!465585))

(declare-fun m!465587 () Bool)

(assert (=> b!485459 m!465587))

(declare-fun m!465589 () Bool)

(assert (=> b!485462 m!465589))

(declare-fun m!465591 () Bool)

(assert (=> start!44070 m!465591))

(declare-fun m!465593 () Bool)

(assert (=> start!44070 m!465593))

(declare-fun m!465595 () Bool)

(assert (=> b!485458 m!465595))

(assert (=> b!485458 m!465595))

(declare-fun m!465597 () Bool)

(assert (=> b!485458 m!465597))

(check-sat (not start!44070) (not b!485461) (not b!485459) (not b!485462) (not b!485458))
