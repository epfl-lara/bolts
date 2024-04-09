; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44110 () Bool)

(assert start!44110)

(declare-fun b!485767 () Bool)

(declare-fun res!289520 () Bool)

(declare-fun e!285957 () Bool)

(assert (=> b!485767 (=> (not res!289520) (not e!285957))))

(declare-datatypes ((array!31438 0))(
  ( (array!31439 (arr!15114 (Array (_ BitVec 32) (_ BitVec 64))) (size!15478 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31438)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485767 (= res!289520 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485768 () Bool)

(declare-fun res!289523 () Bool)

(assert (=> b!485768 (=> (not res!289523) (not e!285957))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485768 (= res!289523 (validKeyInArray!0 (select (arr!15114 a!3235) j!176)))))

(declare-fun b!485770 () Bool)

(declare-fun res!289521 () Bool)

(assert (=> b!485770 (=> (not res!289521) (not e!285957))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485770 (= res!289521 (and (= (size!15478 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15478 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15478 a!3235)) (not (= i!1204 j!176))))))

(declare-datatypes ((SeekEntryResult!3588 0))(
  ( (MissingZero!3588 (index!16531 (_ BitVec 32))) (Found!3588 (index!16532 (_ BitVec 32))) (Intermediate!3588 (undefined!4400 Bool) (index!16533 (_ BitVec 32)) (x!45699 (_ BitVec 32))) (Undefined!3588) (MissingVacant!3588 (index!16534 (_ BitVec 32))) )
))
(declare-fun lt!219566 () SeekEntryResult!3588)

(declare-fun b!485771 () Bool)

(assert (=> b!485771 (= e!285957 (and (or (= lt!219566 (MissingZero!3588 i!1204)) (= lt!219566 (MissingVacant!3588 i!1204))) (bvsgt #b00000000000000000000000000000000 (size!15478 a!3235))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31438 (_ BitVec 32)) SeekEntryResult!3588)

(assert (=> b!485771 (= lt!219566 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485769 () Bool)

(declare-fun res!289519 () Bool)

(assert (=> b!485769 (=> (not res!289519) (not e!285957))))

(assert (=> b!485769 (= res!289519 (validKeyInArray!0 k!2280))))

(declare-fun res!289522 () Bool)

(assert (=> start!44110 (=> (not res!289522) (not e!285957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44110 (= res!289522 (validMask!0 mask!3524))))

(assert (=> start!44110 e!285957))

(assert (=> start!44110 true))

(declare-fun array_inv!10888 (array!31438) Bool)

(assert (=> start!44110 (array_inv!10888 a!3235)))

(assert (= (and start!44110 res!289522) b!485770))

(assert (= (and b!485770 res!289521) b!485768))

(assert (= (and b!485768 res!289523) b!485769))

(assert (= (and b!485769 res!289519) b!485767))

(assert (= (and b!485767 res!289520) b!485771))

(declare-fun m!465865 () Bool)

(assert (=> b!485769 m!465865))

(declare-fun m!465867 () Bool)

(assert (=> b!485767 m!465867))

(declare-fun m!465869 () Bool)

(assert (=> b!485771 m!465869))

(declare-fun m!465871 () Bool)

(assert (=> b!485768 m!465871))

(assert (=> b!485768 m!465871))

(declare-fun m!465873 () Bool)

(assert (=> b!485768 m!465873))

(declare-fun m!465875 () Bool)

(assert (=> start!44110 m!465875))

(declare-fun m!465877 () Bool)

(assert (=> start!44110 m!465877))

(push 1)

(assert (not b!485768))

(assert (not b!485769))

(assert (not b!485767))

