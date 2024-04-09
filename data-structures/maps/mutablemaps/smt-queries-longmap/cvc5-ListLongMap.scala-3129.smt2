; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44080 () Bool)

(assert start!44080)

(declare-fun res!289295 () Bool)

(declare-fun e!285868 () Bool)

(assert (=> start!44080 (=> (not res!289295) (not e!285868))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44080 (= res!289295 (validMask!0 mask!3524))))

(assert (=> start!44080 e!285868))

(assert (=> start!44080 true))

(declare-datatypes ((array!31408 0))(
  ( (array!31409 (arr!15099 (Array (_ BitVec 32) (_ BitVec 64))) (size!15463 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31408)

(declare-fun array_inv!10873 (array!31408) Bool)

(assert (=> start!44080 (array_inv!10873 a!3235)))

(declare-fun b!485542 () Bool)

(declare-fun res!289298 () Bool)

(assert (=> b!485542 (=> (not res!289298) (not e!285868))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485542 (= res!289298 (validKeyInArray!0 (select (arr!15099 a!3235) j!176)))))

(declare-fun b!485543 () Bool)

(declare-fun res!289294 () Bool)

(assert (=> b!485543 (=> (not res!289294) (not e!285868))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485543 (= res!289294 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485544 () Bool)

(assert (=> b!485544 (= e!285868 false)))

(declare-datatypes ((SeekEntryResult!3573 0))(
  ( (MissingZero!3573 (index!16471 (_ BitVec 32))) (Found!3573 (index!16472 (_ BitVec 32))) (Intermediate!3573 (undefined!4385 Bool) (index!16473 (_ BitVec 32)) (x!45644 (_ BitVec 32))) (Undefined!3573) (MissingVacant!3573 (index!16474 (_ BitVec 32))) )
))
(declare-fun lt!219521 () SeekEntryResult!3573)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31408 (_ BitVec 32)) SeekEntryResult!3573)

(assert (=> b!485544 (= lt!219521 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485545 () Bool)

(declare-fun res!289296 () Bool)

(assert (=> b!485545 (=> (not res!289296) (not e!285868))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485545 (= res!289296 (and (= (size!15463 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15463 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15463 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485546 () Bool)

(declare-fun res!289297 () Bool)

(assert (=> b!485546 (=> (not res!289297) (not e!285868))))

(assert (=> b!485546 (= res!289297 (validKeyInArray!0 k!2280))))

(assert (= (and start!44080 res!289295) b!485545))

(assert (= (and b!485545 res!289296) b!485542))

(assert (= (and b!485542 res!289298) b!485546))

(assert (= (and b!485546 res!289297) b!485543))

(assert (= (and b!485543 res!289294) b!485544))

(declare-fun m!465655 () Bool)

(assert (=> b!485542 m!465655))

(assert (=> b!485542 m!465655))

(declare-fun m!465657 () Bool)

(assert (=> b!485542 m!465657))

(declare-fun m!465659 () Bool)

(assert (=> b!485546 m!465659))

(declare-fun m!465661 () Bool)

(assert (=> b!485543 m!465661))

(declare-fun m!465663 () Bool)

(assert (=> b!485544 m!465663))

(declare-fun m!465665 () Bool)

(assert (=> start!44080 m!465665))

(declare-fun m!465667 () Bool)

(assert (=> start!44080 m!465667))

(push 1)

(assert (not b!485546))

(assert (not b!485542))

(assert (not b!485543))

(assert (not b!485544))

(assert (not start!44080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

