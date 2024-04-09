; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44076 () Bool)

(assert start!44076)

(declare-fun res!289263 () Bool)

(declare-fun e!285855 () Bool)

(assert (=> start!44076 (=> (not res!289263) (not e!285855))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44076 (= res!289263 (validMask!0 mask!3524))))

(assert (=> start!44076 e!285855))

(assert (=> start!44076 true))

(declare-datatypes ((array!31404 0))(
  ( (array!31405 (arr!15097 (Array (_ BitVec 32) (_ BitVec 64))) (size!15461 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31404)

(declare-fun array_inv!10871 (array!31404) Bool)

(assert (=> start!44076 (array_inv!10871 a!3235)))

(declare-fun b!485508 () Bool)

(declare-fun res!289265 () Bool)

(assert (=> b!485508 (=> (not res!289265) (not e!285855))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485508 (= res!289265 (validKeyInArray!0 k0!2280))))

(declare-fun b!485509 () Bool)

(declare-fun res!289264 () Bool)

(assert (=> b!485509 (=> (not res!289264) (not e!285855))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485509 (= res!289264 (and (= (size!15461 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15461 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15461 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485510 () Bool)

(declare-fun res!289262 () Bool)

(assert (=> b!485510 (=> (not res!289262) (not e!285855))))

(assert (=> b!485510 (= res!289262 (validKeyInArray!0 (select (arr!15097 a!3235) j!176)))))

(declare-fun b!485511 () Bool)

(declare-fun res!289260 () Bool)

(assert (=> b!485511 (=> (not res!289260) (not e!285855))))

(declare-fun arrayContainsKey!0 (array!31404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485511 (= res!289260 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485512 () Bool)

(assert (=> b!485512 (= e!285855 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!485513 () Bool)

(declare-fun res!289261 () Bool)

(assert (=> b!485513 (=> (not res!289261) (not e!285855))))

(declare-datatypes ((SeekEntryResult!3571 0))(
  ( (MissingZero!3571 (index!16463 (_ BitVec 32))) (Found!3571 (index!16464 (_ BitVec 32))) (Intermediate!3571 (undefined!4383 Bool) (index!16465 (_ BitVec 32)) (x!45634 (_ BitVec 32))) (Undefined!3571) (MissingVacant!3571 (index!16466 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31404 (_ BitVec 32)) SeekEntryResult!3571)

(assert (=> b!485513 (= res!289261 (not (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) (MissingZero!3571 i!1204))))))

(assert (= (and start!44076 res!289263) b!485509))

(assert (= (and b!485509 res!289264) b!485510))

(assert (= (and b!485510 res!289262) b!485508))

(assert (= (and b!485508 res!289265) b!485511))

(assert (= (and b!485511 res!289260) b!485513))

(assert (= (and b!485513 res!289261) b!485512))

(declare-fun m!465627 () Bool)

(assert (=> b!485511 m!465627))

(declare-fun m!465629 () Bool)

(assert (=> b!485513 m!465629))

(declare-fun m!465631 () Bool)

(assert (=> start!44076 m!465631))

(declare-fun m!465633 () Bool)

(assert (=> start!44076 m!465633))

(declare-fun m!465635 () Bool)

(assert (=> b!485510 m!465635))

(assert (=> b!485510 m!465635))

(declare-fun m!465637 () Bool)

(assert (=> b!485510 m!465637))

(declare-fun m!465639 () Bool)

(assert (=> b!485508 m!465639))

(check-sat (not b!485513) (not b!485510) (not start!44076) (not b!485508) (not b!485511))
(check-sat)
