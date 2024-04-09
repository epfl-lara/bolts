; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44098 () Bool)

(assert start!44098)

(declare-fun b!485677 () Bool)

(declare-fun res!289432 () Bool)

(declare-fun e!285921 () Bool)

(assert (=> b!485677 (=> (not res!289432) (not e!285921))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485677 (= res!289432 (validKeyInArray!0 k!2280))))

(declare-fun b!485678 () Bool)

(declare-fun res!289431 () Bool)

(assert (=> b!485678 (=> (not res!289431) (not e!285921))))

(declare-datatypes ((array!31426 0))(
  ( (array!31427 (arr!15108 (Array (_ BitVec 32) (_ BitVec 64))) (size!15472 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31426)

(declare-fun arrayContainsKey!0 (array!31426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485678 (= res!289431 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485679 () Bool)

(assert (=> b!485679 (= e!285921 false)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3582 0))(
  ( (MissingZero!3582 (index!16507 (_ BitVec 32))) (Found!3582 (index!16508 (_ BitVec 32))) (Intermediate!3582 (undefined!4394 Bool) (index!16509 (_ BitVec 32)) (x!45677 (_ BitVec 32))) (Undefined!3582) (MissingVacant!3582 (index!16510 (_ BitVec 32))) )
))
(declare-fun lt!219548 () SeekEntryResult!3582)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31426 (_ BitVec 32)) SeekEntryResult!3582)

(assert (=> b!485679 (= lt!219548 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!289429 () Bool)

(assert (=> start!44098 (=> (not res!289429) (not e!285921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44098 (= res!289429 (validMask!0 mask!3524))))

(assert (=> start!44098 e!285921))

(assert (=> start!44098 true))

(declare-fun array_inv!10882 (array!31426) Bool)

(assert (=> start!44098 (array_inv!10882 a!3235)))

(declare-fun b!485680 () Bool)

(declare-fun res!289430 () Bool)

(assert (=> b!485680 (=> (not res!289430) (not e!285921))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485680 (= res!289430 (validKeyInArray!0 (select (arr!15108 a!3235) j!176)))))

(declare-fun b!485681 () Bool)

(declare-fun res!289433 () Bool)

(assert (=> b!485681 (=> (not res!289433) (not e!285921))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485681 (= res!289433 (and (= (size!15472 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15472 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15472 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44098 res!289429) b!485681))

(assert (= (and b!485681 res!289433) b!485680))

(assert (= (and b!485680 res!289430) b!485677))

(assert (= (and b!485677 res!289432) b!485678))

(assert (= (and b!485678 res!289431) b!485679))

(declare-fun m!465781 () Bool)

(assert (=> b!485678 m!465781))

(declare-fun m!465783 () Bool)

(assert (=> b!485679 m!465783))

(declare-fun m!465785 () Bool)

(assert (=> start!44098 m!465785))

(declare-fun m!465787 () Bool)

(assert (=> start!44098 m!465787))

(declare-fun m!465789 () Bool)

(assert (=> b!485680 m!465789))

(assert (=> b!485680 m!465789))

(declare-fun m!465791 () Bool)

(assert (=> b!485680 m!465791))

(declare-fun m!465793 () Bool)

(assert (=> b!485677 m!465793))

(push 1)

(assert (not b!485677))

(assert (not b!485680))

(assert (not start!44098))

(assert (not b!485679))

(assert (not b!485678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

