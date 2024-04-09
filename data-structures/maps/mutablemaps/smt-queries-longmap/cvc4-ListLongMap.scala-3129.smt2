; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44084 () Bool)

(assert start!44084)

(declare-fun b!485572 () Bool)

(declare-fun e!285879 () Bool)

(assert (=> b!485572 (= e!285879 false)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31412 0))(
  ( (array!31413 (arr!15101 (Array (_ BitVec 32) (_ BitVec 64))) (size!15465 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31412)

(declare-datatypes ((SeekEntryResult!3575 0))(
  ( (MissingZero!3575 (index!16479 (_ BitVec 32))) (Found!3575 (index!16480 (_ BitVec 32))) (Intermediate!3575 (undefined!4387 Bool) (index!16481 (_ BitVec 32)) (x!45646 (_ BitVec 32))) (Undefined!3575) (MissingVacant!3575 (index!16482 (_ BitVec 32))) )
))
(declare-fun lt!219527 () SeekEntryResult!3575)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31412 (_ BitVec 32)) SeekEntryResult!3575)

(assert (=> b!485572 (= lt!219527 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485573 () Bool)

(declare-fun res!289326 () Bool)

(assert (=> b!485573 (=> (not res!289326) (not e!285879))))

(declare-fun arrayContainsKey!0 (array!31412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485573 (= res!289326 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485574 () Bool)

(declare-fun res!289325 () Bool)

(assert (=> b!485574 (=> (not res!289325) (not e!285879))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485574 (= res!289325 (and (= (size!15465 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15465 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15465 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485575 () Bool)

(declare-fun res!289324 () Bool)

(assert (=> b!485575 (=> (not res!289324) (not e!285879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485575 (= res!289324 (validKeyInArray!0 (select (arr!15101 a!3235) j!176)))))

(declare-fun b!485576 () Bool)

(declare-fun res!289327 () Bool)

(assert (=> b!485576 (=> (not res!289327) (not e!285879))))

(assert (=> b!485576 (= res!289327 (validKeyInArray!0 k!2280))))

(declare-fun res!289328 () Bool)

(assert (=> start!44084 (=> (not res!289328) (not e!285879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44084 (= res!289328 (validMask!0 mask!3524))))

(assert (=> start!44084 e!285879))

(assert (=> start!44084 true))

(declare-fun array_inv!10875 (array!31412) Bool)

(assert (=> start!44084 (array_inv!10875 a!3235)))

(assert (= (and start!44084 res!289328) b!485574))

(assert (= (and b!485574 res!289325) b!485575))

(assert (= (and b!485575 res!289324) b!485576))

(assert (= (and b!485576 res!289327) b!485573))

(assert (= (and b!485573 res!289326) b!485572))

(declare-fun m!465683 () Bool)

(assert (=> b!485573 m!465683))

(declare-fun m!465685 () Bool)

(assert (=> start!44084 m!465685))

(declare-fun m!465687 () Bool)

(assert (=> start!44084 m!465687))

(declare-fun m!465689 () Bool)

(assert (=> b!485576 m!465689))

(declare-fun m!465691 () Bool)

(assert (=> b!485572 m!465691))

(declare-fun m!465693 () Bool)

(assert (=> b!485575 m!465693))

(assert (=> b!485575 m!465693))

(declare-fun m!465695 () Bool)

(assert (=> b!485575 m!465695))

(push 1)

(assert (not b!485575))

(assert (not start!44084))

(assert (not b!485576))

(assert (not b!485572))

(assert (not b!485573))

(check-sat)

