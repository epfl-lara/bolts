; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44108 () Bool)

(assert start!44108)

(declare-fun b!485752 () Bool)

(declare-fun res!289506 () Bool)

(declare-fun e!285951 () Bool)

(assert (=> b!485752 (=> (not res!289506) (not e!285951))))

(declare-datatypes ((array!31436 0))(
  ( (array!31437 (arr!15113 (Array (_ BitVec 32) (_ BitVec 64))) (size!15477 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31436)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485752 (= res!289506 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485753 () Bool)

(declare-fun res!289507 () Bool)

(assert (=> b!485753 (=> (not res!289507) (not e!285951))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485753 (= res!289507 (and (= (size!15477 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15477 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15477 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485754 () Bool)

(declare-fun res!289505 () Bool)

(assert (=> b!485754 (=> (not res!289505) (not e!285951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485754 (= res!289505 (validKeyInArray!0 k!2280))))

(declare-fun b!485755 () Bool)

(assert (=> b!485755 (= e!285951 false)))

(declare-datatypes ((SeekEntryResult!3587 0))(
  ( (MissingZero!3587 (index!16527 (_ BitVec 32))) (Found!3587 (index!16528 (_ BitVec 32))) (Intermediate!3587 (undefined!4399 Bool) (index!16529 (_ BitVec 32)) (x!45690 (_ BitVec 32))) (Undefined!3587) (MissingVacant!3587 (index!16530 (_ BitVec 32))) )
))
(declare-fun lt!219563 () SeekEntryResult!3587)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31436 (_ BitVec 32)) SeekEntryResult!3587)

(assert (=> b!485755 (= lt!219563 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485756 () Bool)

(declare-fun res!289508 () Bool)

(assert (=> b!485756 (=> (not res!289508) (not e!285951))))

(assert (=> b!485756 (= res!289508 (validKeyInArray!0 (select (arr!15113 a!3235) j!176)))))

(declare-fun res!289504 () Bool)

(assert (=> start!44108 (=> (not res!289504) (not e!285951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44108 (= res!289504 (validMask!0 mask!3524))))

(assert (=> start!44108 e!285951))

(assert (=> start!44108 true))

(declare-fun array_inv!10887 (array!31436) Bool)

(assert (=> start!44108 (array_inv!10887 a!3235)))

(assert (= (and start!44108 res!289504) b!485753))

(assert (= (and b!485753 res!289507) b!485756))

(assert (= (and b!485756 res!289508) b!485754))

(assert (= (and b!485754 res!289505) b!485752))

(assert (= (and b!485752 res!289506) b!485755))

(declare-fun m!465851 () Bool)

(assert (=> b!485752 m!465851))

(declare-fun m!465853 () Bool)

(assert (=> b!485754 m!465853))

(declare-fun m!465855 () Bool)

(assert (=> b!485756 m!465855))

(assert (=> b!485756 m!465855))

(declare-fun m!465857 () Bool)

(assert (=> b!485756 m!465857))

(declare-fun m!465859 () Bool)

(assert (=> start!44108 m!465859))

(declare-fun m!465861 () Bool)

(assert (=> start!44108 m!465861))

(declare-fun m!465863 () Bool)

(assert (=> b!485755 m!465863))

(push 1)

(assert (not b!485756))

(assert (not b!485754))

(assert (not b!485755))

(assert (not start!44108))

(assert (not b!485752))

(check-sat)

