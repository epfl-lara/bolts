; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44120 () Bool)

(assert start!44120)

(declare-fun b!485858 () Bool)

(declare-fun res!289615 () Bool)

(declare-fun e!285996 () Bool)

(assert (=> b!485858 (=> (not res!289615) (not e!285996))))

(declare-datatypes ((array!31448 0))(
  ( (array!31449 (arr!15119 (Array (_ BitVec 32) (_ BitVec 64))) (size!15483 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31448)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485858 (= res!289615 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485859 () Bool)

(declare-fun res!289613 () Bool)

(assert (=> b!485859 (=> (not res!289613) (not e!285996))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485859 (= res!289613 (validKeyInArray!0 (select (arr!15119 a!3235) j!176)))))

(declare-fun b!485860 () Bool)

(declare-fun e!285995 () Bool)

(assert (=> b!485860 (= e!285995 (bvsgt #b00000000000000000000000000000000 (size!15483 a!3235)))))

(declare-fun b!485861 () Bool)

(declare-fun res!289611 () Bool)

(assert (=> b!485861 (=> (not res!289611) (not e!285995))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31448 (_ BitVec 32)) Bool)

(assert (=> b!485861 (= res!289611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!485862 () Bool)

(declare-fun res!289616 () Bool)

(assert (=> b!485862 (=> (not res!289616) (not e!285996))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485862 (= res!289616 (and (= (size!15483 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15483 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15483 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485863 () Bool)

(declare-fun res!289614 () Bool)

(assert (=> b!485863 (=> (not res!289614) (not e!285996))))

(assert (=> b!485863 (= res!289614 (validKeyInArray!0 k!2280))))

(declare-fun res!289612 () Bool)

(assert (=> start!44120 (=> (not res!289612) (not e!285996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44120 (= res!289612 (validMask!0 mask!3524))))

(assert (=> start!44120 e!285996))

(assert (=> start!44120 true))

(declare-fun array_inv!10893 (array!31448) Bool)

(assert (=> start!44120 (array_inv!10893 a!3235)))

(declare-fun b!485864 () Bool)

(assert (=> b!485864 (= e!285996 e!285995)))

(declare-fun res!289610 () Bool)

(assert (=> b!485864 (=> (not res!289610) (not e!285995))))

(declare-datatypes ((SeekEntryResult!3593 0))(
  ( (MissingZero!3593 (index!16551 (_ BitVec 32))) (Found!3593 (index!16552 (_ BitVec 32))) (Intermediate!3593 (undefined!4405 Bool) (index!16553 (_ BitVec 32)) (x!45712 (_ BitVec 32))) (Undefined!3593) (MissingVacant!3593 (index!16554 (_ BitVec 32))) )
))
(declare-fun lt!219581 () SeekEntryResult!3593)

(assert (=> b!485864 (= res!289610 (or (= lt!219581 (MissingZero!3593 i!1204)) (= lt!219581 (MissingVacant!3593 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31448 (_ BitVec 32)) SeekEntryResult!3593)

(assert (=> b!485864 (= lt!219581 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44120 res!289612) b!485862))

(assert (= (and b!485862 res!289616) b!485859))

(assert (= (and b!485859 res!289613) b!485863))

(assert (= (and b!485863 res!289614) b!485858))

(assert (= (and b!485858 res!289615) b!485864))

(assert (= (and b!485864 res!289610) b!485861))

(assert (= (and b!485861 res!289611) b!485860))

(declare-fun m!465939 () Bool)

(assert (=> b!485858 m!465939))

(declare-fun m!465941 () Bool)

(assert (=> b!485861 m!465941))

(declare-fun m!465943 () Bool)

(assert (=> start!44120 m!465943))

(declare-fun m!465945 () Bool)

(assert (=> start!44120 m!465945))

(declare-fun m!465947 () Bool)

(assert (=> b!485863 m!465947))

(declare-fun m!465949 () Bool)

(assert (=> b!485859 m!465949))

(assert (=> b!485859 m!465949))

(declare-fun m!465951 () Bool)

(assert (=> b!485859 m!465951))

(declare-fun m!465953 () Bool)

(assert (=> b!485864 m!465953))

(push 1)

